/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-01-24 11:04:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contribute_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/jsp/common/navigation.jsp", Long.valueOf(1548327854783L));
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\r\n");
      out.write("    <title></title>\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/bootstrap/css/bootstrap.min.css\"/>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/swiper/css/swiper.min.css\">\r\n");
      out.write("    <!--导航栏css-->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/navigation.css\"/>\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/bootstrap-fileinput/css/fileinput.min.css\"/>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/wangeditor/wangEditor.min.css\"></script>\r\n");
      out.write("\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("        #editor {overflow:scroll; max-height:300px}\r\n");
      out.write("\r\n");
      out.write("    </style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--导航start-->\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("    <div class=\"row\" >\r\n");
      out.write("        <nav id=\"toptitle\" class=\"navbar navbar-default\" >\r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("                <div id=\"header\" class=\"navbar-header \">\r\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.html\">\r\n");
      out.write("                        <span id=\"\">GameCentury</span>\r\n");
      out.write("                    </a>\r\n");
      out.write("\r\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\"\r\n");
      out.write("                            data-target=\"#example-navbar-collapse\" style=\"background-color: whitesmoke;\">\r\n");
      out.write("                        <span class=\"sr-only\">切换导航</span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                    </button>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"example-navbar-collapse\">\r\n");
      out.write("\r\n");
      out.write("                    <div id=\"tleft\" class=\"col-md-4 col-sm-10\" >\r\n");
      out.write("                        <ul class=\"nav navbar-nav\" style=\"width: 100%;\">\r\n");
      out.write("                            <li class=\"col-md-push-1 col-md-4 col-sm-2 col-xs-4\" style=\"\">\r\n");
      out.write("                                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/contribute\" style=\"\"><span>投稿</span></a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"col-md-push-1 col-md-4 col-sm-2 col-xs-4\" style=\"\">\r\n");
      out.write("                                <a href=\"#\" style=\"\"><span>评论</span></a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"col-md-push-1 col-md-4 col-sm-2 col-xs-4\" style=\"\">\r\n");
      out.write("                                <a href=\"#\" style=\"\"><span>帮助</span></a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div id=\"login\" class=\" navbar-right login_control\">\r\n");
      out.write("                        ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                        ");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"col-md-4 navbar-right\" style=\"height: 50px; border-style: none; padding-left: 0px; \" >\r\n");
      out.write("                        <form id=\"search_form\" class=\"form-control\" action=\"#\" method=\"post\" style=\"height: 100%; border: none;\">\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <input type=\"text\" class=\"form-control\" />\r\n");
      out.write("                                <span class=\"input-group-btn\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<button class=\"btn btn-primary\" type=\"button\" >\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"glyphicon glyphicon-search\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t    </span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- 模态框（Modal） -->\r\n");
      out.write("<div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("    <div class=\"modal-dialog\">\r\n");
      out.write("        <div class=\"modal-content\">\r\n");
      out.write("            <div class=\"modal-header\">\r\n");
      out.write("                <button id=\"loginclose\" type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
      out.write("                <h3 class=\"modal-title\" id=\"myModalLabel\">登录</h3>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"modal-body\">\r\n");
      out.write("                <form id=\"loginForm\" class=\"form-horizontal\" role=\"form\">\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <span>用户名</span>\r\n");
      out.write("                        <input id=\"username\" name=\"username\" class=\"form-control\" type=\"text\" />\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <br />\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <span>密码</span>\r\n");
      out.write("                        <input id=\"password\" name=\"password\" class=\"form-control\" type=\"password\"/>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"checkbox\">\r\n");
      out.write("                        <label>\r\n");
      out.write("                            <input type=\"checkbox\">请记住我\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"modal-footer\">\r\n");
      out.write("                <button type=\"button\" onclick=\"login()\" class=\"btn btn-primary\" >登录</button>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /.modal-content -->\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /.modal -->\r\n");
      out.write("</div>\r\n");
      out.write("<!--导航end-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--分类-->\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("    <hr>\r\n");
      out.write("    <h2>投稿</h2>\r\n");
      out.write("    <hr>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"row\" >\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("        <!-- 就是一个简单的文件表单字段 -->\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("            <div class=\"col-md-6\">\r\n");
      out.write("                <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/upload\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <span class=\"label label-default\">游戏名:</span>\r\n");
      out.write("                        <div class=\"\">\r\n");
      out.write("                            <input class=\"form-control\" type=\"text\" name=\"gameName\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <hr>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-4\">\r\n");
      out.write("                            <select class=\"form-control\" name=\"kind\">\r\n");
      out.write("                                <option value=\"-1\">===类型===</option>\r\n");
      out.write("                                <option value=\"RPG\">角色扮演</option>\r\n");
      out.write("                                <option value=\"GB\">冒险</option>\r\n");
      out.write("                                <option value=\"GBA\">动作</option>\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-md-4\">\r\n");
      out.write("                            <select class=\"form-control\" name=\"plantForm\">\r\n");
      out.write("                                <option value=\"-1\">===平台===</option>\r\n");
      out.write("                                <option value=\"FC\">FC</option>\r\n");
      out.write("                                <option value=\"GB\">GB</option>\r\n");
      out.write("                                <option value=\"GBA\">GBA</option>\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <hr>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <textarea class=\"form-control\" name=\"describe\" rows=\"5\" cols=\"\" placeholder=\"介绍\"></textarea>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <hr>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label for=\"inputfile\">请上传封面</label>\r\n");
      out.write("                            <input class=\"\" type=\"file\" name=\"file\" id=\"inputfile\">\r\n");
      out.write("                            <p class=\"help-block\"></p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-4\">\r\n");
      out.write("                            评分:<input type=\"text\" name=\"assess\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-md-4\">\r\n");
      out.write("                            热度:<input type=\"text\" name=\"heat\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <hr>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <input class=\"btn btn-danger pull-right\" type=\"submit\" value=\"提交\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!--container end-->\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("        <div class=\"footer\"></div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/jquery/jquery.min.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/bootstrap/js/bootstrap.min.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/wangeditor/wangEditor.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/bootstrap-fileinput/js/fileinput.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/bootstrap-fileinput/js/locales/zh.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("$(function () {\r\n");
      out.write("    /*var E = window.wangEditor\r\n");
      out.write("    var editor2 = new E('#div3')\r\n");
      out.write("    editor2.create();*/\r\n");
      out.write("\r\n");
      out.write("    $('#testfile').fileinput({\r\n");
      out.write("        language: 'zh',\r\n");
      out.write("        uploadUrl: 'http://localhost:8888/gamec' + '/upload',\r\n");
      out.write("        showCaption: true,\r\n");
      out.write("        showUpload: true,\r\n");
      out.write("        showRemove: true,\r\n");
      out.write("        showClose: true,\r\n");
      out.write("        layoutTemplates:{\r\n");
      out.write("            actionDelete: ''\r\n");
      out.write("        },\r\n");
      out.write("        browseClass: 'btn btn-primary'\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("})\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f0.setParent(null);
    // /jsp/common/navigation.jsp(49,24) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.user == null}", java.lang.Boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\r\n");
        out.write("                            <ul id=\"nologin\" class=\"nav navbar-nav \">\r\n");
        out.write("                                <li class=\"col-xs-push-1\">\r\n");
        out.write("                                    <a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal\"><span>登录</span></a>\r\n");
        out.write("                                </li>\r\n");
        out.write("                                <li class=\"col-xs-push-1\">\r\n");
        out.write("                                    <a href=\"#\"><span>注册</span></a>\r\n");
        out.write("                                </li>\r\n");
        out.write("\r\n");
        out.write("                            </ul>\r\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f1.setParent(null);
    // /jsp/common/navigation.jsp(61,24) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.user != null}", java.lang.Boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
    if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                            <ul id=\"haslogin\" class=\"nav navbar-nav \" style=\"\">\r\n");
        out.write("                                <li class=\"col-xs-push-1 hidden-xs\">\r\n");
        out.write("                                    <a href=\"#\" style=\"padding-top: 2px;padding-bottom: 0px;\">\r\n");
        out.write("                                        <img src=\"img/testw.jpg\" style=\"width: 45px;height: 45px;border-radius: 50%;\" />\r\n");
        out.write("                                    </a>\r\n");
        out.write("                                </li>\r\n");
        out.write("                                <li class=\"col-xs-push-1 dropdown\">\r\n");
        out.write("                                    <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">\r\n");
        out.write("                                        <span id=\"info_username\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.userName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
        out.write("</span> <span class=\"caret\"></span>\r\n");
        out.write("                                    </a>\r\n");
        out.write("                                    <ul id=\"mydropdownm\" class=\"dropdown-menu\" style=\"background-color: rgb(51,51,51);\">\r\n");
        out.write("                                        <li>\r\n");
        out.write("                                            <a href=\"#\"><span>个人信息</span></a>\r\n");
        out.write("                                        </li>\r\n");
        out.write("                                        <li>\r\n");
        out.write("                                            <a href=\"#\"><span>我的投稿</span></a>\r\n");
        out.write("                                        </li>\r\n");
        out.write("                                        <li class=\"divider\" style=\"color: white;\"></li>\r\n");
        out.write("                                        <li>\r\n");
        out.write("                                            <a href=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
        out.write("/user/loginout\"><span>退出</span></a>\r\n");
        out.write("                                        </li>\r\n");
        out.write("                                    </ul>\r\n");
        out.write("                                </li>\r\n");
        out.write("                            </ul>\r\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
    return false;
  }
}
