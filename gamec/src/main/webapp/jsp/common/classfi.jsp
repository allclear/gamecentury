<%--
  Created by IntelliJ IDEA.
  User: WXJ
  Date: 2019/1/24
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?plantForm=PC"><span>PC</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?plantForm=FC"><span>FC</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?plantForm=SFC"><span>SFC</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?plantForm=GB"><span>GB</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?plantForm=GBC"><span>GBC</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?plantForm=GBA"><span>GBA</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?plantForm=NDS"><span>NDS</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?plantForm=PS"><span>PS</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?plantForm=PSP"><span>PSP</span></a></div>
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
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?kind=角色扮演"><span>角色扮演</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?kind=冒险"><span>冒险</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?kind=动作"><span>动作</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?kind=射击"><span>射击</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?kind=格斗"><span>格斗</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?kind=竞速"><span>竞速</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?kind=体育"><span>体育</span></a></div>
            <div style="display: inline; margin-right: 20px; font-size: 18px;"><a href="${path}/search?kind=策略"><span>策略</span></a></div>
        </div>
    </div>

    <div class="row">
        <hr  />
    </div>
</div>
