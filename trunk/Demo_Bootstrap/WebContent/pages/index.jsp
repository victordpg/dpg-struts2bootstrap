<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sjr" uri="/struts-jquery-richtext-tags" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      } 

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
      }
    </style>
    <link href="../bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../bootstrap/js/html5shiv.js"></script>
    <![endif]-->
	<sj:head/>
  </head>

  <body>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="brand" href="#">Home</a>
          <div class="nav-collapse collapse">
            <div class="btn-group pull-right">
                <button data-toggle="dropdown" class="btn btn-inverse dropdown-toggle">
                	<i class="icon-user icon-white"></i>User 
                	<span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                  <li><a href="#">Profile</a></li>
                  <li><a href="#">Setting</a></li>
                  <li class="divider"></li>
                  <li><a href="#"><i class=icon-off></i>Log out</a></li>
                </ul>
           </div>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<div class="well sidebar-nav">
					<button class="btn btn-large btn-block btn-info" type="button"
						style="max-width: 400px; margin: 0 auto 10px;"><strong>写信</strong></button>
					<button class="btn btn-large btn-block btn-info" type="button"
						style="max-width: 400px; margin: 0 auto 10px;"><strong>收信</strong></button>
					<ul class="nav nav-list">
						<li><a href="#">收件箱</a></li>
						<li><a href="#">发件箱</a></li>
						<li><a href="#">草稿箱</a></li>
						<li><a href="#">垃圾箱</a></li>
					</ul>
				</div>
			</div>

			<div class="span10">
				<div class="btn-group">
					<button class="btn btn-small">发送</button>
					<span></span>
					<button class="btn btn-small">暂存</button>
					<span></span>
					<button class="btn btn-small">取消</button>
					<span></span>
					<button class="btn btn-small">返回</button>
					<p/>				
				</div>
				<div>
					<s:form>
						<sjr:ckeditor 
						    id="richtextEditor" 
							cssClass="richTextClass" 
							name="echo" 
							height="400" 
							uploads="true"
							onFocusTopics="focusRichtext" 
							onBlurTopics="blurRichtext"
							onChangeTopics="highlightRichtext"
							value="Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est. Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos." />
					</s:form>
				</div>
			</div>
		</div>
	</div>
	<hr>
    <footer>
    <p align="center">&copy; Company 2013</p>
    </footer>

    <!-- Placed at the end of the document so the pages load faster -->
    <!-- 由于我们已经使用了<%@ taglib prefix="sj" uri="/struts-jquery-tags" %> -->
    <!-- 所以这里应该注意jquery.js导入，因为如果此js与struts-jquery内的版本不用的话将会导致相应的struts2-jquery-tag失效 -->
    <!-- struts2-jquery-plugin-3.5.1.jar内使用的jquery版本为1.83，而此处bootstrap使用的版本为1.91，亦可将版本统一。 -->
    <%--  <script src="../bootstrap/js/jquery.js"></script> --%>
    <script src="../bootstrap/js/bootstrap.js"></script>
  </body>
</html>
