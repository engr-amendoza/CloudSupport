function copyAsPlaintext(content) {
    var copyFrom = document.createElement("textarea");
    copyFrom.textContent = content;

    var body = document.getElementsByTagName('body')[0];
    body.appendChild(copyFrom);
    copyFrom.select();

    document.execCommand('copy');
    body.removeChild(copyFrom);
};

function copyAsRichText(html) {
    var content = $(html),
        copyFrom = content[0],
        result = false,
        range,
        body = document.getElementsByTagName('body')[0];

    body.appendChild(copyFrom);
    try {
        range = document.createRange();

        // clear all selections
        this.removeSelection();

        // create selection
        range.selectNode(copyFrom);
        window.getSelection().addRange(range);

        // copy text
        result = document.execCommand('copy');

        this.removeSelection();
    } catch(err) {
        this.removeSelection();
        result = false;
    } finally {
        body.removeChild(copyFrom);
    }

    return !!result;
};

function removeSelection = function () {
    try {
        window.getSelection().removeAllRanges();
    } catch(err) {}
};