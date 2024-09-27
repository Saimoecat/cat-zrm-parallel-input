local function translator(input, seg, env)
	if (input == "ax") then
		yield(Candidate("system", seg.start, seg._end, env.engine.schema.schema_name, "〔rime 方案〕"))
		yield(Candidate("system", seg.start, seg._end, rime_api:get_rime_version(), "〔librime 版本号〕"))
		yield(Candidate("system", seg.start, seg._end, rime_api:get_distribution_name(), "〔rime 平台〕"))
		yield(Candidate("system", seg.start, seg._end, rime_api:get_distribution_code_name(), "〔rime 平台〕"))
		yield(Candidate("system", seg.start, seg._end, rime_api:get_distribution_version(), "〔rime 版本号〕"))
	end
end
return translator