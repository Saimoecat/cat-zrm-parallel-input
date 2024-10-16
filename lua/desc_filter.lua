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

--查询编码
local function queryByXing(str)
	local code = ReverseLookup("zrm_xing"):lookup(str)
	return code:sub(4, #code)
end

--查询编码
local function queryByJane(str)
	local code = ReverseLookup("zrm_jane"):lookup(str)
	return code:sub(4, #code)
end

--解析编码
local function comment (candidate)
    local text = candidate.text
    local preedit = candidate.preedit

    local length = getUtf8Len(text)
    local lastZi = strUtf8Sub(text, length, length)

    -- 拆分编码集合
    local groups = {}
    for each in string.gmatch(preedit, "%S+") do
        table.insert(groups, each)
    end

    local code = queryByXing(lastZi)
	
    local lastCode = groups[#groups]

    if (string.match(lastCode, "«") == nil) then
        return "〔" .. code:sub(1, 2) .. "〕"
    else
        local newCode = strUtf8Sub(lastCode,4,getUtf8Len(lastCode) - 4)
        if (getUtf8Len(newCode) == 2) then
            return "〔" .. code:sub(3, 4) .. "〕"
        elseif (getUtf8Len(newCode) == 4) then
            return "〔" .. code:sub(5, 6) .. "〕"
        else
            return ""
        end
    end
end

--解析编码
local function jane(candidate,lastCode)
    local text = candidate.text
    local preedit = candidate.preedit

    local code = queryByJane(text)

    if (string.match(lastCode, "«") == nil) then
        return "〔" .. code:sub(1, 2) .. "〕"
    else
		local newCode = strUtf8Sub(lastCode,4,getUtf8Len(lastCode) - 4)
        if (getUtf8Len(newCode) == 2) then
            return "〔" .. code:sub(3, 4) .. "〕"
        elseif (getUtf8Len(newCode) == 4) then
            return "〔" .. code:sub(5, 6) .. "〕"
        else
            return ""
        end
    end
end

---
--- 找出不相同的部分
---@param now string 当前字符
---@param input string 整个输入字符
---@return string 不同的部分
---
local function comparison(now, input)
    
    -- 去掉空格
    now = string.gsub(now, " ", "")
    now = string.gsub(now, "«", "")
    now = string.gsub(now, "»", "")


    -- 获取now字符串的长度
    local nowLen = #now
    -- 检查input的前nowLen长度是否与now完全相同
    if input:sub(1, nowLen) == now then
        -- 如果相同，返回input中超出now长度的部分
        local diffPart = input:sub(nowLen + 1)
        return diffPart
    else
        -- 如果不同，找出第一个不同的字符位置并返回从该位置开始的子字符串
        for i = 1, nowLen do
            if input:sub(i, i) ~= now:sub(i, i) then
                local diffPart = input:sub(i)
                return diffPart
            end
        end
    end
    return ""
end

---
---初始化
---@param env object 上下文对象
---
local function init(env)
end

local function filter(input, env)
	local inp = env.engine.context.input
	local index = 0
	for cand in input:iter() do
		index = index + 1
		local flag = true

		-- 还原preedit
		local preeditArray = {"¹","²","³","⁴","⁵","⁶","⁷","⁸","⁹","⁰"}
    	for i, v in ipairs(preeditArray) do
	    	cand.preedit = string.gsub(cand.preedit, v, "")
    	end
		
		-- 拆分编码集合
		local groups = {}
		for each in string.gmatch(cand.preedit, "%S+") do
			table.insert(groups, each)
		end
		local lastInput = groups[#groups]
		
		if (inp == "__") then
			flag = false
		elseif (inp:sub(1, 2) == "as") then
			flag = false
		elseif (inp:sub(1, 2) == "ay") then
			flag = false
		elseif (inp == "ax") then
			flag = false
		elseif (inp:sub(1, 2) == "au") then
			flag = false
		elseif (inp:sub(1, 2) == "at") then
			flag = false
		elseif (inp:sub(1, 2) == "aq") then
			flag = false
		elseif (cand.type == "baidu") then
			flag = false
		elseif (cand.type == "c2e") then
			flag = false
		elseif (cand.type == "extend") then
			flag = false
		elseif (cand.type == "auto") then
			flag = false
		elseif (cand.type == "completion") then
			cand.comment = "〔〶〕"
			flag = false
		elseif (cand.type == "phone") then
			flag = false
		elseif (lastInput:sub(1, 2) == "aw") then
			local res = jane(cand,lastInput)
			cand.comment = res
			cand.type = "jane"
			flag = false
		elseif (lastInput:sub(1, 2) == "az") then
			cand.type = "xing"
			flag = true
		end
		
		if (flag) then
			local res = comment(cand)
			cand.comment = res
			if (cand.type == "user_phrase") then
				cand.comment = cand.comment.."☯"
			end
		end

		-- 判断是否有空码
		if (flag and index == 1 and env.engine.context.caret_pos == #inp) then
			-- 找出不相同的部分
			local text = comparison(cand.preedit,inp)
			-- 判断不相同的部分是否大于0
			if ( #text > 0 ) then
				env.engine.context:pop_input(#text)
			end
		end

		local preedit = ""
		for i, v in ipairs(groups) do
    			preedit = preedit .. v
			if (i <= #preeditArray) then
				preedit = preedit .. preeditArray[i]
			end
			preedit = preedit .. " "
		end

		cand.preedit = preedit
		
		yield(cand)

    end
	
	--清空联想
	--[[
	if (inp == "ac" and index == 0) then
		env.engine.context:clear()
	end
	--]]
	
	--清空无编码
	local composition =  env.engine.context.composition
	if(not composition:empty()) then
		local segment = composition:back()
		if (index == 0 and string.find(segment.prompt, "〔") == nil) then
			env.engine.context:clear()
		end
	end
	
end

return {init = init, func = filter}
