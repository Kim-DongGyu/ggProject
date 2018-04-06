<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.js"></script>
<script>
$(function(){
    $('.datetimepicker').appendDtpicker({'locale':'ko'});
});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="write">
	<table>

		<tr>
			<td>id</td>
			<td><input type="text" name="memberId"></td>
		</tr>
		
		<tr>
			<td>CarNum</td>
			<td>
			<select name="carNum">
					<option>선택하세요</option>
				<c:forEach items="${contract}" var="dto">
					<option>${dto.carNum}</option>
				</c:forEach>		
			</select>
			</td>
		</tr>

<!-- 		<tr> -->
<!-- 			<td> 차종 선택</td> -->
<!-- 			<td> -->
<!-- 					<select> -->
<%-- 				<c:forEach items="${constract}" var="dto"> --%>
<%-- 					<option>${dto.carKind}</option> --%>
<%-- 				</c:forEach>		 --%>
<!-- 			</select> -->
<!-- 			</td> -->
<!-- 		</tr> -->
		<tr>
			<td>대여일시</td>
			<td><input type="text" name="rentaldate"  class="datetimepicker" /></td>
		</tr>
		<tr>
			<td>반납일시</td>
			<td><input type="text" name="returndate"  class="datetimepicker" /></td>
		</tr>
		<tr>
			<td>대여료</td>
			<td><input type="text" name="sumprice"></td>
		</tr>
		
		<tr>
			<td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="contractList">목록보기</a></td>
		</tr>
		
	</table>
</form>


</body>
</html>