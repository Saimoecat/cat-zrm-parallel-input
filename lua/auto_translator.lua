--上次输入
local last = ""
local history = ""

--忽略字符
local listArray = { "，", "。", "！", "？", "：", "；", "‘", "、", "¥", "“", "”", "【", "】", "（", "）", "《", "》", "｛", "｝", "≠", "—", "～", "’", "×", "§", "‰", "·", "…", "÷",
                    "ａ", "ｂ", "ｃ", "ｄ", "ｅ", "ｆ", "ｇ", "ｈ", "ｉ", "ｊ", "ｋ", "ｌ", "ｍ", "ｎ", "ｏ", "ｐ", "ｑ", "ｒ", "ｓ", "ｔ", "ｕ", "ｖ", "ｗ", "ｘ", "ｙ", "ｚ",
                    "Ａ", "Ｂ", "Ｃ", "Ｄ", "Ｅ", "Ｆ", "Ｇ", "Ｈ", "Ｉ", "Ｊ", "Ｋ", "Ｌ", "Ｍ", "Ｎ", "Ｏ", "Ｐ", "Ｑ", "Ｒ", "Ｓ", "Ｔ", "Ｕ", "Ｖ", "Ｗ", "Ｘ", "Ｙ", "Ｚ"," " }


--获取目录
local function get_path ()
    local path = rime_api:get_user_data_dir() .. "/recorder/auto.txt"
    local a = io.open(path, "r")
    a = a and
    a:close()
    or
    io.open(path, "w+"):close()
    return path
end

--比较大小降序
local function compareDescending(a, b)
    return a.weight > b.weight
end

--提交监听
local function on_commit(ctx)
	local text = ctx:get_commit_text()
	if (last ~= text) then
		if (last ~= "" and text ~= "") then
			--检查是否是符号
			local flag = true
			if (string.match(last, "[0-9a-zA-Z,%.!%?:;'@$\\/[%]()<>{}=|~*&#%%^`+-]") ~= nil) then
				flag = false
			else
				for i, v in ipairs(listArray) do
					if (string.find(last, v) ~= nil) then
						flag = false
						break
					end
				end
			end
			
			if (flag) then
				--打开文本
				local path = get_path()
				local file = io.open(path, "r")
				if not file then return end
				local content = file:read("*all")
				local new_content = ""
				file:seek("set")
				--更新联想词库
				local append_line = last .. "\t" .. text .. "\t1"
				local index = 1
				for line in file:lines() do
					if line:find("^" .. last .. "\t" .. text .. "\t") then
						--content = content:gsub(line .. "\n", "")
						append_line = last .. "\t" .. text .. "\t" .. (line:match("([0-9]+)") + 1)
					elseif (index > 1) then
						new_content = new_content .. line .. "\n"
					end
					index = index + 1
				end
				io.open(path, "w+"):write("--\t--\t0"):close()
				io.open(path, "a"):write("\n"..append_line):close()
				io.open(path, "a"):write("\n" .. new_content):close()
				--关闭文件
				file:close()
			end
		end
	end
end



---
---初始化
---@param env object 上下文对象
---
local function init(env)
	env.notifier_pre = env.engine.context.commit_notifier:connect(on_commit,0)
end


local function translator(input, seg, env)	
	local context = env.engine.context
	--最后输入文本
	last = context.commit_history:latest_text()
	if (input:sub(1, 2) == "ac") then
		--更新联想词库
		if (history ~= last) then
			history = last
		end
		if (last ~= nil and last ~= "") then
			--最终集合
			local group = {}
			--打开文本
			local path = get_path()
			local file = io.open(path, "r")
			if not file then return end
			local content = file:read("*all")
			file:seek("set")
			--循环解析
			for line in file:lines() do
				if line:find("^" .. last .. "\t") then
					local index = 1
					local txt = ""
					local weight = 1
					for each in string.gmatch(line, "[^\t]+") do
						if (index == 2) then
							txt = each
						elseif (index == 3) then
							weight = each
						end
						index = index + 1
					end
					--控制显示权重
					if (tonumber(weight) > 10) then
						table.insert(group, {txt = txt, weight = weight})
					end
				end
			end
			
			--输出解析内容
			for i = 1, #group do
				yield(Candidate("auto", seg.start, seg._end, group[i].txt, "〔"..tostring(group[i].weight).."〕"))
			end

			--关闭文件
			file:close()
		end
	end
end
return {init = init, func = translator}