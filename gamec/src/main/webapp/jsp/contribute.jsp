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

    <link rel="stylesheet" type="text/css" href="${path}/plugins/bootstrap-fileinput/css/fileinput.min.css"/>

    <script src="${path}/plugins/wangeditor/wangEditor.min.css"></script>

    <style type="text/css">
        #editor {overflow:scroll; max-height:300px}

    </style>

</head>
<body>

<%@include file="common/navigation.jsp"%>


<!--分类-->
<div class="container">
    <hr>
    <h2>投稿</h2>
    <hr>

    <div class="row">

    </div>

    <div class="row" >
        <%--<input id="f_upload" type="file" class="file" />--%>
        <!-- 就是一个简单的文件表单字段 -->
        <%--<label class="control-label" for="testfile">上传文件</label>
        <input type="file" id="testfile" name="test" multiple />--%>
            <div class="col-md-6">
                <form action="${path}/upload" method="post" enctype="multipart/form-data">
                    <div class="row">
                        <span class="label label-default">游戏名:</span>
                        <div class="">
                            <input class="form-control" type="text" name="gameName">
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-4">
                            <select class="form-control" name="kind">
                                <option value="-1">===类型===</option>
                                <option value="RPG">角色扮演</option>
                                <option value="GB">冒险</option>
                                <option value="GBA">动作</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select class="form-control" name="plantForm">
                                <option value="-1">===平台===</option>
                                <option value="FC">FC</option>
                                <option value="GB">GB</option>
                                <option value="GBA">GBA</option>
                            </select>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <textarea class="form-control" name="describe" rows="5" cols="" placeholder="介绍"></textarea>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="form-group">
                            <label for="inputfile">请上传封面</label>
                            <input class="" type="file" name="file" id="inputfile">
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            评分:<input type="text" name="assess">
                        </div>
                        <div class="col-md-4">
                            热度:<input type="text" name="heat">
                        </div>
                    </div>

                    <hr>
                    <div class="row">
                        <input class="btn btn-danger pull-right" type="submit" value="提交">
                    </div>
                </form>
            </div>

    </div>
</div>
<!--container end-->

<div class="container">
    <div class="row">
        <div class="footer"></div>
    </div>
</div>

<script src="${path}/plugins/jquery/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${path}/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${path}/plugins/wangeditor/wangEditor.min.js"></script>
<script src="${path}/plugins/bootstrap-fileinput/js/fileinput.min.js"></script>
<script src="${path}/plugins/bootstrap-fileinput/js/locales/zh.js"></script>


<script type="text/javascript">
$(function () {
    /*var E = window.wangEditor
    var editor2 = new E('#div3')
    editor2.create();*/

    $('#testfile').fileinput({
        language: 'zh',
        uploadUrl: 'http://localhost:8888/gamec' + '/upload',
        showCaption: true,
        showUpload: true,
        showRemove: true,
        showClose: true,
        layoutTemplates:{
            actionDelete: ''
        },
        browseClass: 'btn btn-primary'
    });

})


</script>
</body>
</html>
