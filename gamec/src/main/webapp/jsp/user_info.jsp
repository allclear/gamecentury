<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/1/23
  Time: 16:32
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

    <link rel="stylesheet" type="text/css" href="${path}/plugins/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${path}/css/navigation.css"/>
</head>
<body>
<%@include file="common/navigation.jsp"%>
<!--个人信息-->
<div class="container">
    <div class="row ">
        <!--头像-->
        <div class="col-md-7 " style="margin-top: 20px; ">
            <div class="row ">
                <div class="col-md-2 col-xs-2 " style="width: 100px; height: 100px;" >
                    <img src="${path}/img/testw.jpg " width="100px " height="100px ">
                </div>
                <!--姓名-->
                <div style="margin-left:20px;" class="col-md-3 col-xs-2">
                    <div>
                        <h1>admin</h1>
                    </div>
                    <!--个性签名-->
                    <div>
                        <form action=" " style="display: inline; " method="post ">
                            <c:forEach items="${Signture}" end="0" var="t">
                                <input type="text "  name="signatuse " size="20 " maxlength="20 " value="${t.signture}">
                            </c:forEach>
                        </form>
                    </div>
                </div>
            </div>
            <hr />
            <div>
                <div style="margin-top:50px;">
			    		<span>
			    			<h3>我的评论</h3>
			    		</span><br />
                    <span style="margin-left: 50px;margin-right: 10px;">
			    			王者荣耀
			    		</span>
                    <span>
			    			2019-1-20 00:11:18
			    		</span><br />
                    <span style="margin-left: 100px;">
			    			今天天气很好
			    		</span>
                </div>
                <div style="margin-top: 20px;">
			    		<span>
			    			<h3>游戏分享</h3>
			    		</span><br />
                    <span>
			    			Dota2
			    		</span><br />
                    <span>
			    			2019-1-20 00:11:18
			    		</span><br />
                    <span>
			    			<img src="${path}/img/dota2.jpg" style="background-size: cover;width: 100% ;height: auto;"/>
			    		</span>
                </div>
                <div id="留言板 ">
                    <h3>留言板</h3><br />
                    <form>
                        <textarea style="width: 60%; height: 200px; ">

                        </textarea><br />
                        <input type="button" name="intruduce " value="提交 ">
                    </form>
                </div>

            </div>
            <h4 style="margin-top: 30px; margin-left: 20px">留言</h4>
            <div style="margin-left: 150px; margin-top: 50px; ">
                <c:forEach items="${msgBox}" var="b">
                <img src="${path}/img/testw.jpg" width="20px" height="20px" style="display:inline; margin-bottom: 20px">
                <span>
			    		<a href="#" style="text-decoration: none;">cpuxcc:</a>
                </span><span style="color: blue;">
			    			19:30
			    		</span>
                <span>

                            ${b.msgBoard}


			    	</span><br>
                </c:forEach>


            </div>
        </div>
        <div class=" col-md-push-1 col-md-2">
            <!--热评排行start-->
            <div id="ranking" class=" hidden-sm" style="border-top: 1px solid #1B6D85;  border-left:1px solid #1B6D85; box-shadow: 10px 10px 5px #888888;">
                <h4>好友列表</h4>
                <hr style="margin-top: 0px; margin-bottom: 5px;"/>
                <div >
                    <ul class="" style=" padding-left:30px ;" >
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                        <li><a href="#">好友1</a></li>
                    </ul>
                </div>

            </div>
            <!--热评排行end-->
        </div>

        <div class="col-md-2 hidden-xs " style="position:fixed; top: 100px; right: 50px;">
            <!--个人信息-->
            <div id="information ">
					<span>
						所在地:浙江湖州
					</span><br />
                <span>
						id:13216543132
					</span><br />
                <span>
					注册时间:2019-1
					</span><br>
            </div>
            <hr />
            <div id="自我介绍 ">
                <h4>自我介绍</h4>
                <form>
                    <c:forEach items="${Introduce}" end="0" var="I">
                        <input type="text "  name="introduce " style=" width="200px" " value="${I.introduce}">
                    </c:forEach>
                </form>
            </div>


        </div>
        <div style="position: fixed; right: 100px; bottom: 30px;">
            <a href="#top"><img src="${path}/img/up arrow.jpg" width="20" height="20"></a>
        </div>
    </div>
</div>

<script src="${path}/plugins/jquery/jquery.min.js " type="text/javascript " charset="utf-8 "></script>
<script src="${path}/plugins/bootstrap/js/bootstrap.min.js " type="text/javascript " charset="utf-8 "></script>
<script type="text/javascript ">
    function login(){
        var ur=$("#username ").val();
        var pw=$("#password ").val();

        var u="admin ";
        var p="admin ";
        if(ur==u && pw==p){
            $("#nologin ").css("display ","none ");
            $("#haslogin ").css("display ","block ");

            $("#loginclose ").click();

        }
        else{
            alert("账号或密码错误 ");
        }

    }
    function loginout(){
        $("#nologin ").css("display ","block ");
        $("#haslogin ").css("display ","none ");
    }

    function remberLogin(){
        $("#remberlogin ").click();
    }
</script>
</body>
</html>
