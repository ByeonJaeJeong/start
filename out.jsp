<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL의 core라이브러리를 사용하기 위해 URI속성값을 core라이브러리가 있는 주소로 사용
		접두사 속성 prefix 속성값은 C를 사용
 -->
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/core/out.jsp</h1>
	<h2>Core 라이브러리</h2>
	<%
		out.println("출력 10+10<br>");
	%>
	<%="출력2<br>" %>
	<%=10+10 %><br>
	<c:out value="출력3"/><br>
	<c:out value="10+10"/><br>
	
<!-- 	el표현식 : $값	-->
	<c:out value="${10+10}"/>
	<hr>
	<h3>EL태그는 null값이 자동으로 빈 공백으로 처리 출력<br>
	빈 공백을 다른 형태의 값으로 출력하고 싶다면, default 속성을 사용하면 된다.
	</h3>
	<c:out value="${member.id}" default="null값 대신 출력"/>
	
	<hr><hr>
	
	&lt;abc>는 abc입니다.<br>
	
	<c:out value="<abc>는 abc입니다"/><br>
</body>
</html>