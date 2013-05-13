<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags" %>
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
        width: 100%;/*保证width：100%有效*/
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      } 

	  table{width: 90%;}/*保证width：100%有效*/

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
				<div style="margin: 0;" class="btn-toolbar">
					<div class="btn-group">
						<button data-toggle="dropdown" class="btn dropdown-toggle">
							标记为... <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">已读</a></li>
							<li><a href="#">未读</a></li>
							<li><a href="#">重要</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button data-toggle="dropdown" class="btn dropdown-toggle">
							转移到...<span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">收件箱</a></li>
							<li><a href="#">发件箱</a></li>
							<li><a href="#">垃圾箱</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button class="btn dropdown-toggle">转发</button>
						<span></span>
						<button class="btn dropdown-toggle">返回</button>
					</div>
				</div>
				<p/>
				<div>
					<s:url var="remoteurl" action="GridBox" namespace="/test" ></s:url>
					<sjg:grid id="gridbox"
						caption="" 
						dataType="json"
						href="%{remoteurl}" 
						pager="true" 
						navigator="true"
						navigatorSearchOptions="{sopt:['eq','ne','lt','gt']}"
						gridModel="gridModel" 
						rowList="10,15,20,25,50" 
						rowNum="20"
						onSelectRowTopics="rowselect"
						viewrecords="true"
						width="800" 
						shrinkToFit="false">
						<sjg:gridColumn name="sender" index="sender" title="发件人" width="100" editable="false" sortable="true" search="true" searchoptions="{sopt:['eq','ne','lt','gt']}" />
						<sjg:gridColumn name="receiver" index="receiver" title="收件人" width="100" sortable="true" search="true" searchoptions="{sopt:['eq','ne','lt','gt']}" />
						<sjg:gridColumn name="subject" index="subject" title="邮主题" width="200" sortable="true" />
						<sjg:gridColumn name="attachment" index="attachment" title="附件" width="100"/>
						<sjg:gridColumn name="timer" index="timer" title="时间" sortable="true" />
					</sjg:grid>
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
