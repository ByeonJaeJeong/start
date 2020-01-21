<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String first = request.getParameter("first");
	String second = request.getParameter("second");
%>
	<h1>WebContent/core/if.jsp</h1>
	
	<c:set var="txt" value="JSTL"/>
	<c:out value="${txt }"/><br>
	<c:if test="${txt == 'JSTL' }">
		두개의 값이 동일합니다.
	</c:if>
	
<!-- 	정보 2개 입력받아서 동일페이지 페이지에서 값을 비교 -->
<!-- 	두개의 값이 같은가? 큰가? 작은가? -->
<%	if(first != null){ 
		
	} %>
	
	<c:if test="${ param.first > param.second}">
		first가 크다.
	</c:if>
	<c:if test="${ param.first < param.second}">
		Second가 크다.
	</c:if>
	<c:if test="${ (param.first == param.second) and (param.first != null)}">
		First와 Second가 같다.
	</c:if>
	<form action="if.jsp" method="post">
		<input type="text" name="first"><br>
		<input type="text" name="second">
		<input type="submit" value="확인">
	</form>
	
	
	
	
	
	
	
	
	
</body>
</html>