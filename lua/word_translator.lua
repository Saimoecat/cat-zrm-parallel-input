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


---
---解析编码
---@param input string 输入编码
---@return table 编码集合
---
local function analyze(input)
    -- 字符串拆分集合
    local list = {}

    -- 拆分下标
    local index = 1;

    --执行拆分
    while index <= #input do
        local char = input:sub(index, index);
        if char == "\"" then
            -- 如果遇到引号，则取三个字符
            table.insert(list, input:sub(index, index + 2))
            index = index + 3
        else
            -- 否则取两个字符
            table.insert(list, input:sub(index, index + 1))
            index = index + 2
        end
    end

    -- 拆分匹配
    local matches = {}
    local code = ""
    for i, item in ipairs(list) do
        local res = string.match(item, "[A-Z][A-Z]")
        if (res == nil) then
            -- 如果遇到声韵码，则添加进匹配表
            if (code ~= "") then
                table.insert(matches, code)
            end
            -- 重置编码
            code = item

            -- 简码匹配
            local flag = false
            if (string.match(item, "[a-z][a-z]") ~= nil) then
                flag = true
            elseif (string.match(item, "[a-z][A-Z]") ~= nil) then
                flag = true
            elseif (string.match(item, "[A-Z][a-z]") ~= nil) then
                flag = true
            end
            -- 如果遇到非简码，则添加分号进编码
            if (flag) then
                code = code .. ";"
            end
        else
            -- 组合编码
            code = code .. item
        end
    end
	
	--忽略单编码
	if (#code == 1) then
        return matches
    end

    --补齐最后的编码
    if (code ~= "") then
        table.insert(matches, code)
    end

    return matches
end

---
---匹配编码
---@param matches table 解析集合
---@param env table 查询集合
---@return table 权重集合
---
local function normal(matches, env)
	--上屏标识
	local eaFlag = false
	--模糊匹配(用户词库)
	local words = {}
	
	if (matches[1] == nil) then
		return ""
	end
	
    env.mem:user_lookup(matches[1], true)
    for item in env.mem:iter_user() do
		if (getUtf8Len(item.text) > #matches) then
			table.insert(words, item)
		end
    end
	
	-- 排除空结果
	if (#words == 0) then
        local next = {}
        for i = 2, #matches do
            table.insert(next, matches[i])
        end
        if (#next == 0) then
            return ""
        end
        return normal(next, env)
    end

	
    -- 最终集合
    local weights = {}
    local ends = {}
    for i, item in ipairs(words) do
        -- 拆分编码集合
        local groups = {}
        for each in string.gmatch(item.custom_code, "%S+") do
            table.insert(groups, each)
        end

        -- 结束标识
        local endFlag = false

        -- 计算权重
        local weight = 0
        for j, each in ipairs(matches) do
            -- 排除单字编码
            if (#groups > 1) then
				local weightFlag = true

				-- 判断编码结束
				if (#groups < j) then
					weightFlag = false
					break
				end

				-- 获取编码
				local group = groups[j]

				--提交标识
				if (each == "ea;") then
					weightFlag = false
					eaFlag = true
					break
				end

				--结束标识
				if (#groups == j) then
					endFlag = true
				end

				-- 开始匹配
				for k = 1, #each do
					local eachChar = each:sub(k, k);
					local itemChar = group:sub(k, k);
					if (not (eachChar == itemChar)) then
						weightFlag = false
						break
					end
				end

				-- 判断权重是否命中
				if weightFlag then
					weight = weight + 1
				end
            end
        end

        -- 添加结束标识
        table.insert(ends, endFlag)
        -- 添加进权重集合
        table.insert(weights, weight)
    end

    -- 查询最大值和下标
    local max = 0
    local index = 0
	local val = 0
    for i, item in ipairs(weights) do
        if (item > max) then
            max = item
            index = i
			val = words[i].weight
		elseif (item == max) then
			if (val < words[i].weight) then
				val = words[i].weight
				index = i
			end
        end
    end
	
	--判断是否有权重结果
    if (max == 0) then
        local next = {}
        for i = 2, #matches do
            table.insert(next, matches[i])
        end
        if (#next == 0) then
            return ""
        end
        return normal(next, env)
    end

    -- 判断是否还有后续编码
    local length = #matches
    if (eaFlag) then
        length = length - 1
    end
    if (length > max) then
        local next = {}
        for i = max + 1, #matches do
            table.insert(next, matches[i])
        end
        return normal(next, env)
    elseif (ends[index]) then
        return ""
    end
	
	local text = words[index].text
	local a = strUtf8Sub(text,1,length)
	local b = strUtf8Sub(text,length+1,#text)
    return a.."​"..b
end

---
---初始化
---@param env object 上下文对象
---
local function init(env)
	--创建对象
	env.mem = Memory(env.engine, env.engine.schema)
	--监听选中更新字频
	env.mem:memorize(function(commit) 
		for i,dictentry in ipairs(commit:get()) do
			env.mem:update_userdict(dictentry,1,"")
		end
	end)
end

local function translator(input, seg, env)
	local preedit = env.engine.context:get_preedit()
	local text = preedit.text

	-- 预测开关
	local flag = true
	local composition =  env.engine.context.composition
	local segment = nil
	if(not composition:empty()) then
		segment = composition:back()
	end

	
	-- 如果不是最后一位则不预测
	if (env.engine.context.caret_pos ~= #input) then
		flag = false
	elseif (segment == nil) then
		flag = false
	elseif (string.find(segment.prompt, "〔") ~= nil) then
		flag = false
	end

	if (flag) then
		--解析输入编码
		local matches = analyze(input)
		
		--匹配编码
		local dictionary = normal(matches,env)

		if (dictionary ~= "" and segment ~= nil) then
			segment.prompt = dictionary
		end

	end
end
return {init = init, func = translator}
