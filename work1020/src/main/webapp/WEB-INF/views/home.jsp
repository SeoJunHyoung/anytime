<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	
	<div>
		<form action="/time/start" method="get" target="zeroframe">
			<div id="content">
				<h1>테스트 페이지입니다</h1>
			</div>
			<input type='submit' value='시간'>
		</form>
	</div>
	
	
	<iframe name="zeroframe" frameborder="0"/>

</body>
</html>
