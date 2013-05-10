<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sjr" uri="/struts-jquery-richtext-tags" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
<sj:head/>
  </head>

<body>
			<sjr:ckeditor
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
					/>
    <script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>
