// 弹出层
const alertDom = document.getElementById("alert");
// 复选框
const showCodeDom = document.getElementById("showCode");
const showDescDom = document.getElementById("showDesc");
const showKeyboardDom = document.getElementById("showKeyboard");
const showAuxiliaryDom = document.getElementById("showAuxiliary");
// 单选框
const auxiliaryDom = document.getElementsByName("auxiliary");
// 文本框
const txtDom = document.getElementById("txt");
// 显示区
const afterDom = document.getElementById("after");
const currentDom = document.getElementById("current");
const beforeDom = document.getElementById("before");
const itemDom = document.getElementsByClassName("item");
// 键位
const letterDom = document.getElementsByClassName("letter");

// 辅助编码选项值
let auxiliaryValue = "1";

// 当前字
let zi = "";
// 文本索引
let textIndex = 0;
// 编码索引
let codeIndex = 0;
// 按键数组
let letterArray = [];
// 按键集合
let keySet = new Set();

// 文本数组
let textArray = [];
let arrayIndex = 0;


/**
 * 打开设置
 */
function openSetting() {
    alertDom.style.display = 'flex';
    txtDom.focus();
}

/**
 * 关闭设置
 */
function closeSetting() {
    alertDom.style.display = 'none';
}

/**
 * 执行
 * @param event 事件
 */
function execute(event) {
    //阻止默认事件
    event.preventDefault();
    //关闭弹窗
    closeSetting();
    //计算文本总长度
    splitText();
    // 开始
    newStart();
}

function newStart() {
    //初始化
    init();
    // 下一个文字
    nextText();
}

/**
 * 分割文本
 */
function splitText() {
    // 重置文本数组
    textArray = [];
    arrayIndex = 0;
    // 获取文本
    const text = txtDom.value;
    // 写入文本数组
    putTextArray(text);
}

/**
 * 写入文本数组
 * @param text 文本
 */
function putTextArray(text) {
    if (text === "") {
        return;
    }
    // 统计字符个数
    const {fullWidthCount, halfWidthCount} = countCharacters(text);
    // 总长度
    const sum = fullWidthCount * 2 + halfWidthCount;
    // 最大长度 70 个半角字符
    if (sum <= 70) {
        textArray.push(text);
    } else {
        const {subText, length} = cropText(text, 70);
        textArray.push(subText);
        putTextArray(text.substring(length));
    }
}

/**
 * 切割文本
 * @param text 文本
 * @param length 长度
 * @return {{length, subText: string}}
 */
function cropText(text, length) {
    const subText = text.substring(0, length);
    // 统计字符个数
    const {fullWidthCount, halfWidthCount} = countCharacters(subText);
    // 总长度
    const sum = fullWidthCount * 2 + halfWidthCount;
    if (sum <= 70) {
        return {subText, length};
    } else {
        return cropText(text, length - 1);
    }
}

/**
 * 辅助编码改变
 */
function showAuxiliaryChange() {
    if (showAuxiliaryDom.checked) {
        for (let i = 0; i < auxiliaryDom.length; i++) {
            auxiliaryDom[i].disabled = false;
        }
    } else {
        for (let i = 0; i < auxiliaryDom.length; i++) {
            auxiliaryDom[i].disabled = true;
        }
    }
}

/**
 * 辅助编码值改变
 * @param dom DOM
 */
function auxiliaryValueChange(dom) {
    auxiliaryValue = dom.value;
}

/**
 * 初始化
 */
function init() {
    // 清空输入框显示
    afterDom.innerText = "";
    currentDom.innerText = "";
    beforeDom.innerText = "";
    // 重置显示区
    resetShow();
    // 重置键位
    restLetter();
    // 重置索引
    textIndex = 0;
    codeIndex = 0;
}

/**
 * 重置显示区
 */
function resetShow() {
    for (let i = 0; i < itemDom.length; i++) {
        itemDom[i].innerText = "";
    }
}

/**
 * 重置键位显示
 */
function restLetter() {
    letterArray = [];
    keySet.clear();
    for (let i = 0; i < letterDom.length; i++) {
        letterDom[i].className = "letter";
    }
}

/**
 * 下一个文字
 */
function nextText() {
    // 重置编码索引
    codeIndex = 0;
    // 获取当前文本
    let text = textArray[arrayIndex];
    if (text === undefined) {
        return;
    }
    text = text.replace(/\s/g, "␣");

    // 截取字符串
    if (textIndex < text.length) {
        // 获取当前字
        zi = text.substring(textIndex, textIndex + 1);
        // 更新显示
        updateShow();
        // 更新输入框
        updateInput(text);
        // 字索引增加
        textIndex++;
    } else if (textIndex === text.length) {
        // 显示下一段
        arrayIndex++;
        newStart();
    }
}

/**
 * 下一个编码
 */
function nextCode() {
    if (showAuxiliaryDom.checked) {
        let maxIndex; // 默认值
        switch (auxiliaryValue) {
            case "1":
                maxIndex = 1;
                break;
            case "2":
                maxIndex = 2;
                break;
            default:
                maxIndex = 3;
                break;
        }

        if (codeIndex < maxIndex) {
            codeIndex++;
            updateShow();
        } else {
            nextText();
        }
    } else {
        nextText();
    }
}

/**
 * 更新输入框
 * @param text 文本
 */
function updateInput(text) {
    // 统计字符个数
    const {fullWidthCount, halfWidthCount} = countCharacters(text);
    // 截取字符串
    let after = text.substring(0, textIndex);
    let before = text.substring(textIndex + 1);
    // 总长度
    const sum = fullWidthCount * 2 + halfWidthCount;
    // 最大长度 70 个半角字符
    if (sum <= 70) {
        // 在范围内不做处理
        afterDom.innerText = after;
        currentDom.innerText = zi;
        beforeDom.innerText = before;
    } else {

    }


}


/**
 * 更新显示
 */
function updateShow() {
    for (let i = 0; i < itemDom.length; i++) {
        itemDom[i].innerText = "";
    }
    if (zi !== "") {
        itemDom[0].innerText = zi;
        // 查询字信息
        const info = data[zi];
        // 显示字信息
        if (info) {
            // 音码编码
            let code = info.zrm[0];
            // 获取最终编码
            code = getCode(code, info.xing);
            // 获取显示信息
            let {
                codeHtml,
                left,
                right,
                desc
            } = getShowInfo(code, info);

            itemDom[1].innerHTML = showCodeDom.checked ? codeHtml : "??";
            itemDom[2].innerText = showDescDom.checked ? desc : "??";
            itemDom[3].innerText = info.ji;
            // 显示键位
            showLetter(left, right);
        } else if (fuMap[zi]) {
            if (codeIndex > 0) {
                nextText();
            } else {
                const fu = fuMap[zi];
                const indexOf = fu.indexOf("_");
                let leftKey = "";
                let rightKey = "";
                if (indexOf === 0) {
                    // 右键位
                    rightKey = fu.replace("_", "");
                    itemDom[1].innerHTML = `<span>_</span><span class="right">${rightKey}</span>`;
                } else if (indexOf === 1) {
                    // 左键位
                    leftKey = fu.replace("_", "");
                    itemDom[1].innerHTML = `<span class="left">${leftKey}</span><span>_</span>`;
                }
                // 显示键位
                showLetter(leftKey, rightKey);
                itemDom[2].innerText = "??";
                itemDom[3].innerText = "??";
            }
        } else {
            if (codeIndex > 0) {
                nextText();
            } else {
                itemDom[1].innerText = "??";
                itemDom[2].innerText = "??";
                itemDom[3].innerText = "??";
                // 重置键位显示
                restLetter();
                letterArray = ["␣"]
            }
        }
    } else {
        // 重置键位显示
        restLetter();
    }
}

/**
 * 获取显示信息
 * @param code 最终编码
 * @param info 文字信息
 * @return {{left: string, codeHtml: string, right: string, desc: string}}
 */
function getShowInfo(code, info) {
    // 显示编码
    let codeHtml = "";
    // 左码元
    let left = "";
    // 右码元
    let right = "";
    // 描述
    let desc = "";
    // 显示编码
    switch (codeIndex) {
        case 0:
            left = code.substring(0, 1);
            right = code.substring(1, 2);
            desc = info.pinyin[0];
            codeHtml = `
					<span class="left">${left}</span>
					<span class="right">${right}</span>
					<span>${code.substring(2)}</span>
					`;
            break;
        case 1:
            left = code.substring(3, 4);
            right = code.substring(4, 5);
            desc = info.hu;
            codeHtml = `
						<span>${code.substring(0, 3)}</span>
						<span class="left">${left}</span>
						<span class="right">${right}</span>
						<span>${code.substring(5)}</span>
						`;
            break;
        case 2:
            left = code.substring(5, 6);
            right = code.substring(6, 7);
            desc = info.hu;
            codeHtml = `
						<span>${code.substring(0, 5)}</span>
						<span class="left">${left}</span>
						<span class="right">${right}</span>
						<span>${code.substring(7)}</span>
						`;
            break
        case 3:
            left = code.substring(7, 8);
            right = code.substring(8, 9);
            desc = info.bi;
            codeHtml = `
					<span>${code.substring(0, 7)}</span>
					<span class="left">${left}</span>
					<span class="right">${right}</span>
					<span>${code.substring(9)}</span>
					`;
            break
    }
    // 返回信息
    return {
        codeHtml,
        left,
        right,
        desc
    }
}

/**
 * 获取编码
 * @param code 初始编码
 * @param xing 形码编码
 * @return {*} 最终编码
 */
function getCode(code, xing) {
    // 显示辅助编码
    if (showAuxiliaryDom.checked) {
        // 获取单选框的值
        let res;
        switch (auxiliaryValue) {
            case "1":
                res = xing.substring(0, 2);
                break;
            case "2":
                res = xing.substring(0, 4);
                break;
            default:

                res = xing;
        }
        code += "«" + res + "»";
    }
    return code;
}

/**
 * 显示键位
 * @param left 左码元
 * @param right 右码元
 */
function showLetter(left, right) {
    // 重置键位显示
    restLetter();
    // 获取键位
    const leftKeyArray = keyMap[left];
    const rightKeyArray = keyMap[right];
    // 判断是否显示键位
    if (showKeyboardDom.checked) {
        // 显示键位左
        if (leftKeyArray) {
            leftKeyArray[0].forEach(item => {
                letterArray.push(item);
                document.getElementById(item).classList.add("left");
            })
        }
        // 显示键位右
        if (rightKeyArray) {
            rightKeyArray[1].forEach(item => {
                letterArray.push(item);
                document.getElementById(item).classList.add("right");
            })
        }
    } else {
        // 键位左
        if (leftKeyArray) {
            leftKeyArray[0].forEach(item => {
                letterArray.push(item);
            })
        }
        // 键位右
        if (rightKeyArray) {
            rightKeyArray[1].forEach(item => {
                letterArray.push(item);
            })
        }
    }

}

/**
 * 监听键盘按下事件
 * @param e 事件对象
 */
document.onkeydown = function (e) {
    if (alertDom.style.display === "none") {
        // 获取键位
        let key = e.key;
        if (key === " ") {
            key = "␣";
        }
        // 添加键位
        keySet.add(key);
        // 显示按键
        const keyDom = document.getElementById(key);
        if (keyDom) {
            keyDom.classList.add("active");
        }
    }
};

/**
 * 监听键盘弹起事件
 * @param e 事件对象
 */
document.onkeyup = function (e) {
    if (alertDom.style.display === "none") {
        // 获取键位
        let key = e.key;
        if (key === " ") {
            key = "␣";
        }
        // 获取所有键位
        let flag = false;
        if (letterArray.length > 0) {
            if (keySet.size === letterArray.length) {
                let allFlag = true;
                letterArray.forEach(item => {
                    if (!keySet.has(item)) {
                        allFlag = false;
                    }
                })
                flag = allFlag;
            }
        }

        // 判断是否全部按下
        if (flag) {
            // 下一个编码
            nextCode();
        }
        // 删除键位
        keySet.delete(key);
        // 隐藏按键
        const keyDom = document.getElementById(key);
        if (keyDom) {
            keyDom.classList.remove("active");
        }
    }
}

/**
 * 统计字符个数
 * @param text 文本
 * @return {{halfWidthCount: (*|number), fullWidthCount: (*|number)}}
 */
function countCharacters(text) {
    // 全角字符的范围
    const fullWidthRegex = /[^\x00-\x7F]/g;
    // 半角字符的范围
    const halfWidthRegex = /[\x00-\x7F]/g;

    // 匹配全角字符并计算个数
    const fullWidthMatches = text.match(fullWidthRegex);
    const fullWidthCount = fullWidthMatches ? fullWidthMatches.length : 0;

    // 匹配半角字符并计算个数
    const halfWidthMatches = text.match(halfWidthRegex);
    const halfWidthCount = halfWidthMatches ? halfWidthMatches.length : 0;

    return {
        fullWidthCount,
        halfWidthCount
    };
}
