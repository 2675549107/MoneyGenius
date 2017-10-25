/**
 *
 * Created by wjl on 2017/10/18.
 */


$(function () {

    // 页面载入时,布局自适应窗口高度
    var width = $(window).width();
    var height = $(window).height();
    $("article").css("height", height - 125 + "px");
    $("#div_article-bg-right").css("height", height - 125 + "px");
    $("#div_article-bg-left-under").css("height", height - 325 + "px");
    $("footer").css({
        "top": height + 300 + "px",
        "width": width + "px"
    });

    // 页面局部刷新
    var sId = "#fund";
    $(".account-list").on("click", "li", function () {
        sId = $(this).data("id");
        window.location.hash = sId;
        loadInner(sId);
    });
    loadInner(sId);
    function loadInner(sId) {
        sId = window.location.hash;
        var pathn, i;
        switch (sId) {
            case "#fund":
                pathn = "userAction_openfund";
                i = 0;
                break;
            case "#setting":
                pathn = "userAction_openModifyMy";
                i = 1;
                break;
            default :
                pathn = "userAction_openfund";
                i = 0;
                break;
        }
        // 抓取页面并进行分页
        $("#div_article-bg-right").load(pathn + " #div_article-bg-right", function () {
            var showRowNum = 5; // 每页行数
            var rowSum = $(".div_content tr").length - 2;  // 总行数
            var pageSum = Math.ceil(rowSum / showRowNum); // 总页数
            var pageNum = $(".showPageNum").val(); // 页码
            pageNum = parseInt(pageNum); // 数字化

            // 初始化
            showPaging(1, pageSum, showRowNum, rowSum);

            // 首页
            $("#home").click(function() {
                showPaging(1, pageSum, showRowNum, rowSum);
            });
            // 尾页
            $("#trailer").click(function() {
                showPaging(pageSum, pageSum, showRowNum, rowSum);
            });
            // 上一页
            $("#last").click(function() {
                pageNum = $(".showPageNum").val();
                pageNum = parseInt(pageNum);
                showPaging(pageNum - 1, pageSum, showRowNum, rowSum);
            });
            // 下一页
            $("#next").click(function() {
                pageNum = $(".showPageNum").val();
                pageNum = parseInt(pageNum);
                showPaging(pageNum + 1, pageSum, showRowNum, rowSum);
            });
            // 页码改变时
            $(".showPageNum").change(function () {
                pageNum = $(".showPageNum").val();
                showPaging(pageNum, pageSum, showRowNum, rowSum);
            });

            // 页码 总页数 每页行数 总行数
            function showPaging(thePageNum, thePageSum, theShowRowNum, theRowSum) {
                $(".showPageNum").val(thePageNum); // 改变页码
                $(".showPageSum").val("/   " + thePageSum); // 改变总页数
                examinePage(thePageNum, thePageSum);
                showing(thePageNum, theShowRowNum, theRowSum);
            }

            // 显示函数(页码,每页行数,总行数)
            function showing(thisPageNum, thisShowRowNum, thisRowSum) {
                for (var i = 1; i <= thisRowSum; i++) {
                    if (i >= (thisPageNum - 1) * thisShowRowNum + 1 && i <= thisShowRowNum * thisPageNum) {
                        $(".div_content tr").eq(i).show();
                    } else {
                        $(".div_content tr").eq(i).hide();
                    }
                }
            }

            //alert(pageNum);
            // 禁用检测函数(页码,总页数)
            function examinePage(thisPageNum, thisPageSum) {
                if (thisPageNum == 1) {
                    $("#last,#home").attr("disabled", true);
                } else {
                    $("#last,#home").attr("disabled", false);
                }
                if (thisPageNum == thisPageSum) {
                    $("#next,#trailer").attr("disabled", true);
                } else {
                    $("#next,#trailer").attr("disabled", false);
                }
            }

        });
        $(".account-list li").eq(i).addClass("current").siblings().removeClass("current");
    }
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
