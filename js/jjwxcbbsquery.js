function hjj_query(type){
    var browser = getBrowser();
    var keyword = get_selected_text();
    var board = hjj_board_id();
    if(board == null) return;

    var url = hjj_query_url(keyword,board, type);
    browser.loadOneTab(url, null, null, null, false, true); 
}

function hjj_query_url(keyword, board, type) {

    var query_type = {
        'subject':'3',/*贴子主题*/
        'postbody':'1',/*主题贴内容*/
        'poster':'4',/*主题贴发贴人*/
        'comment':'2',/*跟贴内容*/
        'commenter':'5',/*跟贴发贴人*/
    };
    var url ="http://bbs.jjwxc.net/search.php?act=search&board="+board+"&topic="+query_type[type]+"&keyword=" + keyword;
    return url;
}

function hjj_board_id() {
    var href = window.content.location.href + "";
    var p = new RegExp("board\=(\\d+)");
    var result = p.exec(href);
    if (result == null){
        return;
    }
    var board=result[1];
    return board;
}

function get_selected_text()
{
    var focused_window = document.commandDispatcher.focusedWindow;
    var sel_text = focused_window.getSelection();
    return sel_text.toString();
}
