--忽略字符
local listArray = { "，", "。", "！", "？", "：", "；", "‘", "、", "¥", "“", "”", "【", "】", "（", "）", "《", "》", "｛", "｝", "≠", "—", "～", "’", "×", "§", "‰", "·", "…", "÷",
                    "ａ", "ｂ", "ｃ", "ｄ", "ｅ", "ｆ", "ｇ", "ｈ", "ｉ", "ｊ", "ｋ", "ｌ", "ｍ", "ｎ", "ｏ", "ｐ", "ｑ", "ｒ", "ｓ", "ｔ", "ｕ", "ｖ", "ｗ", "ｘ", "ｙ", "ｚ",
                    "Ａ", "Ｂ", "Ｃ", "Ｄ", "Ｅ", "Ｆ", "Ｇ", "Ｈ", "Ｉ", "Ｊ", "Ｋ", "Ｌ", "Ｍ", "Ｎ", "Ｏ", "Ｐ", "Ｑ", "Ｒ", "Ｓ", "Ｔ", "Ｕ", "Ｖ", "Ｗ", "Ｘ", "Ｙ", "Ｚ"," " }


-- 获取文件路径​​​​​​​​​​​​​​​​
local get_path = function()
    local path = rime_api:get_user_data_dir() .. "/recorder/suffix.txt"
    local a = io.open(path, "r")
    a = a and
    a:close()
    or
    io.open(path, "w+"):close()
    return path
end
-- 添加内容到文件末尾
local append_new_line = function(lct,path)
    local file = io.open(path, "r")
    if not file then return end
    local content = file:read("*all")
    file:seek("set")
    local append_line = lct .. "\t1"
    for line in file:lines() do
        if line:find("^" .. lct .. "\t") then
            content = content:gsub(line .. "\n", "")
            append_line = lct .. "\t" .. (line:match("([0-9]+)") + 1)
            break
        end
    end
    file:close()
    io.open(path, "w+"):write(append_line):close()
    io.open(path, "a"):write("\n" .. content):close()
end
return {
    init = function(env)
		--上次提交
		env.laststr = ""
		-- 监听提交
        env.notifier = env.engine.context.commit_notifier:connect(function(context)
			if (env.engine.schema.schema_id == "zrm") then
				local flag = true
				-- 本次提交
				local lct = context:get_commit_text()
				-- 忽略字符
				for i, v in ipairs(listArray) do
					if (string.find(env.laststr, v) ~= nil) then
						flag = false
						break
					elseif (string.find(lct, v) ~= nil) then
						flag = false
						break
					end
				end
				
				local input = context.input
				if (input == nil or input == "") then
					flag = false
				elseif (env.lastpreedit == nil or env.lastpreedit == "") then
					flag = false
				elseif (env.laststr == nil or env.laststr == "") then
					flag = false
				elseif (lct == nil or lct == "") then
					flag = false
				end
				
				if (flag) then
					local str = input .. "\t" .. env.lastpreedit .. "\t" .. env.laststr .. "\t" .. lct
					local path = get_path()
					append_new_line(str,path)
				end
			end
        end)
    end,
	func = function (key_event, env)
		local engine = env.engine
		local context = engine.context
		local input = context.input
		local text = context:get_script_text()
		local composition = context.composition
		local segment = nil
		if (not composition:empty()) then
			segment = composition:back()
		end
		
		-- 还原preedit
		local preeditArray = { "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸", "⁹", "⁰" }
		for i, v in ipairs(preeditArray) do
			text = string.gsub(text, v, "")
		end
		
		--最后输入
		local lasttext = env.engine.context.commit_history:latest_text()
		if (lasttext ~= "") then
			env.laststr = lasttext
			env.lastpreedit = text
		end
		return 2
	end
}
