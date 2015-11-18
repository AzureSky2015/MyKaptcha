<%@page import="com.google.code.kaptcha.Constants"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String s = request.getParameter("s"); 
	s = new String(s.getBytes("ISO8859-1"),"UTF-8");
	String d = (String)session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
	response.getWriter().print(s + " = " + d + "\n" +(s.equals(d) ? "验证成功" : "验证失败"));
%>
</body>
</html>