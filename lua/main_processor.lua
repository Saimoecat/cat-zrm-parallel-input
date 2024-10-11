--数据状态保留
local snapshot={
	input="",
	caret_pos=0,
	segs={},
}
local function comp_iter(comp)
	return function()
		if comp:empty()==false then
			local seg=comp:back()
			comp:pop_back()
			return seg
		end
	end
end
--保存
function snapshot:save(env)
	local ctx=env.engine.context
	snapshot.input=ctx.input
	snapshot.caret_pos=ctx.caret_pos
	snapshot.segs={}
	local comp=ctx.composition
	if comp:empty()==false then
		for seg in comp_iter(comp) do
			table.insert(snapshot.segs,seg)
		end
		ctx:set_property("snapshot","true")
	end
end
--恢复
function snapshot:restore(env)
	if (snapshot.input ~= "") then
		
		local ctx=env.engine.context
		ctx.input=snapshot.input
		ctx.caret_pos=snapshot.caret_pos
		local comp=ctx.composition
		for _,seg in ipairs(snapshot.segs) do
			comp:push_back(seg)
		end
		ctx:refresh_non_confirmed_composition ()
		--重置
		snapshot.input = ""
		return true
	end
	return false
end
--截取中文字符
local function utf8_sub(s, i, j)
   i = i or 1
   j = j or -1

   if i < 1 or j < 1 then
      local n = utf8.len(s)
      if not n then return nil end
      if i < 0 then i = n + 1 + i end
      if j < 0 then j = n + 1 + j end
      if i < 0 then i = 1 elseif i > n then i = n end
      if j < 0 then j = 1 elseif j > n then j = n end
   end

   if j < i then return "" end

   i = utf8.offset(s, i)
   j = utf8.offset(s, j + 1)

   if i and j then
      return s:sub(i, j - 1)
   elseif i then
      return s:sub(i)
   else
      return ""
   end
end
--获取单个字符长度
local function getCharSize(char)
    if not char then
        return 0
    elseif char > 239 then
        return 4
    elseif char > 225 then
        return 3
    elseif char > 192 then
        return 2
    else
        return 1
    end
end
--获取中文字符长度
local function getUtf8Len(str)
    local len = 0
    local currentIndex = 1
    while currentIndex <= #str do
        local char = string.byte(str, currentIndex)
        currentIndex = currentIndex + getCharSize(char)
        len = len + 1
    end
    return len
end

--截取中文字符串
local function strUtf8Sub(str, startChar, numChars)
    local startIndex = 1
    while startChar > 1 do
        local char = string.byte(str, startIndex)
        startIndex = startIndex + getCharSize(char)
        startChar = startChar - 1
    end

    local currentIndex = startIndex

    while numChars > 0 and currentIndex <= #str do
        local char = string.byte(str, currentIndex)
        currentIndex = currentIndex + getCharSize(char)
        numChars = numChars - 1
    end

    return string.sub(str, startIndex, currentIndex - 1)
end


--遍历字符串
local function strUtf8Ipairs(str)
    local startIndex = 1;
    local key = 0
    local _str = str;

    return function()
        if str == nil or #str == 0 then
            return nil
        end
        local char = string.byte(str, startIndex)
        local len = getCharSize(char)
        if len == 0 then
            return nil
        end
        local currentIndex = startIndex + len;
        local value = _str:sub(startIndex, currentIndex - 1)
        startIndex = startIndex + len
        key = key + 1;
        return key, value
    end
end

--查询编码
local function query(look,str)
    local code = look:lookup(str)
    return code:sub(3, #code)
end

--词编码
local function word(preedit, text)

    local pinArray = {}
    for each in string.gmatch(preedit, "%S+") do
		if (#each == 1) then
			break
        elseif (string.find(each, "»")) then
            local index = string.find(each, "«")
            table.insert(pinArray, each:sub(0, index - 1))
        else
            table.insert(pinArray, each)
        end
    end

    local textArray = {}
    for index, value in strUtf8Ipairs(text) do
        table.insert(textArray, value)
    end

    if (#pinArray ~= #textArray) then
        return ""
    end
	
	local look = ReverseLookup("zrm_xing")

    local codeArray = {}
    for i = 1, #textArray do
        local code = query(look,textArray[i])
        table.insert(codeArray, pinArray[i] .. code)
    end

    local result = ""
    for i = 1, #textArray do
        result = result .. textArray[i]
    end
    result = result .. "\t"
    for i = 1, #codeArray do
        result = result .. codeArray[i]
        if (i ~= #codeArray) then
            result = result .. " "
        end
    end
    return result .. "\t0"
end


--详细编码
local function desc(text)
    local textArray = {}
    for index, value in strUtf8Ipairs(text) do
        table.insert(textArray, value)
    end

	local look = ReverseLookup("zrm_desc")
	
	local code = look:lookup(textArray[#textArray])

    return textArray[#textArray] .. "\t" .. code
end

---
--- 判断触发条件
---@param last string 末尾编码
---@param input string 上屏字符
---@param engine table engine对象
---@param context table context对象
---
local function check(last)
	-- 判断编码
	if (#last == 3) then
		-- 判断是否为3位，即空格组合
		if (string.find(last, "\"") ~= nil) then
			return false
		end
	elseif (#last == 2) then
		-- 判断是否为2位，即正常组合
		return false
	elseif (#last % 2 == 0) then
		-- 判断是否为偶数位，即正常组合
		return false
	end
	-- 触发
	return true
end

---
---选择
---@param index string 下标
---
local function getCand(index,context,segment,flag)
	-- 删除一位编码
	if (flag) then
		context:pop_input(1)
	end
	-- 选择候选
	segment.selected_index = index
	segment.status = 3
	-- 返回
	local cand = segment:get_candidate_at(index)
	if (cand) then
		return cand.text
	end
	return ""
end

---
---上屏文本
---@param last string 末尾编码
---@param input string 上屏字符
---@param engine table engine对象
---@param context table context对象
---
local function commitText(last,text,engine,context,env)
	if (check(last)) then
		-- 上屏字符
		engine:commit_text(text)
		--保存编码
		snapshot:save(env)
		context:clear_previous_segment()
		context:clear()
		return 1
	end
	return 2
end

---
---上屏
---@param last string 末尾编码
---@param input string 上屏字符
---@param engine table engine对象
---@param context table context对象
---
local function commit(last,index,engine,context,segment,env)
	if (check(last)) then
		-- 上屏字符
		local text = getCand(index,context,segment,true)
		engine:commit_text(text)
		--保存编码
		snapshot:save(env)
		context:clear_previous_segment()
		context:clear()
		return 1
	end
	return 2
end

---
---选择
---@param last string 末尾编码
---@param index string 下标
---@param context table context对象
---
local function select(last, index, context,env)
	if (check(last)) then
		-- 选择
		context:pop_input(1)
		context:select(index)
		return 1
	end
	return 2
end

---
--- 移动光标
--- @param context table context对象
---
local function move(groups, index, context)
	if (check(groups[#groups])) then
		context:pop_input(1)
		local num = 0
		for i = 1, #groups do
			local text = groups[i]
			text = string.gsub(text, "«", "")
			text = string.gsub(text, "»", "")
			num = num + #text
			if (i >= index) then
				break
			end
		end
		context.caret_pos = num
		return 1
	end
	return 2
end

---
---顶字
---@param last string 末尾编码
---@param index string 下标
---@param context table context对象
---
local function ding(length,endstr,keycode)
	if (length % 2 == 1) then
		local flag = false
		local letter = ""
		--字母集合
		local letterArray = {
			"a", "b", "c", "d", "e", "f", "g",
			"h", "i", "j", "k", "l", "m", "n",
			"o", "p", "q", "r", "s", "t",
			"u", "v", "w", "x", "y", "z"
		}
		for i = 1, #letterArray do
			if (endstr == letterArray[i]) then
				flag = true
				break
			end
		end
		
		--键值集合
		local numberArray = {
			97, 98, 99, 100, 101, 102, 103,
			104, 105, 106, 107, 108, 109, 110,
			111, 112, 113, 114, 115, 116,
			117, 118, 119, 120, 121, 122
		}
		for i = 1, #numberArray do
			if (keycode == numberArray[i]) then
				flag = true
				letter = letterArray[i]
				break
			end
		end
		
		if (flag) then
			if (letter == "") then
				local letterArray2 = {
					"A", "B", "C", "D", "E", "F", "G",
					"H", "I", "J", "K", "L", "M", "N",
					"O", "P", "Q", "R", "S", "T",
					"U", "V", "W", "X", "Y", "Z"
				}
				local numberArray2 = {
					65, 66, 67, 68, 69, 70, 71,
					72, 73, 74, 75, 76, 77, 78,
					79, 80, 81, 82, 83, 84,
					85, 86, 87, 88, 89, 90
				}
				for i = 1, #numberArray2 do
					if (keycode == numberArray2[i]) then
						flag = true
						letter = letterArray2[i]
						break
					end
				end
			end
			return endstr .. letter
		end
	end
	return ""
end

---
---初始化
---@param env object 上下文对象
---
local function init(env)
	local engine = env.engine
	local context = engine.context
	-- 初始化开关值
	context:set_property("baidu","false")
	context:set_property("snapshot","false")
	context:set_property("c2e","")
	context:set_property("extend","")
end

---
---初始化
---@param key_event table 按键对象
---@param env table 上下文对象
---
local function processor(key_event, env)
	local engine = env.engine
	local context = engine.context
	local input = context.input
	local text = context:get_script_text()
	local composition = context.composition
	local segment = nil
	if(not composition:empty()) then
		segment = composition:back()
	end
	
	-- 还原preedit
	local preeditArray = {"¹","²","³","⁴","⁵","⁶","⁷","⁸","⁹","⁰"}
    for i, v in ipairs(preeditArray) do
	    text = string.gsub(text, v, "")
    end
	
	-- 拆分编码集合
	local groups = {}
	for each in string.gmatch(text, "%S+") do
		table.insert(groups, each)
	end

	-- 判断是否上屏为上屏编码
	if (#input > 2 and context.caret_pos == #input) then
		-- 特殊处理
		if (input:sub(1,2) == "aq") then
			-- 忽略英语模式
		else
			--候选
			if (input:sub(#input,#input) == "e") then
				-- 再次判断上屏编码
				if (key_event.keycode == 103) then
					-- 上屏首选
					local val = commit(groups[#groups],0,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
						context:refresh_non_confirmed_composition ()
					end
					return val
				elseif (key_event.keycode == 102) then
					-- 上屏2选
					local val = commit(groups[#groups],1,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 100) then
					-- 上屏3选
					local val = commit(groups[#groups],2,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 115) then
					-- 上屏4选
					local val = commit(groups[#groups],3,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 97) then
					-- 上屏5选
					local val = commit(groups[#groups],4,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 98) then
					-- 上屏6选
					local val = commit(groups[#groups],5,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 118) then
					-- 上屏7选
					local val = commit(groups[#groups],6,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 99) then
					-- 上屏8选
					local val = commit(groups[#groups],7,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 120) then
					-- 上屏9选
					local val = commit(groups[#groups],8,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 122) then
					-- 上屏10选
					local val = commit(groups[#groups],9,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 71) then
					-- 上屏11选
					local val =  commit(groups[#groups],10,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 70) then
					-- 上屏12选
					local val =  commit(groups[#groups],11,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 68) then
					-- 上屏13选
					local val =  commit(groups[#groups],12,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 83) then
					-- 上屏14选
					local val =  commit(groups[#groups],13,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 65) then
					-- 上屏15选
					local val =  commit(groups[#groups],14,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 66) then
					-- 上屏16选
					local val =  commit(groups[#groups],15,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 86) then
					-- 上屏17选
					local val =  commit(groups[#groups],16,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 67) then
					-- 上屏18选
					local val =  commit(groups[#groups],17,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 88) then
					-- 上屏19选
					local val =  commit(groups[#groups],18,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 90) then
					-- 上屏20选
					local val =  commit(groups[#groups],19,engine,context,segment,env)
					if (val == 1) then
						context:push_input("ac")
					end
					return val
				elseif (key_event.keycode == 116) then
					-- et
					if (check(groups[#groups])) then
						return commitText(groups[#groups],"（"..getCand(0,context,segment,true).."）",engine,context,env)
					end
				elseif (key_event.keycode == 114) then
					-- er
					if (check(groups[#groups])) then
						return commitText(groups[#groups],"《"..getCand(0,context,segment,true).."》",engine,context,env)
					end
				elseif (key_event.keycode == 119) then
					-- eo
					if (check(groups[#groups])) then
						return commitText(groups[#groups],"“"..getCand(0,context,segment,true).."”",engine,context,env)
					end
				elseif (key_event.keycode == 113) then
					-- eq
					if (check(groups[#groups])) then
						return commitText(groups[#groups],"‘"..getCand(0,context,segment,true).."’",engine,context,env)
					end
				end
			elseif (input:sub(#input,#input) == "o") then
				-- 再次判断上屏编码
				if (key_event.keycode == 103) then
					-- 上屏首选
					return select(groups[#groups], 0, context,env)
				elseif (key_event.keycode == 102) then
					-- 上屏2选
					return select(groups[#groups], 1, context,env)
				elseif (key_event.keycode == 100) then
					-- 上屏3选
					return select(groups[#groups], 2, context,env)
				elseif (key_event.keycode == 115) then
					-- 上屏4选
					return select(groups[#groups], 3, context,env)
				elseif (key_event.keycode == 97) then
					-- 上屏5选
					return select(groups[#groups], 4, context,env)
				elseif (key_event.keycode == 98) then
					-- 上屏6选
					return select(groups[#groups], 5, context,env)
				elseif (key_event.keycode == 118) then
					-- 上屏7选
					return select(groups[#groups], 6, context,env)
				elseif (key_event.keycode == 99) then
					-- 上屏8选
					return select(groups[#groups], 7, context,env)
				elseif (key_event.keycode == 120) then
					-- 上屏9选
					return select(groups[#groups], 8, context,env)
				elseif (key_event.keycode == 122) then
					-- 上屏10选
					return select(groups[#groups], 9, context,env)
				elseif (key_event.keycode == 71) then
					-- 上屏11选
					return select(groups[#groups], 10, context,env)
				elseif (key_event.keycode == 70) then
					-- 上屏12选
					return select(groups[#groups], 11, context,env)
				elseif (key_event.keycode == 68) then
					-- 上屏13选
					return select(groups[#groups], 12, context,env)
				elseif (key_event.keycode == 83) then
					-- 上屏14选
					return select(groups[#groups], 13, context,env)
				elseif (key_event.keycode == 65) then
					-- 上屏15选
					return select(groups[#groups], 14, context,env)
				elseif (key_event.keycode == 66) then
					-- 上屏16选
					return select(groups[#groups], 15, context,env)
				elseif (key_event.keycode == 86) then
					-- 上屏17选
					return select(groups[#groups], 16, context,env)
				elseif (key_event.keycode == 67) then
					-- 上屏18选
					return select(groups[#groups], 17, context,env)
				elseif (key_event.keycode == 88) then
					-- 上屏19选
					return select(groups[#groups], 18, context,env)
				elseif (key_event.keycode == 90) then
					-- 上屏20选
					return select(groups[#groups], 19, context,env)
				elseif (key_event.keycode == 114) then
					--以词定字左
					if (check(groups[#groups])) then
						engine:commit_text(utf8_sub(getCand(0,context,segment,true),1,1))
						--保存编码
						snapshot:save(env)
						context:clear_previous_segment()
						context:clear()
						return 1
					end
				elseif (key_event.keycode == 101) then
					--以词定字右
					if (check(groups[#groups])) then
						engine:commit_text(utf8_sub(getCand(0,context,segment,true),-1,-1))
						--保存编码
						snapshot:save(env)
						context:clear_previous_segment()
						context:clear()
						return 1
					end
				elseif (key_event.keycode == 119) then
					-- 输出编码
					if (check(groups[#groups])) then
						local preedit = context:get_selected_candidate().preedit
						-- 修正编码
						for i, v in ipairs(preeditArray) do
							preedit = string.gsub(preedit, v, "")
						end
						local result = word(preedit, getCand(0,context,segment,true))
						return commitText(groups[#groups],result,engine,context,env)
					end			
				elseif (key_event.keycode == 113) then
					-- 输出明细
					if (check(groups[#groups])) then
						local result = desc(getCand(0,context,segment,true))
						return commitText(groups[#groups],result,engine,context,env)
					end
				end
			elseif (input:sub(#input,#input) == "a") then
				-- 再次判断上屏编码
				if (key_event.keycode == 122) then
					if (check(groups[#groups])) then
						commit(groups[#groups],0,engine,context,segment,env)
						context:push_input("az")
						return 1
					end
				elseif (key_event.keycode == 121) then
					if (check(groups[#groups])) then
						commit(groups[#groups],0,engine,context,segment,env)
						context:push_input("ay")
						return 1
					end
				elseif (key_event.keycode == 120) then
					if (check(groups[#groups])) then
						commit(groups[#groups],0,engine,context,segment,env)
						context:push_input("ax")
						return 1
					end
				elseif (key_event.keycode == 119) then
					if (check(groups[#groups])) then
						commit(groups[#groups],0,engine,context,segment,env)
						context:push_input("aw")
						return 1
					end
				elseif (key_event.keycode == 118) then
					--av
					if (check(groups[#groups])) then
						--[[
						local str = groups[#groups - 1]
						context:pop_input(1)
						if (str == nil) then
							context:pop_input(2)
						elseif (string.match(str, "«") == nil) then 
							context:pop_input(#str)
						else
							context:pop_input(#str - 4)
						end
						]]
						context:pop_input(3)
						return 1
					end
				elseif (key_event.keycode == 117) then
					--au
					if (check(groups[#groups])) then
						commit(groups[#groups],0,engine,context,segment,env)
						context:push_input("au")
						return 1
					end				
				elseif (key_event.keycode == 116) then
					if (check(groups[#groups])) then
						commit(groups[#groups],0,engine,context,segment,env)
						context:push_input("at")
						return 1
					end
				elseif (key_event.keycode == 115) then
					if (check(groups[#groups])) then
						commit(groups[#groups],0,engine,context,segment,env)
						context:push_input("as")
						return 1
					end
				elseif (key_event.keycode == 114) then
					if (check(groups[#groups])) then
						--保存编码
						snapshot:save(env)
						context:clear_previous_segment()
						context:clear()
						--context:push_input("ar")
						return 1
					end
				elseif (key_event.keycode == 113) then
					if (check(groups[#groups])) then
						commit(groups[#groups],0,engine,context,segment,env)
						context:push_input("aq")
						return 1
					end
				elseif (key_event.keycode == 112) then
					-- ap
					if (check(groups[#groups])) then
						--保存编码
						snapshot:save(env)
						context:clear_previous_segment()
						context:clear()
						return 1
					end
				elseif (key_event.keycode == 98) then
					-- ab
					if (check(groups[#groups])) then
						context:pop_input(1)
						context:set_property("baidu","true")
						context:refresh_non_confirmed_composition ()
						return 1
					end
				elseif (key_event.keycode == 99) then
					-- ac
					if (check(groups[#groups])) then
						context:pop_input(1)
						return 1
					end
				elseif (key_event.keycode == 100) then
					-- ad
					if (check(groups[#groups])) then
						context:pop_input(1)
						context:set_property("extend",context:get_commit_text())
						context:refresh_non_confirmed_composition ()
						return 1
					end
				elseif (key_event.keycode == 101) then
					-- ae
					if (check(groups[#groups])) then
						context:pop_input(1)
						context:set_property("c2e",context:get_commit_text())
						context:refresh_non_confirmed_composition ()
						return 1
					end
				end
			elseif (input:sub(#input,#input) == "r") then
				-- 移动光标到指定位置(移动到第一个字用右Shift)
				if (key_event.keycode == 102) then
					-- 移动光标到第2个字编码后
					return move(groups, 2, context)
				elseif (key_event.keycode == 100) then
					-- 移动光标到第3个字编码后
					return move(groups, 3, context)
				elseif (key_event.keycode == 115) then
					-- 移动光标到第4个字编码后
					return move(groups, 4, context)
				elseif (key_event.keycode == 97) then
					-- 移动光标到第5个字编码后
					return move(groups, 5, context)
				elseif (key_event.keycode == 98) then
					-- 移动光标到第6个字编码后
					return move(groups, 6, context)
				elseif (key_event.keycode == 118) then
					-- 移动光标到第7个字编码后
					return move(groups, 7, context)
				elseif (key_event.keycode == 99) then
					-- 移动光标到第8个字编码后
					return move(groups, 8, context)
				elseif (key_event.keycode == 120) then
					-- 移动光标到第9个字编码后
					return move(groups, 9, context)
				elseif (key_event.keycode == 122) then
					-- 移动光标到第10个字编码后
					return move(groups, 10, context)
				end
			end
			
			
			--顶字
			if (input:sub(1,2) == "az") then
				local dingCode = ding(#input,input:sub(#input,#input),key_event.keycode)
				if (dingCode ~= "") then
					commit(groups[#groups],0,engine,context,segment,env)
					context:push_input(dingCode)
					return 1
				end
			elseif (input:sub(1,2) == "aw") then
				local dingCode = ding(#input,input:sub(#input,#input),key_event.keycode)
				if (dingCode ~= "") then
					commit(groups[#groups],0,engine,context,segment,env)
					context:push_input(dingCode)
					return 1
				end
			elseif (input:sub(1,2) == "ar") then
				local dingCode = ding(#input,input:sub(#input,#input),key_event.keycode)
				if (dingCode ~= "") then
					context:clear_previous_segment()
					context:clear()
					context:push_input(dingCode)
					return 1
				end
			elseif (input:sub(1,2) == "ac") then
				local dingCode = ding(#input,input:sub(#input,#input),key_event.keycode)
				if (dingCode ~= "") then
					context:clear_previous_segment()
					context:clear()
					context:push_input(dingCode)
					return 1
				end
			end
		end
	end
	
	-- 删除
	if (key_event.keycode == 65288) then
		if (#groups > 0) then
			
			local str = groups[#groups]

			if (#str < 2) then
				context:pop_input(#str)
			else
				-- 鼠须管下需要删除2次
				if (rime_api:get_distribution_code_name() == "Squirrel") then
					context:pop_input(2)
				else
					context:pop_input(1)
				end				
			end
			return 1
		end
	end

	-- Tab
	if (key_event.keycode == 65289) then
		-- 获取预测文本
		local prompt = ""
		local composition = context.composition
		if(not composition:empty()) then
			local segment = composition:back()
			prompt = segment.prompt
		end
		-- 首选候选
		local candidate = getCand(0,context,segment,false)
		-- 检查预测文本
		if (#prompt > 0) then
			local index = string.find(prompt, "​")
			local txt = prompt:sub(0, index - 1)
			local length = getUtf8Len(txt)
			local candidateLength = getUtf8Len(candidate)
			--检查最大长度
			if (length < candidateLength) then
				candidate = strUtf8Sub(candidate, 0, candidateLength - length)
			else
				candidate = ""
			end
			prompt = string.gsub(prompt, "​", "")
		end
		
		-- 上屏字符
		engine:commit_text(candidate..prompt)
		--保存编码
		snapshot:save(env)
		context:clear_previous_segment()
		context:clear()
		return 1
	end
	
	-- Esc 重置光标到最后
	if (key_event.keycode == 65307) then
		if (context.caret_pos ~= #input) then
			context.caret_pos = #input
			return 1
		end
	end

	-- Enter
	--[[
	if (key_event.keycode == 65293) then

	end
	--]]
	
	--Esc 恢复保留状态
	--[[
	if (key_event.keycode == 65307) then
		if (#input == 0) then
			-- 恢复保留状态
			if (snapshot:restore(env)) then
				return 1
			end
		end
	end
	]]
	return 2
end

return {init = init, func = processor}
