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

    <link rel="stylesheet" type="text/css" href="plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="plugins/swiper/css/swiper.min.css">
    <!--导航栏css-->
    <link rel="stylesheet" type="text/css" href="css/navigation.css"/>
    <!--分类css-->
    <link rel="stylesheet" type="text/css" href="css/classification.css"/>

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
<!--导航start-->
<div class="container">
    <div class="row" >
        <nav id="toptitle" class="navbar navbar-default" >
            <div class="container-fluid">
                <div id="header" class="navbar-header ">
                    <a class="navbar-brand" href="index.html">
                        <span id="">GameCentury</span>
                    </a>

                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#example-navbar-collapse" style="background-color: whitesmoke;">
                        <span class="sr-only">切换导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>

                <div class="collapse navbar-collapse" id="example-navbar-collapse">

                    <div id="tleft" class="col-md-4 col-sm-10" >
                        <ul class="nav navbar-nav" style="width: 100%;">
                            <li class="col-md-push-1 col-md-4 col-sm-2 col-xs-4" style="">
                                <a href="#" style=""><span>投稿</span></a>
                            </li>
                            <li class="col-md-push-1 col-md-4 col-sm-2 col-xs-4" style="">
                                <a href="#" style=""><span>评论</span></a>
                            </li>
                            <li class="col-md-push-1 col-md-4 col-sm-2 col-xs-4" style="">
                                <a href="#" style=""><span>帮助</span></a>
                            </li>
                        </ul>
                    </div>

                    <div id="login" class=" navbar-right login_control">
                        <ul id="nologin" class="nav navbar-nav ">
                            <li class="col-xs-push-1">
                                <a href="#" data-toggle="modal" data-target="#myModal"><span>登录</span></a>
                            </li>
                            <li class="col-xs-push-1">
                                <a href="#"><span>注册</span></a>
                            </li>

                        </ul>

                        <ul id="haslogin" class="nav navbar-nav " style="display: none;">
                            <li class="col-xs-push-1 hidden-xs">
                                <a href="#" style="padding-top: 2px;padding-bottom: 0px;">
                                    <img src="img/testw.jpg" style="width: 45px;height: 45px;border-radius: 50%;" />
                                </a>
                            </li>
                            <li class="col-xs-push-1 dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <span id="info_username">姓名</span> <span class="caret"></span>
                                </a>
                                <ul id="mydropdownm" class="dropdown-menu" style="background-color: rgb(51,51,51);">
                                    <li>
                                        <a href="#"><span>个人信息</span></a>
                                    </li>
                                    <li>
                                        <a href="#"><span>我的投稿</span></a>
                                    </li>
                                    <li class="divider" style="color: white;"></li>
                                    <li>
                                        <a href="#"><span>退出</span></a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                    <div class="col-md-4 navbar-right" style="height: 50px; border-style: none; padding-left: 0px; " >
                        <form id="search_form" class="form-control" action="#" method="post" style="height: 100%; border: none;">
                            <div class="input-group">
                                <input type="text" class="form-control" />
                                <span class="input-group-btn">
											<button class="btn btn-primary" type="button" >
												<span class="glyphicon glyphicon-search"></span>
											</button>
									    </span>
                            </div>
                        </form>
                    </div>

                </div>

            </div>
        </nav>

    </div>
</div>


<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button id="loginclose" type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3 class="modal-title" id="myModalLabel">登录</h3>
            </div>
            <div class="modal-body">
                <form id="loginForm" class="form-horizontal" role="form">
                    <div>
                        <span>用户名</span>
                        <input id="username" name="username" class="form-control" type="text" />

                    </div>
                    <br />
                    <div>
                        <span>密码</span>
                        <input id="password" name="password" class="form-control" type="password"/>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox">请记住我
                        </label>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" onclick="login()" class="btn btn-primary" >登录</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal -->
</div>
<!--导航end-->


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
                <ul class="" style="list-style: decimal; padding-left:0px ;" >
                    <li><a href="#">重装机兵</a></li>
                    <li><a href="#">热血格斗</a></li>
                    <li><a href="#">口袋妖怪绿宝石</a></li>
                    <li><a href="#">塞尔达传说：时之沙漏</a></li>
                    <li><a href="#">火焰文章：圣魔之光石 塞尔达传说：时之沙漏</a></li>
                    <li><a href="#">最终幻想7</a></li>
                    <li><a href="#">塞尔达传说：时之沙漏</a></li>
                    <li><a href="#">勇者斗恶龙9</a></li>
                    <li><a href="#">最终幻想7</a></li>
                    <li><a href="#">重装机兵：沙尘之锁</a></li>
                    <li><a href="#">重装机兵</a></li>
                    <li><a href="#">热血格斗</a></li>
                    <li><a href="#">口袋妖怪绿宝石</a></li>
                    <li><a href="#">塞尔达传说：时之沙漏</a></li>
                    <li><a href="#">火焰文章：圣魔之光石 塞尔达传说：时之沙漏</a></li>
                    <li><a href="#">最终幻想7</a></li>
                    <li><a href="#">塞尔达传说：时之沙漏</a></li>
                    <li><a href="#">勇者斗恶龙9</a></li>
                    <li><a href="#">最终幻想7</a></li>
                    <li><a href="#">重装机兵：沙尘之锁</a></li>
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
                    <div class="swiper-slide">
                        <a href="#"><img src="img/testw.jpg" /></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="img/testw.jpg" /></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="img/testw.jpg" /></a>
                    </div>
                </div>

                <!-- Add Pagination -->
                <div class="swiper-pagination swiper-pagination-white"></div>

                <!-- Add Arrows -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
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




<script src="plugins/jquery/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="plugins/swiper/js/swiper.min.js" type="text/javascript" charset="utf-8"></script>
<script src="plugins/jquery/jquery.lazyload.js" type="text/javascript" charset="utf-8"></script>
<!--登录js-->
<script src="js/navlogin.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">
    $(function(){

        $("img.lazy").lazyload({
            effect: "fadeIn"
        })
    })


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
        //两边按钮
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

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
                "<img class='lazy' data-original='img/w方形图.PNG' alt='通用的占位符缩略图'>"+
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
