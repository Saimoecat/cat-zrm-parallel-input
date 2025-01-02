// 获取Dom元素
const tableLeftDom = document.getElementById("tableLeft");
const tableRightDom = document.getElementById("tableRight");

/**
 * 初始化表格
 */
function initTable() {
    // 清空表格
    tableLeftDom.innerHTML = "";
    tableRightDom.innerHTML = "";
    // 显示表格
    showTable();
}

/**
 * 显示表格
 */
function showTable() {
    // 获取表格头
    const trLeft = getTableHeader(4);
    const trRight = getTableHeader(4);
    // 设置表格头
    tableLeftDom.appendChild(trLeft);
    tableRightDom.appendChild(trRight);

    appendTableBody(["a", "A", "b", "B"]);
    appendTableBody(["c", "C", "d", "D"]);
    appendTableBody(["e", "E", "f", "F"]);
    appendTableBody(["g", "G", "h", "H"]);
    appendTableBody(["i", "I", "j", "J"]);
    appendTableBody(["k", "K", "l", "L"]);
    appendTableBody(["m", "M", "n", "N"]);
    appendTableBody(["o", "O", "p", "P"]);
    appendTableBody(["q", "Q", "r", "R"]);
    appendTableBody(["s", "S", "t", "T"]);
    appendTableBody(["u", "U", "v", "V"]);
    appendTableBody(["w", "W", "x", "X"]);
    appendTableBody(["y", "Y", "z", "Z"]);
    appendTableBody(["1", "2", ",", "."]);
    appendTableBody(["3", "4", "!", "?"]);
    appendTableBody(["5", "6", ":", ";"]);
    appendTableBody(["7", "8", "/", "\\"]);
    appendTableBody(["9", "0", "@", "#"]);
    appendTableBody(["(", ")", "[", "]"]);
    appendTableBody(["<", ">", "{", "}"]);
    appendTableBody(["+", "-", "*", "%"]);
    appendTableBody(["`", "'", "&", "|"]);
    appendTableBody(["~", "=", "^", "$"]);
}

/**
 * 添加表格内容
 * @param codes 键位
 */
function appendTableBody(codes) {
    const leftTr = document.createElement("tr");
    const rightTr = document.createElement("tr");
    // 循环添加键位
    codes.forEach(code => {
        if (code) {
            const {leftCode, leftTd, rightCode, rightTd} = getTableBody(code);
            // 左键位
            leftTr.appendChild(leftCode);
            leftTr.appendChild(leftTd);
            // 右键位
            rightTr.appendChild(rightCode);
            rightTr.appendChild(rightTd);
        }
    });
    // 添加进表格
    tableLeftDom.appendChild(leftTr);
    tableRightDom.appendChild(rightTr);
}


/**
 * 获取表格头
 * @param columnCount 列数
 * @return {HTMLTableRowElement}
 */
function getTableHeader(columnCount) {
    const tr = document.createElement("tr");
    for (let i = 0; i < columnCount; i++) {
        // 编码
        const code = document.createElement("th");
        code.style.width = "50px";
        code.innerText = "编码";
        tr.appendChild(code);
        // 键位
        const key = document.createElement("th");
        key.style.width = "100px";
        key.innerText = "键位";
        tr.appendChild(key);
    }
    return tr;
}

/**
 * 获取表格内容
 * @param code 编码
 * @param side
 * @param showKeyLetterCallback
 * @return {{leftCode: HTMLTableCellElement, rightTd: HTMLTableCellElement, rightCode: HTMLTableCellElement, leftTd: HTMLTableCellElement}}
 */
function createKeyCodeElement(code, side, showKeyLetterCallback) {
    const keyCodeElement = document.createElement("td");
    keyCodeElement.innerText = code;
    keyCodeElement.className = `keyCode ${side}`;
    keyCodeElement.onmouseover = function () {
        showKeyLetterCallback(code);
    };
    keyCodeElement.onmouseout = restKeyLetter;
    return keyCodeElement;
}

function getTableBody(code) {
    const keyArray = keyMap[code];
    // 左手键位
    const leftCode = createKeyCodeElement(code, "left", (code) => showKeyLetter(code, ""));
    const leftArray = keyArray[0];
    const leftTd = getKeyDom(leftArray);

    // 右手键位
    const rightCode = createKeyCodeElement(code, "right", (code) => showKeyLetter("", code));
    const rightArray = keyArray[1];
    const rightTd = getKeyDom(rightArray);

    // 返回元素
    return {leftCode, leftTd, rightCode, rightTd};
}

/**
 * 获取键位元素
 * @param array
 * @return {HTMLTableCellElement}
 */
function getKeyDom(array) {
    const td = document.createElement("td");
    for (let i = 0; i < array.length; i++) {
        const span = document.createElement("span");
        span.innerText = array[i].toUpperCase();
        td.appendChild(span);
    }
    return td;
}

function showKeyLetter(left, right) {
    // 重置键位显示
    restKeyLetter();
    // 获取键位
    const leftKeyArray = keyMap[left];
    const rightKeyArray = keyMap[right];
    // 显示键位左
    if (leftKeyArray) {
        leftKeyArray[0].forEach(item => {
            document.getElementById(item).classList.add("keyCode");
        })
    }
    // 显示键位右
    if (rightKeyArray) {
        rightKeyArray[1].forEach(item => {
            document.getElementById(item).classList.add("keyCode");
        })
    }
}

function restKeyLetter() {
    for (let i = 0; i < letterDom.length; i++) {
        letterDom[i].classList.remove("keyCode");
    }
}

/**
 * 页面加载完成
 */
window.onload = function () {
    initTable();
}
