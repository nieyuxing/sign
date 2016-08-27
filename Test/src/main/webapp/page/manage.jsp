<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);
	response.setContentType("text/html;charset=UTF-8");
%>   

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="/Vote/"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理投票</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>
<body>
<jsp:include page="top.jsp" />
<div id="vote" class="wrap">
	<h2>投票列表</h2>
	<ul class="list">
	
	<s:iterator value="subjects" status="status">
		<li  <s:if test="#status.isOdd()">class="odd" </s:if>>
			<h4>
				<em><a href="Subject!read.action?entityId=<s:property value='id'/>">维护</a></em>
				<a href="#"><s:property value="title"/></a>
			</h4>
			<p class="info">共有 <s:property value="options.size"/> 个选项，已有 <s:property value="votes[id]"/> 个网友参与了投票。</p>
		</li>
	</s:iterator>
	</ul>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>
