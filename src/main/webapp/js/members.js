/**
 *
 * Created by wjl on 2017/10/18.
 */
// 页面载入时,布局自适应窗口高度
$(function () {
    var width = $(window).width();
    var height = $(window).height();
    $("article").css("height", height - 125 + "px");
    $("#div_article-bg-right").css("height", height - 125 + "px");
    $("#div_article-bg-left-under").css("height", height - 325 + "px");
    $("footer").css({
        "top": height + 300 + "px",
        "width": width + "px"
    });
});
// 窗口缩放时,布局自适应窗口高度
$(window).resize(function () {
    var width = $(window).width();
    var height = $(window).height();
    $("article").css("height", height - 125 + "px");
    $("#div_article-bg-right").css("height", height - 125 + "px");
    $("#div_article-bg-left-under").css("height", height - 325 + "px");
    $(".img_footer").css({
        "top": height + 300 + "px",
        "width": width + "px"
    });
});
// 页面局部刷新
$(function () {
    $(".account-list").on("click", "li", function () {
        var sId = $(this).data("id");
        window.location.hash = sId;
        loadInner(sId);
    });
    function loadInner(sId) {
        var sId = window.location.hash;
        var pathn, i;
        switch (sId) {
            case "#fund":
                pathn = "user_fund.html";
                i = 0;
                break;
            case "#setting":
                pathn = "userAction_openModifyMy";
                i = 1;
                break;
            default :
                pathn = "user_fund.html";
                i = 0;
                break;
        }
        $("#div_article-bg-right").load(pathn + " #div_article-bg-right");
        $(".account-list li").eq(i).addClass("current").siblings().removeClass("current");
        return 0;
    }

    var sId = window.location.hash;
    loadInner(sId);
});