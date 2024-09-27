local function tips(env,str)
 if env.engine.context.composition:empty() then return end
 local seg=env.engine.context.composition:back()
 seg.prompt=seg.prompt..str
end
local map=
{
 ["upper"]=
 {
  ["unit"]=
  {[0]="零","壹","贰","叁","肆","伍","陆","柒","捌","玖"},
  ["magnitude"]=
  {[0]="","拾","佰","仟"},
  ["quatermag"]=
  {[0]="","万","亿","兆","京","垓","秭","穰","沟","涧","正","载","极"},
  ["decimag"]=
  {"角","分","厘","毫"},
 },
 ["lower"]=
 {
  ["unit"]=
  {[0]="〇","一","二","三","四","五","六","七","八","九"},
  ["magnitude"]=
  {[0]="","十","百","千"},
  ["quatermag"]=
  {[0]="","万","亿","兆","京","垓","秭","穰","沟","涧","正","载","极"},
  ["decimag"]=
  {"角","分","厘","毫"},
 }
}
map.intmax=#map.upper.quatermag*#map.upper.unit
local characterizer=function(str,map,mode)
 local style=map[mode%2==1 and "upper" or "lower"]
 local money=(mode+1)%4<=1
 local partInteger=str:match("^(%d+)")
 local partDecimal=str:match("%.(%d+)$")
 local function tranInteger(str,style)
  local result={}
  local after=false
  local mag=false
  local len=#str
  for i=1,len do
   local digit=tonumber(str:sub(i,i))
   if digit~=0 then
    if after then
     table.insert(result,style.unit[0])
     after=false
    end
    if not mag then
     mag=true
    end
    table.insert(result,style.unit[digit])
    table.insert(result,style.magnitude[(len-i)%4])
   else
    after=true
   end
   if mag and (len-i)%4==0 then
    table.insert(result,style.quatermag[(len-i+1)//4])
    mag=false
   end
  end
  return table.concat(result)
 end
 local function tranDecimal(str,style,money)
  local result={}
  for i=1,#str do
   local digit=tonumber(str:sub(i,i))
   table.insert(result,style.unit[digit])
   if money then
    table.insert(result,style.decimag[i])
    if i==#style.decimag then
     break
    end
   end
  end
  return table.concat(result)
 end
 local function numberSep(partDecimal,money)
  return partDecimal and (money and "元零" or "点") or (money and "元整" or "")
 end
 local result={}
 table.insert(result,tranInteger(partInteger,style))
 table.insert(result,numberSep(partDecimal,money))
 if partDecimal then table.insert(result,tranDecimal(partDecimal,style,money)) end
 return table.concat(result)
end
local comments={
 "大写数字",
 "小写数字",
 "大写金额",
 "小写金额",
}
return
{
 init=function(env)
 end,
 func=function(input,seg,env)
	--去掉下划线
	input = string.gsub(input,"_","")
	local pattern = "at([0-9.]+)"
	local code = string.match(input, pattern)
	if (code ~= nil) then
		if not (code:find("^%d+$") or code:find("^%d-%.%d*$")) then
			tips(env,"〔数字不合法〕")
			return
		elseif #code:match("^(%d+)")>map.intmax then
			tips(env,"〔位数超过限制〕")
			return
		end
		for i=1,4 do
			local text=characterizer(code,map,i)
			if text then
				yield(Candidate("number",seg.start,seg._end,text,"〔"..comments[i].."〕"))
			end
		end
	end
 end
}