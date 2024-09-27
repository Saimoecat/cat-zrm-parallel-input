--英语模式,以'为起始标志,后续以此为空格标志
local function translator(input, seg)
   if (string.sub(input,1,2) == "aq") and (#input>2) then
		--去掉下划线
		input = string.gsub(input,"_","")
		
		--去掉aq前缀
		local mt_a=string.sub(input,3,#input)
		
		--替换分割为空格
		local mt=string.gsub(mt_a,"'"," ")
		
		--分组
		local groups = {}
		for each in string.gmatch(mt, "%S+") do
			table.insert(groups, each)
		end
		
		--首字母大写分组
		local groups_AA = {}
		local tf = ""
		for i = 1, #groups do
			local item = groups[i]
			local dx = string.upper(string.sub(item,1,1))..string.sub(item,2,#item)
			table.insert(groups_AA, dx)
			if (i > 1) then
				tf = tf .. dx
			end
		end
		
		yield(Candidate("english", seg.start, seg._end, mt, "〔原样输出〕"))
		yield(Candidate("english", seg.start, seg._end, string.upper(string.sub(mt,1,1))..string.sub(mt,2,#mt), "〔首大写空格〕"))
		yield(Candidate("english", seg.start, seg._end, string.upper(mt), "〔全大写空格〕"))
		yield(Candidate("english", seg.start, seg._end, string.gsub(string.upper(mt)," ","_"), "〔下划线大写〕"))
		yield(Candidate("english", seg.start, seg._end, groups[1]..tf, "〔驼峰小写〕"))
		yield(Candidate("english", seg.start, seg._end, groups_AA[1]..tf, "〔驼峰大写〕"))
    end
end	  
return translator