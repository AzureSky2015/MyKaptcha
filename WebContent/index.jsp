<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function reLoadCode() {
		document.getElementById("img").src = "<%=request.getContextPath()%>/randomCode.jpg?r=" + new Date().getTime();
	}
</script>
</head>
<body>
	<form action="check.jsp" id="vertify" method="get">
		<img src='randomCode.jpg' id="img"/><a href=javascript:reLoadCode()>看不清</a><br/>
		<input type="text" name="s"/>
		<input type="submit" value="submit" />
	</form>
</body>
</html>