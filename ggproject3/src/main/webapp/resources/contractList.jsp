<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<table width="500" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>예약번호</td>
		<td>ID</td>
		<td>차량번호</td>		
		<td>대여료</td>
		<td>대여일</td>
		<td>반납일</td>
	<tr>
	<c:forEach items="${contractList}" var="dto">
	<tr>
		<td>${dto.conNum}</td>
		<td>${dto.memberId}</td>
		<td>${dto.carNum}</td>		
		<td>${dto.sumprice}</td>
		<td>${dto.rentaldate}</td>
		<td>${dto.returndate}</td>		
	<tr>
	</c:forEach>
</table>
<p><a href="contract">예약하기</a></p>
</body>
</html>