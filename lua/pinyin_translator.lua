local function translator(input, seg)
	if (input:sub(1, 2) == "ay") then
		if (input:sub(#input - 1,#input) == "aa") then
			yield(Candidate("pinyin", seg.start, seg._end, "ā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "á", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "à", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ai") then
			yield(Candidate("pinyin", seg.start, seg._end, "āi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "an") then
			yield(Candidate("pinyin", seg.start, seg._end, "ān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "án", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "àn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ah") then
			yield(Candidate("pinyin", seg.start, seg._end, "āng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "áng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "àng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ao") then
			yield(Candidate("pinyin", seg.start, seg._end, "āo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "áo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ba") then
			yield(Candidate("pinyin", seg.start, seg._end, "bā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bl") then
			yield(Candidate("pinyin", seg.start, seg._end, "bāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bj") then
			yield(Candidate("pinyin", seg.start, seg._end, "bān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bh") then
			yield(Candidate("pinyin", seg.start, seg._end, "bāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "báng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bk") then
			yield(Candidate("pinyin", seg.start, seg._end, "bāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "báo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bz") then
			yield(Candidate("pinyin", seg.start, seg._end, "bēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "béi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "běi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bf") then
			yield(Candidate("pinyin", seg.start, seg._end, "bēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "běn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bg") then
			yield(Candidate("pinyin", seg.start, seg._end, "bēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "béng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "běng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bi") then
			yield(Candidate("pinyin", seg.start, seg._end, "bī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bm") then
			yield(Candidate("pinyin", seg.start, seg._end, "biān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bián", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "biǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "biàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bc") then
			yield(Candidate("pinyin", seg.start, seg._end, "biāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "biáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "biǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "biào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bx") then
			yield(Candidate("pinyin", seg.start, seg._end, "biē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bié", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "biě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "biè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bn") then
			yield(Candidate("pinyin", seg.start, seg._end, "bīn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bín", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bǐn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bìn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "by") then
			yield(Candidate("pinyin", seg.start, seg._end, "bīng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bíng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bǐng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bìng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bo") then
			yield(Candidate("pinyin", seg.start, seg._end, "bō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "bu") then
			yield(Candidate("pinyin", seg.start, seg._end, "bū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "bù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ca") then
			yield(Candidate("pinyin", seg.start, seg._end, "cā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "cl") then
			yield(Candidate("pinyin", seg.start, seg._end, "cāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "cj") then
			yield(Candidate("pinyin", seg.start, seg._end, "cān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "càn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ch") then
			yield(Candidate("pinyin", seg.start, seg._end, "cāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "càng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ck") then
			yield(Candidate("pinyin", seg.start, seg._end, "cāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ce") then
			yield(Candidate("pinyin", seg.start, seg._end, "cē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "cf") then
			yield(Candidate("pinyin", seg.start, seg._end, "cēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "cg") then
			yield(Candidate("pinyin", seg.start, seg._end, "cēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "céng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ci") then
			yield(Candidate("pinyin", seg.start, seg._end, "cī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "cs") then
			yield(Candidate("pinyin", seg.start, seg._end, "cōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "còng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "cb") then
			yield(Candidate("pinyin", seg.start, seg._end, "cōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "còu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "cu") then
			yield(Candidate("pinyin", seg.start, seg._end, "cū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "cr") then
			yield(Candidate("pinyin", seg.start, seg._end, "cuān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cuán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cuǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cuàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "cv") then
			yield(Candidate("pinyin", seg.start, seg._end, "cuī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cuí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cuǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cuì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "cp") then
			yield(Candidate("pinyin", seg.start, seg._end, "cūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "co") then
			yield(Candidate("pinyin", seg.start, seg._end, "cuō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cuó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cuǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cuò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ia") then
			yield(Candidate("pinyin", seg.start, seg._end, "chā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "il") then
			yield(Candidate("pinyin", seg.start, seg._end, "chāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ij") then
			yield(Candidate("pinyin", seg.start, seg._end, "chān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ih") then
			yield(Candidate("pinyin", seg.start, seg._end, "chāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cháng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ik") then
			yield(Candidate("pinyin", seg.start, seg._end, "chāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "cháo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ie") then
			yield(Candidate("pinyin", seg.start, seg._end, "chē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ché", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "if") then
			yield(Candidate("pinyin", seg.start, seg._end, "chēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ig") then
			yield(Candidate("pinyin", seg.start, seg._end, "chēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chéng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ii") then
			yield(Candidate("pinyin", seg.start, seg._end, "chī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "is") then
			yield(Candidate("pinyin", seg.start, seg._end, "chōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ib") then
			yield(Candidate("pinyin", seg.start, seg._end, "chōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "iu") then
			yield(Candidate("pinyin", seg.start, seg._end, "chū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "iw") then
			yield(Candidate("pinyin", seg.start, seg._end, "chuā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "iy") then
			yield(Candidate("pinyin", seg.start, seg._end, "chuāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ir") then
			yield(Candidate("pinyin", seg.start, seg._end, "chuān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "id") then
			yield(Candidate("pinyin", seg.start, seg._end, "chuāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "iv") then
			yield(Candidate("pinyin", seg.start, seg._end, "chuī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ip") then
			yield(Candidate("pinyin", seg.start, seg._end, "chūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "io") then
			yield(Candidate("pinyin", seg.start, seg._end, "chuō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "chuò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "da") then
			yield(Candidate("pinyin", seg.start, seg._end, "dā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dl") then
			yield(Candidate("pinyin", seg.start, seg._end, "dāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dj") then
			yield(Candidate("pinyin", seg.start, seg._end, "dān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dh") then
			yield(Candidate("pinyin", seg.start, seg._end, "dāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dk") then
			yield(Candidate("pinyin", seg.start, seg._end, "dāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "de") then
			yield(Candidate("pinyin", seg.start, seg._end, "dē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dz") then
			yield(Candidate("pinyin", seg.start, seg._end, "dēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "déi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "děi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "df") then
			yield(Candidate("pinyin", seg.start, seg._end, "dēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "děn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dg") then
			yield(Candidate("pinyin", seg.start, seg._end, "dēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "déng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "děng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "di") then
			yield(Candidate("pinyin", seg.start, seg._end, "dī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dw") then
			yield(Candidate("pinyin", seg.start, seg._end, "diā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dià", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dm") then
			yield(Candidate("pinyin", seg.start, seg._end, "diān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dián", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dc") then
			yield(Candidate("pinyin", seg.start, seg._end, "diāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dx") then
			yield(Candidate("pinyin", seg.start, seg._end, "diē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dié", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dy") then
			yield(Candidate("pinyin", seg.start, seg._end, "dīng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "díng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dǐng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dìng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dq") then
			yield(Candidate("pinyin", seg.start, seg._end, "diū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "diù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ds") then
			yield(Candidate("pinyin", seg.start, seg._end, "dōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "db") then
			yield(Candidate("pinyin", seg.start, seg._end, "dōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "du") then
			yield(Candidate("pinyin", seg.start, seg._end, "dū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dr") then
			yield(Candidate("pinyin", seg.start, seg._end, "duān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "duán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "duǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "duàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dv") then
			yield(Candidate("pinyin", seg.start, seg._end, "duī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "duí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "duǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "duì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "dp") then
			yield(Candidate("pinyin", seg.start, seg._end, "dūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "dùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "do") then
			yield(Candidate("pinyin", seg.start, seg._end, "duō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "duó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "duǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "duò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ee") then
			yield(Candidate("pinyin", seg.start, seg._end, "ē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "é", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "è", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ei") then
			yield(Candidate("pinyin", seg.start, seg._end, "ēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "éi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ěi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "èi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "en") then
			yield(Candidate("pinyin", seg.start, seg._end, "ēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "én", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "èn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "eg") then
			yield(Candidate("pinyin", seg.start, seg._end, "ēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "éng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "èng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "er") then
			yield(Candidate("pinyin", seg.start, seg._end, "ēr", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ér", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ěr", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "èr", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "fa") then
			yield(Candidate("pinyin", seg.start, seg._end, "fā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "fj") then
			yield(Candidate("pinyin", seg.start, seg._end, "fān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "fh") then
			yield(Candidate("pinyin", seg.start, seg._end, "fāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "fz") then
			yield(Candidate("pinyin", seg.start, seg._end, "fēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "féi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fěi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ff") then
			yield(Candidate("pinyin", seg.start, seg._end, "fēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "fg") then
			yield(Candidate("pinyin", seg.start, seg._end, "fēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "féng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "fo") then
			yield(Candidate("pinyin", seg.start, seg._end, "fō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "fb") then
			yield(Candidate("pinyin", seg.start, seg._end, "fōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "fu") then
			yield(Candidate("pinyin", seg.start, seg._end, "fū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "fù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ga") then
			yield(Candidate("pinyin", seg.start, seg._end, "gā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gl") then
			yield(Candidate("pinyin", seg.start, seg._end, "gāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gj") then
			yield(Candidate("pinyin", seg.start, seg._end, "gān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gh") then
			yield(Candidate("pinyin", seg.start, seg._end, "gāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gk") then
			yield(Candidate("pinyin", seg.start, seg._end, "gāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ge") then
			yield(Candidate("pinyin", seg.start, seg._end, "gē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gz") then
			yield(Candidate("pinyin", seg.start, seg._end, "gēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "géi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gěi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gf") then
			yield(Candidate("pinyin", seg.start, seg._end, "gēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gg") then
			yield(Candidate("pinyin", seg.start, seg._end, "gēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "géng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gs") then
			yield(Candidate("pinyin", seg.start, seg._end, "gōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "góng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gb") then
			yield(Candidate("pinyin", seg.start, seg._end, "gōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "góu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gu") then
			yield(Candidate("pinyin", seg.start, seg._end, "gū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gw") then
			yield(Candidate("pinyin", seg.start, seg._end, "guā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gy") then
			yield(Candidate("pinyin", seg.start, seg._end, "guāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gr") then
			yield(Candidate("pinyin", seg.start, seg._end, "guān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gd") then
			yield(Candidate("pinyin", seg.start, seg._end, "guāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gv") then
			yield(Candidate("pinyin", seg.start, seg._end, "guī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "gp") then
			yield(Candidate("pinyin", seg.start, seg._end, "gūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "gùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "go") then
			yield(Candidate("pinyin", seg.start, seg._end, "guō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "guò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ha") then
			yield(Candidate("pinyin", seg.start, seg._end, "hā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "há", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hl") then
			yield(Candidate("pinyin", seg.start, seg._end, "hāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hj") then
			yield(Candidate("pinyin", seg.start, seg._end, "hān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hh") then
			yield(Candidate("pinyin", seg.start, seg._end, "hāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "háng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hk") then
			yield(Candidate("pinyin", seg.start, seg._end, "hāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "háo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "he") then
			yield(Candidate("pinyin", seg.start, seg._end, "hē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hz") then
			yield(Candidate("pinyin", seg.start, seg._end, "hēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "héi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hěi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hf") then
			yield(Candidate("pinyin", seg.start, seg._end, "hēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hg") then
			yield(Candidate("pinyin", seg.start, seg._end, "hēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "héng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hs") then
			yield(Candidate("pinyin", seg.start, seg._end, "hōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hb") then
			yield(Candidate("pinyin", seg.start, seg._end, "hōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hu") then
			yield(Candidate("pinyin", seg.start, seg._end, "hū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hw") then
			yield(Candidate("pinyin", seg.start, seg._end, "huā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hy") then
			yield(Candidate("pinyin", seg.start, seg._end, "huāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hr") then
			yield(Candidate("pinyin", seg.start, seg._end, "huān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hd") then
			yield(Candidate("pinyin", seg.start, seg._end, "huāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hv") then
			yield(Candidate("pinyin", seg.start, seg._end, "huī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "hp") then
			yield(Candidate("pinyin", seg.start, seg._end, "hūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "hùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ho") then
			yield(Candidate("pinyin", seg.start, seg._end, "huō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "huò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ji") then
			yield(Candidate("pinyin", seg.start, seg._end, "jī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "jw") then
			yield(Candidate("pinyin", seg.start, seg._end, "jiā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jià", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "jm") then
			yield(Candidate("pinyin", seg.start, seg._end, "jiān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jián", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "jd") then
			yield(Candidate("pinyin", seg.start, seg._end, "jiāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "jc") then
			yield(Candidate("pinyin", seg.start, seg._end, "jiāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "jx") then
			yield(Candidate("pinyin", seg.start, seg._end, "jiē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jié", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "jn") then
			yield(Candidate("pinyin", seg.start, seg._end, "jīn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jín", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jǐn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jìn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "jy") then
			yield(Candidate("pinyin", seg.start, seg._end, "jīng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jíng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jǐng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jìng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "js") then
			yield(Candidate("pinyin", seg.start, seg._end, "jiōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jióng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "jq") then
			yield(Candidate("pinyin", seg.start, seg._end, "jiū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jiù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ju") then
			yield(Candidate("pinyin", seg.start, seg._end, "jū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "jr") then
			yield(Candidate("pinyin", seg.start, seg._end, "juān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "juán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "juǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "juàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "jt") then
			yield(Candidate("pinyin", seg.start, seg._end, "juē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jué", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "juě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "juè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "jp") then
			yield(Candidate("pinyin", seg.start, seg._end, "jūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "jùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ka") then
			yield(Candidate("pinyin", seg.start, seg._end, "kā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ká", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kl") then
			yield(Candidate("pinyin", seg.start, seg._end, "kāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kj") then
			yield(Candidate("pinyin", seg.start, seg._end, "kān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kh") then
			yield(Candidate("pinyin", seg.start, seg._end, "kāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "káng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kk") then
			yield(Candidate("pinyin", seg.start, seg._end, "kāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "káo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ke") then
			yield(Candidate("pinyin", seg.start, seg._end, "kē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ké", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kz") then
			yield(Candidate("pinyin", seg.start, seg._end, "kēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kéi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kěi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kf") then
			yield(Candidate("pinyin", seg.start, seg._end, "kēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kg") then
			yield(Candidate("pinyin", seg.start, seg._end, "kēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kéng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ks") then
			yield(Candidate("pinyin", seg.start, seg._end, "kōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kb") then
			yield(Candidate("pinyin", seg.start, seg._end, "kōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ku") then
			yield(Candidate("pinyin", seg.start, seg._end, "kū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kw") then
			yield(Candidate("pinyin", seg.start, seg._end, "kuā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ky") then
			yield(Candidate("pinyin", seg.start, seg._end, "kuāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kr") then
			yield(Candidate("pinyin", seg.start, seg._end, "kuān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kd") then
			yield(Candidate("pinyin", seg.start, seg._end, "kuāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kv") then
			yield(Candidate("pinyin", seg.start, seg._end, "kuī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "kp") then
			yield(Candidate("pinyin", seg.start, seg._end, "kūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ko") then
			yield(Candidate("pinyin", seg.start, seg._end, "kuō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "kuò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "la") then
			yield(Candidate("pinyin", seg.start, seg._end, "lā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "là", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ll") then
			yield(Candidate("pinyin", seg.start, seg._end, "lāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lj") then
			yield(Candidate("pinyin", seg.start, seg._end, "lān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "làn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lh") then
			yield(Candidate("pinyin", seg.start, seg._end, "lāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "láng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "làng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lk") then
			yield(Candidate("pinyin", seg.start, seg._end, "lāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "láo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "le") then
			yield(Candidate("pinyin", seg.start, seg._end, "lē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lz") then
			yield(Candidate("pinyin", seg.start, seg._end, "lēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "léi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lěi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lg") then
			yield(Candidate("pinyin", seg.start, seg._end, "lēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "léng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "li") then
			yield(Candidate("pinyin", seg.start, seg._end, "lī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lw") then
			yield(Candidate("pinyin", seg.start, seg._end, "liā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lià", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lm") then
			yield(Candidate("pinyin", seg.start, seg._end, "liān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lián", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ld") then
			yield(Candidate("pinyin", seg.start, seg._end, "liāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lc") then
			yield(Candidate("pinyin", seg.start, seg._end, "liāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lx") then
			yield(Candidate("pinyin", seg.start, seg._end, "liē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lié", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ln") then
			yield(Candidate("pinyin", seg.start, seg._end, "līn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lín", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǐn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lìn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ly") then
			yield(Candidate("pinyin", seg.start, seg._end, "līng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "líng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǐng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lìng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lq") then
			yield(Candidate("pinyin", seg.start, seg._end, "liū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "liù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lo") then
			yield(Candidate("pinyin", seg.start, seg._end, "lō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ló", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ls") then
			yield(Candidate("pinyin", seg.start, seg._end, "lōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lb") then
			yield(Candidate("pinyin", seg.start, seg._end, "lōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lu") then
			yield(Candidate("pinyin", seg.start, seg._end, "lū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lv") then
			yield(Candidate("pinyin", seg.start, seg._end, "lǖ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǘ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǚ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǜ", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lr") then
			yield(Candidate("pinyin", seg.start, seg._end, "luān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "luán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "luǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "luàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lt") then
			yield(Candidate("pinyin", seg.start, seg._end, "lüē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lüé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lüě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lüè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lp") then
			yield(Candidate("pinyin", seg.start, seg._end, "lūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "lùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "lo") then
			yield(Candidate("pinyin", seg.start, seg._end, "luō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "luó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "luǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "luò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ma") then
			yield(Candidate("pinyin", seg.start, seg._end, "mā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "má", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ml") then
			yield(Candidate("pinyin", seg.start, seg._end, "māi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mj") then
			yield(Candidate("pinyin", seg.start, seg._end, "mān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "màn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mh") then
			yield(Candidate("pinyin", seg.start, seg._end, "māng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "máng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "màng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mk") then
			yield(Candidate("pinyin", seg.start, seg._end, "māo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "máo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "me") then
			yield(Candidate("pinyin", seg.start, seg._end, "mē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mz") then
			yield(Candidate("pinyin", seg.start, seg._end, "mēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "méi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "měi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mf") then
			yield(Candidate("pinyin", seg.start, seg._end, "mēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "měn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mg") then
			yield(Candidate("pinyin", seg.start, seg._end, "mēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "méng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "měng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mi") then
			yield(Candidate("pinyin", seg.start, seg._end, "mī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mm") then
			yield(Candidate("pinyin", seg.start, seg._end, "miān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mián", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "miǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "miàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mc") then
			yield(Candidate("pinyin", seg.start, seg._end, "miāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "miáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "miǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "miào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mx") then
			yield(Candidate("pinyin", seg.start, seg._end, "miē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mié", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "miě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "miè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mn") then
			yield(Candidate("pinyin", seg.start, seg._end, "mīn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mín", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mǐn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mìn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "my") then
			yield(Candidate("pinyin", seg.start, seg._end, "mīng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "míng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mǐng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mìng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mq") then
			yield(Candidate("pinyin", seg.start, seg._end, "miū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "miú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "miǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "miù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mo") then
			yield(Candidate("pinyin", seg.start, seg._end, "mō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mb") then
			yield(Candidate("pinyin", seg.start, seg._end, "mōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "móu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "mu") then
			yield(Candidate("pinyin", seg.start, seg._end, "mū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "mù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "na") then
			yield(Candidate("pinyin", seg.start, seg._end, "nā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ná", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nl") then
			yield(Candidate("pinyin", seg.start, seg._end, "nāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nj") then
			yield(Candidate("pinyin", seg.start, seg._end, "nān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nh") then
			yield(Candidate("pinyin", seg.start, seg._end, "nāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "náng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nk") then
			yield(Candidate("pinyin", seg.start, seg._end, "nāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "náo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ne") then
			yield(Candidate("pinyin", seg.start, seg._end, "nē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "né", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ně", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nz") then
			yield(Candidate("pinyin", seg.start, seg._end, "nēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "néi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "něi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nf") then
			yield(Candidate("pinyin", seg.start, seg._end, "nēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "něn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ng") then
			yield(Candidate("pinyin", seg.start, seg._end, "nēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "néng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "něng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ni") then
			yield(Candidate("pinyin", seg.start, seg._end, "nī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ní", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nm") then
			yield(Candidate("pinyin", seg.start, seg._end, "niān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nián", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nd") then
			yield(Candidate("pinyin", seg.start, seg._end, "niāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nc") then
			yield(Candidate("pinyin", seg.start, seg._end, "niāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nx") then
			yield(Candidate("pinyin", seg.start, seg._end, "niē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nié", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nn") then
			yield(Candidate("pinyin", seg.start, seg._end, "nīn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nín", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǐn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nìn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ny") then
			yield(Candidate("pinyin", seg.start, seg._end, "nīng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "níng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǐng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nìng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nq") then
			yield(Candidate("pinyin", seg.start, seg._end, "niū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "niù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ns") then
			yield(Candidate("pinyin", seg.start, seg._end, "nōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nb") then
			yield(Candidate("pinyin", seg.start, seg._end, "nōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nu") then
			yield(Candidate("pinyin", seg.start, seg._end, "nū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nv") then
			yield(Candidate("pinyin", seg.start, seg._end, "nǖ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǘ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǚ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nǜ", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nr") then
			yield(Candidate("pinyin", seg.start, seg._end, "nuān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nuán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nuǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nuàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "nt") then
			yield(Candidate("pinyin", seg.start, seg._end, "nüē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nüé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nüě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nüè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "no") then
			yield(Candidate("pinyin", seg.start, seg._end, "nuō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nuó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nuǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "nuò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "oo") then
			yield(Candidate("pinyin", seg.start, seg._end, "ō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ou") then
			yield(Candidate("pinyin", seg.start, seg._end, "ōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "óu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "òu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pa") then
			yield(Candidate("pinyin", seg.start, seg._end, "pā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pl") then
			yield(Candidate("pinyin", seg.start, seg._end, "pāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pj") then
			yield(Candidate("pinyin", seg.start, seg._end, "pān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ph") then
			yield(Candidate("pinyin", seg.start, seg._end, "pāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "páng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pk") then
			yield(Candidate("pinyin", seg.start, seg._end, "pāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "páo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pz") then
			yield(Candidate("pinyin", seg.start, seg._end, "pēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "péi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pěi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pf") then
			yield(Candidate("pinyin", seg.start, seg._end, "pēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pg") then
			yield(Candidate("pinyin", seg.start, seg._end, "pēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "péng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pi") then
			yield(Candidate("pinyin", seg.start, seg._end, "pī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pm") then
			yield(Candidate("pinyin", seg.start, seg._end, "piān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pián", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "piǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "piàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pc") then
			yield(Candidate("pinyin", seg.start, seg._end, "piāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "piáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "piǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "piào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "px") then
			yield(Candidate("pinyin", seg.start, seg._end, "piē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pié", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "piě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "piè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pn") then
			yield(Candidate("pinyin", seg.start, seg._end, "pīn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pín", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pǐn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pìn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "py") then
			yield(Candidate("pinyin", seg.start, seg._end, "pīng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "píng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pǐng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pìng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "po") then
			yield(Candidate("pinyin", seg.start, seg._end, "pō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pb") then
			yield(Candidate("pinyin", seg.start, seg._end, "pōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "póu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "pu") then
			yield(Candidate("pinyin", seg.start, seg._end, "pū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "pù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qi") then
			yield(Candidate("pinyin", seg.start, seg._end, "qī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qw") then
			yield(Candidate("pinyin", seg.start, seg._end, "qiā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qià", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qm") then
			yield(Candidate("pinyin", seg.start, seg._end, "qiān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qián", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qd") then
			yield(Candidate("pinyin", seg.start, seg._end, "qiāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qc") then
			yield(Candidate("pinyin", seg.start, seg._end, "qiāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qx") then
			yield(Candidate("pinyin", seg.start, seg._end, "qiē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qié", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qn") then
			yield(Candidate("pinyin", seg.start, seg._end, "qīn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qín", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qǐn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qìn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qy") then
			yield(Candidate("pinyin", seg.start, seg._end, "qīng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qíng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qǐng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qìng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qs") then
			yield(Candidate("pinyin", seg.start, seg._end, "qiōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qióng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qq") then
			yield(Candidate("pinyin", seg.start, seg._end, "qiū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qiù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qu") then
			yield(Candidate("pinyin", seg.start, seg._end, "qū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qr") then
			yield(Candidate("pinyin", seg.start, seg._end, "quān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "quán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "quǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "quàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qt") then
			yield(Candidate("pinyin", seg.start, seg._end, "quē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qué", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "quě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "què", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "qp") then
			yield(Candidate("pinyin", seg.start, seg._end, "qūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "qùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "rj") then
			yield(Candidate("pinyin", seg.start, seg._end, "rān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ràn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "rh") then
			yield(Candidate("pinyin", seg.start, seg._end, "rāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ráng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ràng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "rk") then
			yield(Candidate("pinyin", seg.start, seg._end, "rāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ráo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "re") then
			yield(Candidate("pinyin", seg.start, seg._end, "rē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ré", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "rf") then
			yield(Candidate("pinyin", seg.start, seg._end, "rēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "rg") then
			yield(Candidate("pinyin", seg.start, seg._end, "rēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "réng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ri") then
			yield(Candidate("pinyin", seg.start, seg._end, "rī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "rs") then
			yield(Candidate("pinyin", seg.start, seg._end, "rōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "róng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ròng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "rb") then
			yield(Candidate("pinyin", seg.start, seg._end, "rōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "róu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ròu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ru") then
			yield(Candidate("pinyin", seg.start, seg._end, "rū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "rw") then
			yield(Candidate("pinyin", seg.start, seg._end, "ruā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "rr") then
			yield(Candidate("pinyin", seg.start, seg._end, "ruān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "rv") then
			yield(Candidate("pinyin", seg.start, seg._end, "ruī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "rp") then
			yield(Candidate("pinyin", seg.start, seg._end, "rūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "rùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ro") then
			yield(Candidate("pinyin", seg.start, seg._end, "ruō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "ruò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "sa") then
			yield(Candidate("pinyin", seg.start, seg._end, "sā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "sl") then
			yield(Candidate("pinyin", seg.start, seg._end, "sāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "sj") then
			yield(Candidate("pinyin", seg.start, seg._end, "sān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "sh") then
			yield(Candidate("pinyin", seg.start, seg._end, "sāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "sk") then
			yield(Candidate("pinyin", seg.start, seg._end, "sāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "se") then
			yield(Candidate("pinyin", seg.start, seg._end, "sē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "sf") then
			yield(Candidate("pinyin", seg.start, seg._end, "sēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "sg") then
			yield(Candidate("pinyin", seg.start, seg._end, "sēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "séng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "si") then
			yield(Candidate("pinyin", seg.start, seg._end, "sī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ss") then
			yield(Candidate("pinyin", seg.start, seg._end, "sōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "sb") then
			yield(Candidate("pinyin", seg.start, seg._end, "sōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "su") then
			yield(Candidate("pinyin", seg.start, seg._end, "sū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "sr") then
			yield(Candidate("pinyin", seg.start, seg._end, "suān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "suán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "suǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "suàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "sv") then
			yield(Candidate("pinyin", seg.start, seg._end, "suī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "suí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "suǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "suì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "sp") then
			yield(Candidate("pinyin", seg.start, seg._end, "sūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "so") then
			yield(Candidate("pinyin", seg.start, seg._end, "suō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "suó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "suǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "suò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ua") then
			yield(Candidate("pinyin", seg.start, seg._end, "shā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ul") then
			yield(Candidate("pinyin", seg.start, seg._end, "shāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "uj") then
			yield(Candidate("pinyin", seg.start, seg._end, "shān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "uh") then
			yield(Candidate("pinyin", seg.start, seg._end, "shāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sháng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "uk") then
			yield(Candidate("pinyin", seg.start, seg._end, "shāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "sháo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ue") then
			yield(Candidate("pinyin", seg.start, seg._end, "shē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "uz") then
			yield(Candidate("pinyin", seg.start, seg._end, "shēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shéi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shěi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "uf") then
			yield(Candidate("pinyin", seg.start, seg._end, "shēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ug") then
			yield(Candidate("pinyin", seg.start, seg._end, "shēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shéng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ui") then
			yield(Candidate("pinyin", seg.start, seg._end, "shī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ub") then
			yield(Candidate("pinyin", seg.start, seg._end, "shōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "uu") then
			yield(Candidate("pinyin", seg.start, seg._end, "shū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "uw") then
			yield(Candidate("pinyin", seg.start, seg._end, "shuā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "uy") then
			yield(Candidate("pinyin", seg.start, seg._end, "shuāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ur") then
			yield(Candidate("pinyin", seg.start, seg._end, "shuān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ud") then
			yield(Candidate("pinyin", seg.start, seg._end, "shuāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "uv") then
			yield(Candidate("pinyin", seg.start, seg._end, "shuī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "up") then
			yield(Candidate("pinyin", seg.start, seg._end, "shūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "uo") then
			yield(Candidate("pinyin", seg.start, seg._end, "shuō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "shuò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ta") then
			yield(Candidate("pinyin", seg.start, seg._end, "tā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tl") then
			yield(Candidate("pinyin", seg.start, seg._end, "tāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tj") then
			yield(Candidate("pinyin", seg.start, seg._end, "tān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "th") then
			yield(Candidate("pinyin", seg.start, seg._end, "tāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "táng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tk") then
			yield(Candidate("pinyin", seg.start, seg._end, "tāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "táo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "te") then
			yield(Candidate("pinyin", seg.start, seg._end, "tē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "té", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tg") then
			yield(Candidate("pinyin", seg.start, seg._end, "tēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "téng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "těng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ti") then
			yield(Candidate("pinyin", seg.start, seg._end, "tī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tm") then
			yield(Candidate("pinyin", seg.start, seg._end, "tiān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tián", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tiǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tiàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tc") then
			yield(Candidate("pinyin", seg.start, seg._end, "tiāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tiáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tiǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tiào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tx") then
			yield(Candidate("pinyin", seg.start, seg._end, "tiē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tié", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tiě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tiè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ty") then
			yield(Candidate("pinyin", seg.start, seg._end, "tīng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tíng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tǐng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tìng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ts") then
			yield(Candidate("pinyin", seg.start, seg._end, "tōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tb") then
			yield(Candidate("pinyin", seg.start, seg._end, "tōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tu") then
			yield(Candidate("pinyin", seg.start, seg._end, "tū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tr") then
			yield(Candidate("pinyin", seg.start, seg._end, "tuān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tuán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tuǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tuàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tv") then
			yield(Candidate("pinyin", seg.start, seg._end, "tuī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tuí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tuǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tuì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "tp") then
			yield(Candidate("pinyin", seg.start, seg._end, "tūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "to") then
			yield(Candidate("pinyin", seg.start, seg._end, "tuō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tuó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tuǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "tuò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "wa") then
			yield(Candidate("pinyin", seg.start, seg._end, "wā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "wl") then
			yield(Candidate("pinyin", seg.start, seg._end, "wāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "wj") then
			yield(Candidate("pinyin", seg.start, seg._end, "wān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "wh") then
			yield(Candidate("pinyin", seg.start, seg._end, "wāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "wz") then
			yield(Candidate("pinyin", seg.start, seg._end, "wēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wéi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wěi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "wf") then
			yield(Candidate("pinyin", seg.start, seg._end, "wēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "wg") then
			yield(Candidate("pinyin", seg.start, seg._end, "wēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wéng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "wo") then
			yield(Candidate("pinyin", seg.start, seg._end, "wō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "wu") then
			yield(Candidate("pinyin", seg.start, seg._end, "wū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "wù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xi") then
			yield(Candidate("pinyin", seg.start, seg._end, "xī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xw") then
			yield(Candidate("pinyin", seg.start, seg._end, "xiā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xià", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xm") then
			yield(Candidate("pinyin", seg.start, seg._end, "xiān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xián", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xd") then
			yield(Candidate("pinyin", seg.start, seg._end, "xiāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xc") then
			yield(Candidate("pinyin", seg.start, seg._end, "xiāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xx") then
			yield(Candidate("pinyin", seg.start, seg._end, "xiē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xié", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xn") then
			yield(Candidate("pinyin", seg.start, seg._end, "xīn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xín", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xǐn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xìn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xy") then
			yield(Candidate("pinyin", seg.start, seg._end, "xīng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xíng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xǐng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xìng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xs") then
			yield(Candidate("pinyin", seg.start, seg._end, "xiōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xióng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xq") then
			yield(Candidate("pinyin", seg.start, seg._end, "xiū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xiù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xu") then
			yield(Candidate("pinyin", seg.start, seg._end, "xū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xr") then
			yield(Candidate("pinyin", seg.start, seg._end, "xuān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xuán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xuǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xuàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xt") then
			yield(Candidate("pinyin", seg.start, seg._end, "xuē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xué", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xuě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xuè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "xp") then
			yield(Candidate("pinyin", seg.start, seg._end, "xūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "xùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ya") then
			yield(Candidate("pinyin", seg.start, seg._end, "yā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yj") then
			yield(Candidate("pinyin", seg.start, seg._end, "yān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yh") then
			yield(Candidate("pinyin", seg.start, seg._end, "yāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yk") then
			yield(Candidate("pinyin", seg.start, seg._end, "yāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yáo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ye") then
			yield(Candidate("pinyin", seg.start, seg._end, "yē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yi") then
			yield(Candidate("pinyin", seg.start, seg._end, "yī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yn") then
			yield(Candidate("pinyin", seg.start, seg._end, "yīn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yín", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǐn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yìn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yy") then
			yield(Candidate("pinyin", seg.start, seg._end, "yīng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yíng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǐng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yìng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yo") then
			yield(Candidate("pinyin", seg.start, seg._end, "yō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ys") then
			yield(Candidate("pinyin", seg.start, seg._end, "yōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yb") then
			yield(Candidate("pinyin", seg.start, seg._end, "yōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yu") then
			yield(Candidate("pinyin", seg.start, seg._end, "yū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yr") then
			yield(Candidate("pinyin", seg.start, seg._end, "yuān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yuán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yuǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yuàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yt") then
			yield(Candidate("pinyin", seg.start, seg._end, "yuē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yué", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yuě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yuè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "yp") then
			yield(Candidate("pinyin", seg.start, seg._end, "yūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "yùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "za") then
			yield(Candidate("pinyin", seg.start, seg._end, "zā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zl") then
			yield(Candidate("pinyin", seg.start, seg._end, "zāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zj") then
			yield(Candidate("pinyin", seg.start, seg._end, "zān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zh") then
			yield(Candidate("pinyin", seg.start, seg._end, "zāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "záng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zk") then
			yield(Candidate("pinyin", seg.start, seg._end, "zāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "záo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ze") then
			yield(Candidate("pinyin", seg.start, seg._end, "zē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zz") then
			yield(Candidate("pinyin", seg.start, seg._end, "zēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zéi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zěi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zf") then
			yield(Candidate("pinyin", seg.start, seg._end, "zēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zg") then
			yield(Candidate("pinyin", seg.start, seg._end, "zēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zéng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zi") then
			yield(Candidate("pinyin", seg.start, seg._end, "zī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zs") then
			yield(Candidate("pinyin", seg.start, seg._end, "zōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zb") then
			yield(Candidate("pinyin", seg.start, seg._end, "zōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zu") then
			yield(Candidate("pinyin", seg.start, seg._end, "zū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zr") then
			yield(Candidate("pinyin", seg.start, seg._end, "zuān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zuán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zuǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zuàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zv") then
			yield(Candidate("pinyin", seg.start, seg._end, "zuī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zuí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zuǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zuì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zp") then
			yield(Candidate("pinyin", seg.start, seg._end, "zūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "zo") then
			yield(Candidate("pinyin", seg.start, seg._end, "zuō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zuó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zuǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zuò", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "va") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vl") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vj") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vh") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zháng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vk") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhāo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zháo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhǎo", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhào", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "ve") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhē", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhé", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhě", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhè", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vz") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhēi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhéi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhěi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhèi", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vf") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhēn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhén", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhěn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhèn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vg") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhēng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhéng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhěng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhèng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vi") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vs") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhōng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhóng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhǒng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhòng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vb") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhōu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhóu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhǒu", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhòu", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vu") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhū", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhú", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhǔ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhù", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vw") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhuā", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuá", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuǎ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuà", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vy") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhuāi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuái", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuǎi", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuài", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vr") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhuān", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuán", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuǎn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuàn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vd") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhuāng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuáng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuǎng", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuàng", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vv") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhuī", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuí", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuǐ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuì", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vp") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhūn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhún", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhǔn", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhùn", "〔拼音〕"))
		elseif (input:sub(#input - 1,#input) == "vo") then
			yield(Candidate("pinyin", seg.start, seg._end, "zhuō", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuó", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuǒ", "〔拼音〕"))
			yield(Candidate("pinyin", seg.start, seg._end, "zhuò", "〔拼音〕"))
		end
	end
end
return translator