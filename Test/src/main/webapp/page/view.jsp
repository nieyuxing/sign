<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);
	response.setContentType("text/html;charset=UTF-8");
%> 

<!DOCTYPE >
<html >
<base href="/Vote/"> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
<jsp:include page="top.jsp" />
<div id="vote" class="wrap">
	<h2>查看投票</h2>
	<ul class="list">
		<li>
			<input type="hidden" name="vsId" value="${subject.vsId}" id="vsId"></input>
			<h4>${subject.vsTitle}</h4>
			<p class="info">共有 ${subject.optionCount} 个选项，已有 ${subject.voteCount} 个网友参与了投票。</p>
				<ol>
				  <s:iterator value="subject.options" status="status"> 
					<li><s:property value="option.name"/>
						<div class="rate">
							<div class="ratebg"><div class="percent" style="width:<s:property value='statPercent[id]'/>%"></div></div>
							<p><s:property value="stat[id]"/>票<span>(<s:property value="statPercent[id]"/>%)</span></p>
						</div>
					</li>
				  </s:iterator>	
				</ol>
				<div class="goback"><a href="Subject!list.action?entityId=<s:property value='subject.id'/>">返回投票列表</a></div>
		</li>
	</ul>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>

<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/view.js"></script>
</body>
</html>
