<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>  
   
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
	
<link rel="stylesheet" href="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.js"></script>

<script type="text/javascript">
$(function(){
    $(".datetimepicker").appendDtpicker({'locale':'ko'
    	
    });
});
</script>
    <!-- Required meta tags -->
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>B-Hero : Home</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="assets/images/favicon.ico"/>
    <!-- Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <!-- Slick slider -->
    <link href="assets/css/slick.css" rel="stylesheet">
    <!-- Gallery Lightbox -->
    <link href="assets/css/magnific-popup.css" rel="stylesheet">
    <!-- Skills Circle CSS  -->
    <link rel="stylesheet" type="text/css" href="https://unpkg.com/circlebars@1.0.3/dist/circle.css">
    

    <!-- Main Style -->
    <link href="style.css" rel="stylesheet">

    <!-- Fonts -->

    <!-- Google Fonts Raleway -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,400i,500,500i,600,700" rel="stylesheet">
	<!-- Google Fonts Open sans -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,700,800" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 <!--START SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#">
      <i class="fa fa-angle-up"></i>
    </a>
  <!-- END SCROLL TOP BUTTON -->
  	
  	<!-- Start Header -->
	<header id="mu-hero">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light mu-navbar">
				<!-- Text based logo -->
				<a class="navbar-brand mu-logo" href="index.html"><span>GG Rent Car</span></a>
				<!-- image based logo -->
			   	<!-- <a class="navbar-brand mu-logo" href="index.html"><img src="assets/images/logo.png" alt="logo"></a> -->
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="fa fa-bars"></span>
			  </button>

			  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto mu-navbar-nav">
			      <li class="nav-item active">
			        <a href="index.html">Home</a>
			      </li>
			       <li class="nav-item"><a href="contact.html">차량종류</a></li>
			     
			      <li class="nav-item dropdown">
				        <a class="dropdown-toggle" href="blog.html" role="button" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">예약</a>
				       <div class="dropdown-menu" aria-labelledby="navbarDropdown">
				          <a class="dropdown-item" href="contract">예약하기</a>
				          <a class="dropdown-item" href="contractList">예약확인</a>
				          
			       <li class="nav-item dropdown">
				        <a class="dropdown-toggle" href="blog.html" role="button" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">고객센터</a>
				       <div class="dropdown-menu" aria-labelledby="navbarDropdown">
				          <a class="dropdown-item" href="blog.html">공지사항</a>
				          <a class="dropdown-item" href="blog-single.html">1:1문의</a>
				        </div>
				    </li>
			        <li class="nav-item"><a href="contact.html">로그인</a></li>
			        <li class="nav-item"><a href="404.html">회원가입</a></li>
			    </ul>
			  </div>
			</nav>
		</div>
	</header>

<form action="write">
	<table>

		<tr>
			<td>id</td>
			<td><input type="text" name="memberId"></td>
		</tr>
		
		<tr>
			<td>차량 번호</td>
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

			
	<!-- Start footer -->
	<footer id="mu-footer">
		<div class="mu-footer-top">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="mu-single-footer">
						<h5>GG Rent Car</h5>
							<!-- <img class="mu-footer-logo" src="assets/images/logo.png" alt="logo"> -->
							<p>지지렌트카와 함께 즐거운 여행을 시작하세요 </p>
							<div class="mu-social-media">
								<!-- <a href="#"><i class="fa fa-facebook"></i></a>
								<a class="mu-twitter" href="#"><i class="fa fa-twitter"></i></a>
								<a class="mu-pinterest" href="#"><i class="fa fa-pinterest-p"></i></a>
								<a class="mu-google-plus" href="#"><i class="fa fa-google-plus"></i></a>
								<a class="mu-youtube" href="#"><i class="fa fa-youtube"></i></a> -->
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="mu-single-footer">
							<h3>주소</h3>
							<ul class="list-unstyled">
							  	<li class="media">
								   <span class="fa fa-home"></span>
								    <div class="media-body">
								    	<p>서울특별시 마포구 합정동 희우정로 1길 3번지 </p>
								    </div>
							  	</li>
							</ul>
						</div>
					</div>
					
					<div class="col-md-3">
						<div class="mu-single-footer">
							<h3>연락처</h3>
							<ul class="list-unstyled">
							  <li class="media">
							    <span class="fa fa-phone"></span>
							    <div class="media-body">
							       <p>+053 944 5380</p>
							     	<p>+010 6668 5687</p>
							    </div>
							  </li>
							</ul>
						</div>
					</div>
						<div class="col-md-3">
						<div class="mu-single-footer">
							<h3>이메일</h3>
							<ul class="list-unstyled">
							  <li class="media">
							    <span class="fa fa-envelope"></span>
							    <div class="media-body">
							     <p>porori0730@naver.com</p>
							     <p>porori1591069@gmail.com</p>
							    </div>
							  </li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<div class="mu-footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mu-footer-bottom-area">
							<p class="mu-copy-right">&copy; Copyright <a rel="nofollow" href="http://markups.io">markups.io</a>. All right reserved.</p>
						</div>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- End footer -->
	
<!-- About us Skills Circle progress  -->
	<script>
		// First circle
	    new Circlebar({
        element : "#circle-1",
        type : "progress",
	      maxValue:  "90"
	    });
		
		// Second circle
	    new Circlebar({
        element : "#circle-2",
        type : "progress",
	      maxValue:  "84"
	    });

	    // Third circle
	    new Circlebar({
        element : "#circle-3",
        type : "progress",
	      maxValue:  "60"
	    });

	    // Fourth circle
	    new Circlebar({
        element : "#circle-4",
        type : "progress",
	      maxValue:  "74"
	    });

	</script>

</body>
</html>