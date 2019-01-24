<%--
  Created by IntelliJ IDEA.
  User: WXJ
  Date: 2019/1/23
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--导航start-->
<div class="container">
    <div class="row" >
        <nav id="toptitle" class="navbar navbar-default" >
            <div class="container-fluid">
                <div id="header" class="navbar-header ">
                    <a class="navbar-brand" href="${path}/index">
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
                                <a href="${path}/contribute" style=""><span>投稿</span></a>
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
                        <c:if test="${sessionScope.user == null}">

                            <ul id="nologin" class="nav navbar-nav ">
                                <li class="col-xs-push-1">
                                    <a href="#" data-toggle="modal" data-target="#myModal"><span>登录</span></a>
                                </li>
                                <li class="col-xs-push-1">
                                    <a href="#"><span>注册</span></a>
                                </li>

                            </ul>
                        </c:if>
                        <c:if test="${sessionScope.user != null}">
                            <ul id="haslogin" class="nav navbar-nav " style="">
                                <li class="col-xs-push-1 hidden-xs">
                                    <a href="#" style="padding-top: 2px;padding-bottom: 0px;">
                                        <img src="img/testw.jpg" style="width: 45px;height: 45px;border-radius: 50%;" />
                                    </a>
                                </li>
                                <li class="col-xs-push-1 dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <span id="info_username">${user.userName}</span> <span class="caret"></span>
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
                                            <a href="${path}/user/loginout"><span>退出</span></a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </c:if>

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
