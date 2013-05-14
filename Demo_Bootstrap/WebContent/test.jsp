<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sjr" uri="/struts-jquery-richtext-tags" %>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
	<sj:head/>
  </head>

<body>
			<%-- <sjr:ckeditor
					id="richtextEditor"
					name="echo"
					rows="10"
					cols="80"
					width="730"
					height="250"
					uploads="true"
					onFocusTopics="focusRichtext"
					onBlurTopics="blurRichtext"
					onChangeTopics="highlightRichtext"
					value="Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est. Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."
					/> --%>
				<div class="span4">					
					<s:url var="remoteurl" action="GridBox" namespace="/test" ></s:url>
					<sjg:grid 
						id="gridbox"
						caption="" 
						dataType="json"
						href="%{remoteurl}" 
						pager="true" 
						navigator="true"
						navigatorSearchOptions="{sopt:['eq','ne','lt','gt']}"
						gridModel="gridModel" 
						rowList="10,20,50" 
						rowNum="20"
						onSelectRowTopics="rowselect"
						viewrecords="true"
						multiselect="true"
						shrinkToFit="true"
						>
						<sjg:gridColumn name="sender" index="sender" title="发件人" cssStyle="width:10%"  editable="false" sortable="true" search="true" searchoptions="{sopt:['eq','ne','lt','gt']}" />
						<sjg:gridColumn name="reciever" index="reciever" title="收件人" cssStyle="width:10%" sortable="true" search="true" searchoptions="{sopt:['eq','ne','lt','gt']}" />
						<sjg:gridColumn name="subject" index="subject" title="邮主题" cssStyle="width:40%" sortable="true" />
						<sjg:gridColumn name="attachment" index="attachment" title="附件" cssStyle="width:20%"/>
						<sjg:gridColumn name="timer" index="timer" title="时间" cssStyle="width:20%" sortable="true" />
					</sjg:grid>	
				</div>
</body>
</html>
