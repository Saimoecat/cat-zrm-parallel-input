-- Windows 平台（小狼毫 >= 0.14.0）
   -- 将 `simplehttp.dll` 下所有文件复制到小狼毫的程序文件夹下
-- Linux 平台（librime 需编译 lua 支持）
   -- 将 `simplehttp.so` 下所有文件复制到 `/usr/local/lib/lua/$LUAV` 下

local json = require("json")
local http = require("simplehttp")
http.TIMEOUT = 0.3

--映射表
local map = {}
--云输入缓存
local preedit = ""
local cands = {}
local pinyin = ""
--初始化映射表
local function initMap()
    map["aa"] = "a"
    map["ai"] = "ai"
    map["an"] = "an"
    map["ah"] = "ang"
    map["ao"] = "ao"
    map["ba"] = "ba"
    map["bl"] = "bai"
    map["bj"] = "ban"
    map["bh"] = "bang"
    map["bk"] = "bao"
    map["bz"] = "bei"
    map["bf"] = "ben"
    map["bg"] = "beng"
    map["bi"] = "bi"
    map["bm"] = "bian"
    map["bc"] = "biao"
    map["bx"] = "bie"
    map["bn"] = "bin"
    map["by"] = "bing"
    map["bo"] = "bo"
    map["bu"] = "bu"
    map["ca"] = "ca"
    map["cl"] = "cai"
    map["cj"] = "can"
    map["ch"] = "cang"
    map["ck"] = "cao"
    map["ce"] = "ce"
    map["cf"] = "cen"
    map["cg"] = "ceng"
    map["ci"] = "ci"
    map["cs"] = "cong"
    map["cb"] = "cou"
    map["cu"] = "cu"
    map["cr"] = "cuan"
    map["cv"] = "cui"
    map["cp"] = "cun"
    map["co"] = "cuo"
    map["ia"] = "cha"
    map["il"] = "chai"
    map["ij"] = "chan"
    map["ih"] = "chang"
    map["ik"] = "chao"
    map["ie"] = "che"
    map["if"] = "chen"
    map["ig"] = "cheng"
    map["ii"] = "chi"
    map["is"] = "chong"
    map["ib"] = "chou"
    map["iu"] = "chu"
    map["iw"] = "chua"
    map["iy"] = "chuai"
    map["ir"] = "chuan"
    map["id"] = "chuang"
    map["iv"] = "chui"
    map["ip"] = "chun"
    map["io"] = "chuo"
    map["da"] = "da"
    map["dl"] = "dai"
    map["dj"] = "dan"
    map["dh"] = "dang"
    map["dk"] = "dao"
    map["de"] = "de"
    map["dz"] = "dei"
    map["df"] = "den"
    map["dg"] = "deng"
    map["di"] = "di"
    map["dw"] = "dia"
    map["dm"] = "dian"
    map["dc"] = "diao"
    map["dx"] = "die"
    map["dy"] = "ding"
    map["dq"] = "diu"
    map["ds"] = "dong"
    map["db"] = "dou"
    map["du"] = "du"
    map["dr"] = "duan"
    map["dv"] = "dui"
    map["dp"] = "dun"
    map["do"] = "duo"
    map["ee"] = "e"
    map["ei"] = "ei"
    map["en"] = "en"
    map["eg"] = "eng"
    map["er"] = "er"
    map["fa"] = "fa"
    map["fj"] = "fan"
    map["fh"] = "fang"
    map["fz"] = "fei"
    map["ff"] = "fen"
    map["fg"] = "feng"
    map["fo"] = "fo"
    map["fb"] = "fou"
    map["fu"] = "fu"
    map["ga"] = "ga"
    map["gl"] = "gai"
    map["gj"] = "gan"
    map["gh"] = "gang"
    map["gk"] = "gao"
    map["ge"] = "ge"
    map["gz"] = "gei"
    map["gf"] = "gen"
    map["gg"] = "geng"
    map["gs"] = "gong"
    map["gb"] = "gou"
    map["gu"] = "gu"
    map["gw"] = "gua"
    map["gy"] = "guai"
    map["gr"] = "guan"
    map["gd"] = "guang"
    map["gv"] = "gui"
    map["gp"] = "gun"
    map["go"] = "guo"
    map["ha"] = "ha"
    map["hl"] = "hai"
    map["hj"] = "han"
    map["hh"] = "hang"
    map["hk"] = "hao"
    map["he"] = "he"
    map["hz"] = "hei"
    map["hf"] = "hen"
    map["hg"] = "heng"
    map["hs"] = "hong"
    map["hb"] = "hou"
    map["hu"] = "hu"
    map["hw"] = "hua"
    map["hy"] = "huai"
    map["hr"] = "huan"
    map["hd"] = "huang"
    map["hv"] = "hui"
    map["hp"] = "hun"
    map["ho"] = "huo"
    map["ji"] = "ji"
    map["jw"] = "jia"
    map["jm"] = "jian"
    map["jd"] = "jiang"
    map["jc"] = "jiao"
    map["jx"] = "jie"
    map["jn"] = "jin"
    map["jy"] = "jing"
    map["js"] = "jiong"
    map["jq"] = "jiu"
    map["ju"] = "ju"
    map["jr"] = "juan"
    map["jt"] = "jue"
    map["jp"] = "jun"
    map["ka"] = "ka"
    map["kl"] = "kai"
    map["kj"] = "kan"
    map["kh"] = "kang"
    map["kk"] = "kao"
    map["ke"] = "ke"
    map["kz"] = "kei"
    map["kf"] = "ken"
    map["kg"] = "keng"
    map["ks"] = "kong"
    map["kb"] = "kou"
    map["ku"] = "ku"
    map["kw"] = "kua"
    map["ky"] = "kuai"
    map["kr"] = "kuan"
    map["kd"] = "kuang"
    map["kv"] = "kui"
    map["kp"] = "kun"
    map["ko"] = "kuo"
    map["la"] = "la"
    map["ll"] = "lai"
    map["lj"] = "lan"
    map["lh"] = "lang"
    map["lk"] = "lao"
    map["le"] = "le"
    map["lz"] = "lei"
    map["lg"] = "leng"
    map["li"] = "li"
    map["lw"] = "lia"
    map["lm"] = "lian"
    map["ld"] = "liang"
    map["lc"] = "liao"
    map["lx"] = "lie"
    map["ln"] = "lin"
    map["ly"] = "ling"
    map["lq"] = "liu"
    map["lo"] = "lo"
    map["ls"] = "long"
    map["lb"] = "lou"
    map["lu"] = "lu"
    map["lv"] = "lv"
    map["lr"] = "luan"
    map["lt"] = "lue"
    map["lp"] = "lun"
    map["lo"] = "luo"
    map["ma"] = "ma"
    map["ml"] = "mai"
    map["mj"] = "man"
    map["mh"] = "mang"
    map["mk"] = "mao"
    map["me"] = "me"
    map["mz"] = "mei"
    map["mf"] = "men"
    map["mg"] = "meng"
    map["mi"] = "mi"
    map["mm"] = "mian"
    map["mc"] = "miao"
    map["mx"] = "mie"
    map["mn"] = "min"
    map["my"] = "ming"
    map["mq"] = "miu"
    map["mo"] = "mo"
    map["mb"] = "mou"
    map["mu"] = "mu"
    map["na"] = "na"
    map["nl"] = "nai"
    map["nj"] = "nan"
    map["nh"] = "nang"
    map["nk"] = "nao"
    map["ne"] = "ne"
    map["nz"] = "nei"
    map["nf"] = "nen"
    map["ng"] = "neng"
    map["ni"] = "ni"
    map["nm"] = "nian"
    map["nd"] = "niang"
    map["nc"] = "niao"
    map["nx"] = "nie"
    map["nn"] = "nin"
    map["ny"] = "ning"
    map["nq"] = "niu"
    map["ns"] = "nong"
    map["nb"] = "nou"
    map["nu"] = "nu"
    map["nv"] = "nv"
    map["nr"] = "nuan"
    map["nt"] = "nue"
    map["no"] = "nuo"
    map["oo"] = "o"
    map["ou"] = "ou"
    map["pa"] = "pa"
    map["pl"] = "pai"
    map["pj"] = "pan"
    map["ph"] = "pang"
    map["pk"] = "pao"
    map["pz"] = "pei"
    map["pf"] = "pen"
    map["pg"] = "peng"
    map["pi"] = "pi"
    map["pm"] = "pian"
    map["pc"] = "piao"
    map["px"] = "pie"
    map["pn"] = "pin"
    map["py"] = "ping"
    map["po"] = "po"
    map["pb"] = "pou"
    map["pu"] = "pu"
    map["qi"] = "qi"
    map["qw"] = "qia"
    map["qm"] = "qian"
    map["qd"] = "qiang"
    map["qc"] = "qiao"
    map["qx"] = "qie"
    map["qn"] = "qin"
    map["qy"] = "qing"
    map["qs"] = "qiong"
    map["qq"] = "qiu"
    map["qu"] = "qu"
    map["qr"] = "quan"
    map["qt"] = "que"
    map["qp"] = "qun"
    map["rj"] = "ran"
    map["rh"] = "rang"
    map["rk"] = "rao"
    map["re"] = "re"
    map["rf"] = "ren"
    map["rg"] = "reng"
    map["ri"] = "ri"
    map["rs"] = "rong"
    map["rb"] = "rou"
    map["ru"] = "ru"
    map["rw"] = "rua"
    map["rr"] = "ruan"
    map["rv"] = "rui"
    map["rp"] = "run"
    map["ro"] = "ruo"
    map["sa"] = "sa"
    map["sl"] = "sai"
    map["sj"] = "san"
    map["sh"] = "sang"
    map["sk"] = "sao"
    map["se"] = "se"
    map["sf"] = "sen"
    map["sg"] = "seng"
    map["si"] = "si"
    map["ss"] = "song"
    map["sb"] = "sou"
    map["su"] = "su"
    map["sr"] = "suan"
    map["sv"] = "sui"
    map["sp"] = "sun"
    map["so"] = "suo"
    map["ua"] = "sha"
    map["ul"] = "shai"
    map["uj"] = "shan"
    map["uh"] = "shang"
    map["uk"] = "shao"
    map["ue"] = "she"
    map["uz"] = "shei"
    map["uf"] = "shen"
    map["ug"] = "sheng"
    map["ui"] = "shi"
    map["ub"] = "shou"
    map["uu"] = "shu"
    map["uw"] = "shua"
    map["uy"] = "shuai"
    map["ur"] = "shuan"
    map["ud"] = "shuang"
    map["uv"] = "shui"
    map["up"] = "shun"
    map["uo"] = "shuo"
    map["ta"] = "ta"
    map["tl"] = "tai"
    map["tj"] = "tan"
    map["th"] = "tang"
    map["tk"] = "tao"
    map["te"] = "te"
    map["tg"] = "teng"
    map["ti"] = "ti"
    map["tm"] = "tian"
    map["tc"] = "tiao"
    map["tx"] = "tie"
    map["ty"] = "ting"
    map["ts"] = "tong"
    map["tb"] = "tou"
    map["tu"] = "tu"
    map["tr"] = "tuan"
    map["tv"] = "tui"
    map["tp"] = "tun"
    map["to"] = "tuo"
    map["wa"] = "wa"
    map["wl"] = "wai"
    map["wj"] = "wan"
    map["wh"] = "wang"
    map["wz"] = "wei"
    map["wf"] = "wen"
    map["wg"] = "weng"
    map["wo"] = "wo"
    map["wu"] = "wu"
    map["xi"] = "xi"
    map["xw"] = "xia"
    map["xm"] = "xian"
    map["xd"] = "xiang"
    map["xc"] = "xiao"
    map["xx"] = "xie"
    map["xn"] = "xin"
    map["xy"] = "xing"
    map["xs"] = "xiong"
    map["xq"] = "xiu"
    map["xu"] = "xu"
    map["xr"] = "xuan"
    map["xt"] = "xue"
    map["xp"] = "xun"
    map["ya"] = "ya"
    map["yj"] = "yan"
    map["yh"] = "yang"
    map["yk"] = "yao"
    map["ye"] = "ye"
    map["yi"] = "yi"
    map["yn"] = "yin"
    map["yy"] = "ying"
    map["yo"] = "yo"
    map["ys"] = "yong"
    map["yb"] = "you"
    map["yu"] = "yu"
    map["yr"] = "yuan"
    map["yt"] = "yue"
    map["yp"] = "yun"
    map["za"] = "za"
    map["zl"] = "zai"
    map["zj"] = "zan"
    map["zh"] = "zang"
    map["zk"] = "zao"
    map["ze"] = "ze"
    map["zz"] = "zei"
    map["zf"] = "zen"
    map["zg"] = "zeng"
    map["zi"] = "zi"
    map["zs"] = "zong"
    map["zb"] = "zou"
    map["zu"] = "zu"
    map["zr"] = "zuan"
    map["zv"] = "zui"
    map["zp"] = "zun"
    map["zo"] = "zuo"
    map["va"] = "zha"
    map["vl"] = "zhai"
    map["vj"] = "zhan"
    map["vh"] = "zhang"
    map["vk"] = "zhao"
    map["ve"] = "zhe"
    map["vz"] = "zhei"
    map["vf"] = "zhen"
    map["vg"] = "zheng"
    map["vi"] = "zhi"
    map["vs"] = "zhong"
    map["vb"] = "zhou"
    map["vu"] = "zhu"
    map["vw"] = "zhua"
    map["vy"] = "zhuai"
    map["vr"] = "zhuan"
    map["vd"] = "zhuang"
    map["vv"] = "zhui"
    map["vp"] = "zhun"
    map["vo"] = "zhuo"
    return map
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
            if (index + 1 <= #input) then
                -- 否则取两个字符
                table.insert(list, input:sub(index, index + 1))
                index = index + 2
            else
                table.insert(list, input:sub(index, index))
                index = index + 1
            end
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
        else
            -- 组合编码
            code = code .. item
        end
    end

    --补齐最后的编码
    if (code ~= "") then
        table.insert(matches, code)
    end

    return matches
end

--转换编码
local function transition(input)
    local matches = analyze(input)
    local code = ""
	--临时纪录
	local temp = ""
    for i, item in ipairs(matches) do

		--组装临时纪录
        local a = item
        if (#item > 2) then
            local p = string.sub(item, 1, 2)
            local x = string.sub(item, 3, #item)
            a = p .. "«" .. x .. "»"
        end
        temp = temp .. a .. " "
		--排除单编码
		if (#item == 1) then
			break
		end
        local each = string.sub(item, 1, 2)
        --转为小写
        each = string.lower(each)
        --验证数据
        if (map[each] == nil) then
            return ""
        end
        code = code .. map[each]
    end
	--去掉末尾空格
    if (temp:sub(#temp - 1, #temp) == " ") then
        temp = temp:sub(1, #temp - 1)
    end
	--判断是否需要替换
	if (pinyin ~= temp) then
		pinyin = temp
	end
    return code
end


---
---初始化
---@param env object 上下文对象
---
local function init(env)
	--初始化映射集合
	initMap()
end


local function translator(input, seg, env)
	local context = env.engine.context
	--解析编码
	local code = transition(input)
	if (code ~= "") then
		--检查缓存
		if (preedit == code) then
			--生成候选项
			for i, v in ipairs(cands) do
				local c = Candidate("baidu", seg.start, seg._end, v[1], "〔㉿〕")
				c.quality = 2
				c.preedit = pinyin
				yield(c)
			end
		else
			--检查触发开关
			local flag = context:get_property("baidu")
			if (flag ~= nil and flag == "true") then
				--关闭开关
				context:set_property("baidu","false")
				--纪录缓存
				preedit = code
				--发送请求
				local res = http.request("http://olime.baidu.com/py?version=1&input="..preedit)
				local _, j = pcall(json.decode, res)
				if (j.status == "T" and j.result and j.result[1]) then
					cands = j.result[1]
				end
				--生成候选项
				for i, v in ipairs(cands) do
					local c = Candidate("baidu", seg.start, seg._end, v[1], "〔㉿〕")
					c.quality = 2
					c.preedit = pinyin
					yield(c)
				end
			else
				--清除缓存
				preedit = ""
				cands = {}
				pinyin = ""
			end
		end
		
		
	end
end
return {init = init, func = translator}