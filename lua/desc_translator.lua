local function translator(input, seg, env)
	local composition =  env.engine.context.composition
	if(not composition:empty()) then
		if (input:sub(1, 2) == "az") then
			local segment = composition:back()
			segment.prompt = "〔形码模式〕"
		elseif (input:sub(1, 2) == "aw") then
			local segment = composition:back()
			segment.prompt = "〔简码模式〕"
		elseif (input:sub(1, 2) == "au") then
			local segment = composition:back()
			segment.prompt = "〔Unicode〕"
		elseif (input:sub(1, 2) == "at") then
			local segment = composition:back()
			segment.prompt = "〔大写数字〕"
		elseif (input:sub(1, 2) == "ay") then
			local segment = composition:back()
			segment.prompt = "〔拼音模式〕"
		elseif (input:sub(1, 2) == "ax") then
			local segment = composition:back()
			segment.prompt = "〔系统信息〕"
		elseif (input:sub(1, 2) == "as") then
			local segment = composition:back()
			segment.prompt = "〔日期时间〕"
		elseif (input:sub(1, 2) == "aq") then
			local segment = composition:back()
			segment.prompt = "〔英语输入〕"
		elseif (input:sub(1, 2) == "az") then
			local segment = composition:back()
			segment.prompt = "〔联想输入〕"
		elseif (input == "__") then
			local segment = composition:back()
			segment.prompt = "〔历史上屏〕"
		end
	end
end
return translator