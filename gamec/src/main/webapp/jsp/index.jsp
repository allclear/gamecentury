<%--
  Created by IntelliJ IDEA.
  User: WXJ
  Date: 2019/1/21
  Time: 16:48
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

    <link rel="stylesheet" type="text/css" href="${path}/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${path}/plugins/swiper/css/swiper.min.css">
    <!--导航栏css-->
    <link rel="stylesheet" type="text/css" href="${path}/css/navigation.css"/>
    <!--分类css-->
    <link rel="stylesheet" type="text/css" href="${path}/css/classification.css"/>

    <style type="text/css">

        #ranking div ul li{
            font: "微软雅黑";
            font-size:15px ;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        #myswiper img{
            width: 100%;
            height: 100%;
        }

        #colerlist div.thumbnail {
            box-shadow: 2px 2px 2px #888888;
        }
        /*图片选中效果*/
        #colerlist div.thumbnail img {
            transition: all 0.6s;
        }

        #colerlist div.thumbnail img:hover {
            box-shadow: 3px 3px 3px #888888;
            transform: scale(1.2);
        }

    </style>

</head>
<body>

<%@include file="common/navigation.jsp"%>


<!--分类-->
<div class="container">
    <div class="row">
        <hr  />
    </div>


    <div class="row plantform">
        <div class="col-md-1 col-xs-2">
            <div class="mydiv" style="background-color: #31B0D5;width: 54px;margin-right: 20px;">
                <span style="font: '微软雅黑'; font-weight: bolder; color: white;">平台</span>
            </div>
        </div>
        <div id="plants" class="col-md-11 col-xs-10">
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>FC</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>SFC</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>GB</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>GBC</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>GBA</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>NDS</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>PS</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>PSP</span></a></div>
        </div>
    </div>

    <div class="row">
        <hr  />
    </div>

    <div class="row plantform">
        <div class="col-md-1 col-xs-2">
            <div class="mydiv" style="background-color: #31B0D5;width: 54px;margin-right: 20px;">
                <span style="font: '微软雅黑'; font-weight: bolder; color: white;">类型</span>
            </div>
        </div>
        <div class="col-md-11 col-xs-10">
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>角色扮演</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>冒险</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>动作</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>射击</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>格斗</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>竞速</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>体育</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="#"><span>策略</span></a></div>
        </div>
    </div>

    <div class="row">
        <hr  />
    </div>
</div>

<div class="container">
    <div class="row">

        <!--热评排行start-->
        <div id="ranking" class="pull-right col-md-3 hidden-sm hidden-xs" style="border: 1px solid black; box-shadow: 10px 10px 5px #888888;">
            <h4>近期热评</h4>
            <hr style="margin-top: 0px; margin-bottom: 5px;"/>
            <div style="padding-left: 15px;">
                <ul id="rank" class="" style="list-style: decimal; padding-left:0px ;" >
                    <!--遍历集合-->
                    <c:forEach items="${rankList}" var="rank">
                        <li><a href="#">${rank.gameName}</a></li>
                    </c:forEach>
                </ul>
            </div>

        </div>
        <!--热评排行end-->

        <!--左部 热评榜 start-->
        <div class="col-md-8 col-xs-12" style="">


            <span style="font-size: 20px; font-weight: bolder;">热评Top3</span>
            <a href="#" style="">
                <span class="glyphicon glyphicon-plus pull-right"></span>
            </a>

            <!-- Swiper -->
            <div id="myswiper" class="swiper-container">
                <div class="swiper-wrapper">
                    <c:forEach items="${rankList}" var="rl" begin="0" end="2" step="1">
                        <div class="swiper-slide">
                            <a href="#"><img src="${path}${rl.coverImg}"/></a>
                        </div>
                    </c:forEach>
                </div>

                <!-- Add Pagination -->
                <div class="swiper-pagination swiper-pagination-white"></div>

                <%--<!-- Add Arrows -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>--%>
            </div>

        </div>
        <!--左部 热评榜 end-->

        <!--左部最新投稿start-->
        <div class="col-md-8 col-xs-12" style="">
            <hr /><!--分割线-->
            <div class="container-fluid">
                <div class="row">
                    <ul class="nav nav-tabs">
                        <li id="newdynamic" class="active"  style="cursor: pointer;" onclick="changeToDynamic()">
                            <a>最新动态</a>
                        </li>
                        <li id="newcontribute" class="" style="cursor: pointer;" onclick="changeToContribute()">
                            <a>最新投稿</a>
                        </li>
                        <li style="float: right; margin-left: 5px;">
                            <button class="btn btn-default">
                                更多<span class="glyphicon glyphicon-chevron-right"></span>
                            </button>
                        </li>
                        <li style="float: right;">
                            <button class="btn btn-default">
                                <span class="glyphicon glyphicon-refresh"></span>
                                <span>5</span>条
                            </button>
                        </li>

                    </ul>
                </div>

                <div class="row" style="border: 1px solid #ddd; border-top: none; padding-top: 10px;">

                    <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                            <a href="#" class="">
                                <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                            </a>
                            <h6 style="white-space:nowrap;text-overflow: ellipsis;overflow: hidden;">
                                伊苏8:游戏的舞台为曾经被称作“永远的被诅咒之岛”
                            </h6>
                            <div>
                                <span class="badge">12</span>
                                <span class="glyphicon glyphicon-align-right pull-right"></span>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                            <a href="#" class="">
                                <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                            </a>
                            <h6 style="white-space:nowrap;text-overflow: ellipsis;overflow: hidden;">
                                伊苏8:游戏的舞台为曾经被称作“永远的被诅咒之岛”
                            </h6>
                            <div>
                                <span class="badge">12</span>
                                <span class="glyphicon glyphicon-align-right pull-right"></span>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                            <a href="#" class="">
                                <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                            </a>
                            <h6 style="white-space:nowrap;text-overflow: ellipsis;overflow: hidden;">
                                伊苏8:游戏的舞台为曾经被称作“永远的被诅咒之岛”
                            </h6>
                            <div>
                                <span class="badge">12</span>
                                <span class="glyphicon glyphicon-align-right pull-right"></span>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                            <a href="#" class="">
                                <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                            </a>
                            <h6 style="white-space:nowrap;text-overflow: ellipsis;overflow: hidden;">
                                伊苏8:游戏的舞台为曾经被称作“永远的被诅咒之岛”
                            </h6>
                            <div>
                                <span class="badge">12</span>
                                <span class="glyphicon glyphicon-align-right pull-right"></span>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                            <a href="#" class="">
                                <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                            </a>
                            <h6 style="white-space:nowrap;text-overflow: ellipsis;overflow: hidden;">
                                伊苏8:游戏的舞台为曾经被称作“永远的被诅咒之岛”
                            </h6>
                            <div>
                                <span class="badge">12</span>
                                <span class="glyphicon glyphicon-align-right pull-right"></span>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                            <a href="#" class="">
                                <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                            </a>
                            <h6 style="white-space:nowrap;text-overflow: ellipsis;overflow: hidden;">
                                伊苏8:游戏的舞台为曾经被称作“永远的被诅咒之岛”
                            </h6>
                            <div>
                                <span class="badge">12</span>
                                <span class="glyphicon glyphicon-align-right pull-right"></span>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                            <a href="#" class="">
                                <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                            </a>
                            <h6 style="white-space:nowrap;text-overflow: ellipsis;overflow: hidden;">
                                伊苏8:游戏的舞台为曾经被称作“永远的被诅咒之岛”
                            </h6>
                            <div>
                                <span class="badge">12</span>
                                <span class="glyphicon glyphicon-align-right pull-right"></span>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                            <a href="#" class="">
                                <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                            </a>
                            <h6 style="white-space:nowrap;text-overflow: ellipsis;overflow: hidden;">
                                伊苏8:游戏的舞台为曾经被称作“永远的被诅咒之岛”
                            </h6>
                            <div>
                                <span class="badge">12</span>
                                <span class="glyphicon glyphicon-align-right pull-right"></span>
                            </div>

                        </div>
                    </div>


                </div>
            </div>



        </div>
        <!--左部最新投稿end-->


        <!--左部冷门推荐 start-->
        <div class="col-md-8 col-xs-12" style="">
            <hr /><!--分割线-->
            <span style="font-size: 20px; font-weight: bolder;">冷作发掘</span>
            <hr style="margin-top: 0px;"/><!--分割线-->
            <!--冷门游戏列表-->
            <div>
                <div class="container-fluid">
                    <div id="colerlist" class="row">

                        <div class="col-xs-6 col-md-3">
                            <div class="thumbnail">
                                <div style="">
                                    <h4>游戏1</h4>
                                </div>
                                <a href="#" class="">
                                    <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                                </a>

                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <div class="thumbnail">
                                <div style="">
                                    <h4>游戏1</h4>
                                </div>
                                <a href="#" class="">
                                    <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                                </a>

                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <div class="thumbnail">
                                <div style="">
                                    <h4>游戏1</h4>
                                </div>
                                <a href="#" class="">
                                    <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                                </a>

                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <div class="thumbnail">
                                <div style="">
                                    <h4>游戏1</h4>
                                </div>
                                <a href="#" class="">
                                    <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                                </a>

                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <div class="thumbnail">
                                <div style="">
                                    <h4>游戏1</h4>
                                </div>
                                <a href="#" class="">
                                    <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                                </a>

                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <div class="thumbnail">
                                <div style="">
                                    <h4>游戏1</h4>
                                </div>
                                <a href="#" class="">
                                    <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                                </a>

                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <div class="thumbnail">
                                <div style="">
                                    <h4>游戏1</h4>
                                </div>
                                <a href="#" class="">
                                    <img class="lazy" data-original="img/w方形图.PNG" alt="通用的占位符缩略图">
                                </a>

                            </div>
                        </div>
                        <div class='col-xs-6 col-md-3'>
                            <div class='thumbnail'>
                                <div>
                                    <h4>游戏1</h4>
                                </div>
                                <a href='#' >
                                    <img class='lazy' data-original='img/w方形图.PNG' alt='通用的占位符缩略图'>
                                </a>

                            </div>
                        </div>


                    </div>
                    <hr />
                    <!--row end-->
                    <center class="row" >
                        <button id="morecoler" onclick="moreColer()" class="btn btn-success">加载更多</button>
                    </center>
                </div>
                <!--container end-->

            </div>
            <!--冷门游戏列表end-->

        </div>
        <!--左部冷门推荐end-->




    </div>
    <!--row end-->

</div>
<!--container end-->

<div class="container">
    <div class="row">
        <div class="footer">footer</div>
    </div>
</div>

<script src="${path}/plugins/jquery/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${path}/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${path}/plugins/swiper/js/swiper.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${path}/plugins/jquery/jquery.lazyload.js" type="text/javascript" charset="utf-8"></script>
<!--登录js-->
<script src="${path}/js/navlogin.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">
    $(function(){

        $("img.lazy").lazyload({
            effect: "fadeIn"
        });
    })

    function login(){
        var form_obj = $("#loginForm");
        //对表单进行序列化操作.
        var formData = form_obj.serialize();
        $.ajax({
            type:'get',//get请求
            url:'user/login',//请求的url
            data:formData,
            success:function(data){
                //当后台成功返回之后执行.
                if(data == -1){
                    alert("账号不存在");
                }
                else if(data == 0){
                    alert("密码错误");
                }
                else{
                    window.location.href="${path}/index";
                }
            }
        })
    }


    var swiper = new Swiper('.swiper-container', {
        speed:500,
        loop: true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,

        },
        grabCursor: true,
        effect:'cube',
        cubeEffect: {
            shadow: true,
            slideShadows: true,
            shadowOffset: 20,
            shadowScale: 0.94,
        },
        /*//两边按钮
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },*/
    });

    function moreColer(){
        var addcolor="";
        for(var i=0;i<8;i++){
            var newcolor="<div class='col-xs-6 col-md-3'>"+
                "<div class='thumbnail'>"+
                "<div>"+
                "<h4>游戏1</h4>"+
                "</div>"+
                "<a href='#' >"+
                "<img class='lazy' data-original='${path}/img/w方形图.PNG' alt='通用的占位符缩略图'>"+
                "</a>"+
                "</div>"+
                "</div>";
            addcolor=addcolor+newcolor;

        }
        $("#colerlist").append(addcolor);
        $("img.lazy").lazyload({effect: "fadeIn"});
    }

    function changeToDynamic(){
        $("#newcontribute").removeClass("active");
        $("#newdynamic").addClass("active");


    }

    function changeToContribute(){
        $("#newdynamic").removeClass("active");
        $("#newcontribute").addClass("active");
    }


</script>
</body>
</html>
