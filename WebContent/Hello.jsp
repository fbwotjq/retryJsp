<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hello jsp title</title>
</head>
<body>
	<h1>제목입니다.</h1>
	<p>현재 시간은 <%out.println(Calendar.getInstance().getTime());%> 입니다... 그리고 본문입니다.</p>
	<p>
	<%
		String paramater = request.getParameter("param");
		int age = Integer.parseInt(request.getParameter("age"));
		
		if("JS".equals(paramater)) {
			out.println("당신은 재섭입니다.");
		} else if("IS".equals(paramater)) {
			out.println("당신은 이수입니다.");
		} else {
			out.println("당신은 해커입니다.");
		}
	%>
	<br/>
	당신에 나이는 <%=age%>살입니다.
	</p>
</body>
</html>