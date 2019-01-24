<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/24
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/22
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>

    <link rel="stylesheet" type="text/css" href="plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/navigation.css" />
    <link rel="stylesheet" href="css/classification.css" />

    <style type="text/css">
        .img_opacity{
            opacity:1.0;
            filter:alpha(opacity=100);/* 适用 IE8 及其更早版本 */
        }
        .img_opacity:hover
        {
            opacity:0.4;
            filter:alpha(opacity=40); /* 适用 IE8 及其更早版本 */
        }
        /*缩略图上边的部分*/
        #form-top{
            margin-bottom: 25px;
            margin-top: 25px;
        }
        #list_sort {
            width: 100%;
            height: auto;
            border: solid #D9D9D9;
            border-width: 1px;
        }
        #list_sort .sort {
            float: left;
            width: 57%px;
            height: 30px;
            padding: 10px 0 0 16px;
        }
        #list_sort .paging {
            float: right;
            width: 43%px;
            height: 30px;
            padding: 11px 8px 0 0;
            text-align: right;
            font: 12px/1.5 SimSun;
            color: #666;
        }
        #list_sort .sort a {
            display: inline-block;
            height: 28px;
            margin: 0 12px 0 0;
            padding: 0 8px 3px 8px;
            font: 12px/2 SimSun;
            color: #666;
        }
        #list_sort .sort a.active {
            padding: 0 8px;
            font-weight: bold;
            color: #0091FF;
        }
        #list_sort .paging .number {
            color: #0091FF;
        }
        #list_path{
            margin-bottom: 16px;
        }
        /*缩略图上边的部分*/
        /*缩略图中的字体格式*/

        .feed-info {
            padding: 15px;
            padding-top: 15px;
            padding-right: 15px;
            padding-bottom: 15px;
            padding-left: 15px;
        }
        .rating-wrap {
            float: right;
            text-align: right;
            position: relative;
            height: 50px;
            margin-left: 12px;
            min-width: 45px;
            color: #14B9C8;
        }
        .rating-score span {
            font-size: 18px;
            vertical-align: middle;
        }
        .feed-title {
            font-size: 16px;
            line-height: 28px;
            color: #333;
            font-weight: 700;
        }
        .feed-content p {
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        .feed-description {
            font-size: 13px;
            color: #999;
        }
        /*缩略图中的字体格式*/
    </style>

</head>
<body>
<!--导航start-->
<%@include file="common/navigation.jsp"%>
<!--导航end-->
<!--分类-->
<%@include file="common/classfi.jsp"%>
<!--分类结束-->
<!--缩略图-->
<!--且图片均采用lazyload的加载方式-->
<div id ="form-top"  class = "container">
    <div id="list_path">
        <a href="index.html" target="_self">主页</a> &gt; <a href="${path}/" target="_self"val>角色扮演</a>
    </div>
    <div id="list_sort">
        <div class="sort">
            <a target="_self" href="#" class="order_item">默认排序</a>
            <a target="_self" href="#" class="order_item active">按更新↓</a>
            <a target="_self" href="#" class="order_item">按大小</a>
            <a target="_self" href="#" class="order_item">按人气</a>
            <a target="_self" href="#" class="order_item">按评分</a>

        </div>
        <div class="paging">
            共 <span class="number">11338 </span> 款游戏 <a target="_self" href="/danji/list/1?&amp;p=2" class="next">下一页</a>

        </div>
    </div>
</div>

<div  class="container">
    <div class="row">
        <c:forEach items="${listResult}" var="list">
            <div class="col-xs-6 col-sm-6 col-md-3">
                <a href="#" style="text-decoration: none;">
                    <div class="thumbnail">
                        <img class="lazy img_opacity" data-original="../img/testw.jpg" alt="通用的占位符缩略图"/>
                        <div class="caption">
                            <div class="feed-info">
                                <div class="rating-wrap">
                                    <p class="review-count">${list.getHeat}</p>
                                    <p class="rating-score">
                                        <span class="glyphicon glyphicon-heart"></span>
                                        <span>${list.getassess}</span>
                                    </p>
                                </div>
                                <div class="feed-content">
                                    <p class="feed-title">
                                        <span>${list.getgameName}</span>
                                    </p>
                                    <p class="feed-description">${list.getplantForm}<br>${list.getkind}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </c:forEach>



    </div><!--rowend-->
</div>
<!--缩略图结束-->
<!--分页-->
<div  align="center">
    <ul class="pagination">
        <li>
            <a href="#">&laquo;</a>
        </li>
        <li>
            <a href="#">1</a>
        </li>
        <li>
            <a href="#">2</a>
        </li>
        <li>
            <a href="#">3</a>
        </li>
        <li>
            <a href="#">4</a>
        </li>
        <li>
            <a href="#">5</a>
        </li>
        <li>
            <a href="#">&raquo;</a>
        </li>
    </ul>
</div>
<!--分页结束啦-->




<script src="plugins/jquery/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="plugins/jquery/jquery.lazyload.js"></script>
<script type="text/javascript">

    //    function my_ajaxlogin(){
    //        var value=$(this).attr("value");
    //        alert(value);
    //    }
    <%--$(".userImg").click(function(){--%>
    <%--var value = $(this).attr("value");--%>
    <%--alert(value);--%>
    <%--$.ajax({--%>
    <%--type:'post',//get请求--%>
    <%--url:'${path}/search_info1',//请求的url--%>
    <%--data:{type:value},--%>
    <%--success:function(data){--%>
    <%--//当后台成功返回之后执行.--%>
    <%--//alert(data)--%>
    <%--}--%>
    <%--})--%>
    <%--});--%>
    $(function() {
        $("img.lazy").lazyload({effect: "fadeIn"});
    });
    function login(){
        var ur=$("#username").val();
        var pw=$("#password").val();

        var u="admin";
        var p="admin";
        if(ur==u && pw==p){
            $("#nologin").css("display","none");
            $("#haslogin").css("display","block");

            $("#loginclose").click();

        }
        else{
            alert("账号或密码错误");
        }

    }
    function loginout(){
        $("#nologin").css("display","block");
        $("#haslogin").css("display","none");
    }

    function remberLogin(){
        $("#remberlogin").click();
    }
</script>
</body>
</html>

