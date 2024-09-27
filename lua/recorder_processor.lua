local puncts = {
    ["，"] = true,
    ["。"] = true,
    ["＋"] = true,
    ["－"] = true,
    ["＊"] = true,
    ["／"] = true,
    ["÷"] = true,
    ["？"] = true,
    ["‹"] = true,
    ["›"] = true,
    ["«"] = true,
    ["»"] = true,
    ["〈"] = true,
    ["〉"] = true,
    ["《"] = true,
    ["》"] = true,
    ["（"] = true,
    ["）"] = true,
    ["［"] = true,
    ["］"] = true,
    ["｛"] = true,
    ["｝"] = true,
    ["〔"] = true,
    ["〕"] = true,
    ["「"] = true,
    ["」"] = true,
    ["『"] = true,
    ["』"] = true,
    ["【"] = true,
    ["】"] = true,
    ["〖"] = true,
    ["〗"] = true,
    ["；"] = true,
    ["："] = true,
    ["‘"] = true,
    ["’"] = true,
    ["“"] = true,
    ["”"] = true,
    ["、"] = true,
    ["＼"] = true,
    ["·"] = true,
    ["｜"] = true,
    ["§"] = true,
    ["¦"] = true,
    ["｀"] = true,
    ["～"] = true,
    ["！"] = true,
    ["＠"] = true,
    ["＃"] = true,
    ["⌘"] = true,
    ["％"] = true,
    ["°"] = true,
    ["￥"] = true,
    ["€"] = true,
    ["£"] = true,
    ["¥"] = true,
    ["¢"] = true,
    ["¤"] = true,
    ["…"] = true,
    ["＆"] = true,
    ["・"] = true,
    ["×"] = true,
    ["※"] = true,
    ["❂"] = true,
    ["＝"] = true,
}
local get_path = function(int)
    local path = rime_api:get_user_data_dir() .. "/recorder/recorder_" .. int .. ".txt"
    local a = io.open(path, "r")
    a = a and
    a:close()
    or
    io.open(path, "w+"):close()
    return path
end
local get_baidu_path = function()
    local path = rime_api:get_user_data_dir() .. "/recorder/baidu.txt"
    local a = io.open(path, "r")
    a = a and
    a:close()
    or
    io.open(path, "w+"):close()
    return path
end
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
        env.notifier = env.engine.context.commit_notifier:connect(function(ctx)
			if (env.engine.schema.schema_id == "zrm") then
				local lct = ctx:get_commit_text()
				--if lct:find("[%p%w]") or puncts[lct] then return end
				local path = get_path(utf8.len(lct))
				append_new_line(lct,path)
				--联想词
				if (ctx:get_selected_candidate().type == "baidu") then
					local baidu_path = get_baidu_path()
					append_new_line(lct,baidu_path)
				end
			end
        end)
    end,
	func = function (key_event, env)
		return 2
	end
}
