<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- import jQuery -->
<script src="<c:url value="/resources/js/jQuery/jquery-3.4.1.min.js" />"></script>
<!-- import custom CSS -->
<link href="<c:url value="/resources/css/fontSize.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<!-- import fontawesome -->
<script src="<c:url value="/resources/js/fontawesome/all.min.js" />"></script>
<!-- import googlefonts -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap&subset=korean"
	rel="stylesheet">
<!-- import bootstrap -->
<script src="<c:url value="/resources/js/bootstrap/bootstrap.min.js" />"></script>
<link href="<c:url value="/resources/css/bootstrap/bootstrap.css" />"
	rel="stylesheet">
<title>동의대학교 컴퓨터소프트웨어 공학과</title>
</head>


<body>

	<!--최상단 네비바 -->
	<nav class="navbar float-top navbar-expand-lg"
		style="padding:0.5% 2% 0.5% 2%;">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarText" aria-controls="navbarText"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<a class="navbar-brand flex-lg-row" href="/webapp/home"
		class="d-inline-block"> <img src="resources/images/logo.png"
		style="width: 35%; height: auto;" alt="" /> <span class="navbar-text"
		style="color: rgba(44, 44, 44, 0.9); border-left: 1px solid #999; margin-left: 2%; padding-left: 4%; font-size: 1.1rem; font-family: 'Noto Sans KR'; font-weight: 400 !important;">
			컴퓨터소프트웨어공학과</span>
	</a> </nav>

	<!--메뉴네비바 -->
	<nav id="menunav" class="navbar float-top navbar-expand-lg">
	<div class="collapse navbar-collapse" id="navbarText">
		<ul class="navbar-nav mx-auto">
			<li class="nav-item"><a class="nav-link" href="/webapp/home">
					홈</a></li>
			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false" href="overview"> 학과 안내
			</a>
				<div class="dropdown-menu" aria-labelledby="dropdown1">
					<a class="dropdown-item submenutext" href="overview">학과 소개</a> <a
						class="dropdown-item submenutext" href="intention">교육 목표</a> <a
						class="dropdown-item submenutext" href="roadmap">학과 커리큘럼</a>
				</div></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false" href="overview"> 입학안내
			</a>
				<div class="dropdown-menu" aria-labelledby="dropdown2">
					<a class="dropdown-item submenutext" href="#">학부</a> <a
						class="dropdown-item submenutext" href="#">대학원</a>
				</div></li>
			<li class="nav-item"><a class="nav-link menutext" href="#home">
					공학인증 </a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false" href="overview"> 교수진
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item submenutext" href="#">김태석 교수님</a> <a
						class="dropdown-item submenutext" href="#">권오준 교수님</a> <a
						class="dropdown-item submenutext" href="#">권순각 교수님</a> <a
						class="dropdown-item submenutext" href="#">김성우 교수님</a> <a
						class="dropdown-item submenutext" href="#">이종민 교수님</a> <a
						class="dropdown-item submenutext" href="#">박유현 교수님</a> <a
						class="dropdown-item submenutext" href="#">임영호 교수님</a> <a
						class="dropdown-item submenutext" href="#">장희숙 교수님</a>
				</div> </a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false" href="overview"> 게시판
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item submenutext" href="#">공지사항</a> <a
						class="dropdown-item submenutext" href="#">공모전/취업정보</a>
				</div></li>
		</ul>
	</div>
	</nav>

	<!--슬라이더 -->
	<!--Carousel Wrapper-->
	<div id="maincarousel" class="carousel slide carousel-fade"
		data-ride="carousel">
		<!--Slides-->
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active">
				<!--Mask color-->
				<div class="view">
					<img class="w-100"
						src="<c:url value="/resources/images/subslider.jpg" />"
						alt=""
						style="max-height: 180px; overflow: hidden; object-fit: none; object-position: center;">
					<div class="carousel-caption d-xl-block  ">
						<div class="pagesubtitle">GLOBAL LEADER</div>
						<div class="pagetitle">창의적인 글로벌 소프트웨어 인재 육성학과</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.Slides-->
	</div>
	<!--/.Carousel Wrapper-->


	<!--좌측 사이드바 -->
	<div class="row">
		<!-- 왼쪽 사이드바는 lg-2(1offset) 우측콘텐츠는 lg-8 로 한다. -->
		<div class="col-lg-2 hidden-md-down offset-lg-1"
				style="padding-left: 1%; padding-right: 1%;">
			<div class="sidebartitle">학과 안내</div>
			<!-- Vertical Menu-->
			<nav class="nav flex-column bg-white rounded p-3"> 
			<a href="overview"
				class="nav-link px-4 py-3 shadow-sm rounded-pill my-1 sidebarmenu">
				<i class="fas fa-university"></i> 학과 소개</a> 
			<a href="intention" class="nav-link active bg-info py-3 my-1 px-4 shadow-sm rounded-pill sidebarmenu text-white"> <i
				class="fas fa-graduation-cap"></i> 교육 목표</a> 
			<a href="roadmap" class="nav-link px-4 rounded-pill py-3 my-1 shadow-sm sidebarmenu"> <i
				class="fa fa-archway"></i> 학과 커리큘럼
			</a> 
			</nav>
			<!-- End -->
		</div>
		
		<div class="col-lg-8 col-xs-12">
		</div>
		
	</div>







	<!-- 푸터 -->
	<div class="position-relative page-footer font-small footerdesign pt-4">
	<!-- Footer Links -->
	<div class="container text-center text-md-left">
		<!-- Grid row -->
		<div class="row">
			<!-- Grid column -->
			<div class="col-md-8">
				<!-- Content -->
				<h4 class="bold" style="margin-bottom: 5%;">컴퓨터 소프트웨어공학과</h4>
				<p>47340 부산광역시 부산진구 엄광로 176 (가야동) 정보공학관 9층</p>
				<p>Tel.051-890-1114 Fax.051-890-123</p>
			</div>
			<!-- Grid column -->
			<hr class="clearfix w-100 d-md-none pb-3">
			<!-- Grid column -->
			<div class="col-md-2">
				<!-- Links -->
				<h4 class="bold" style="margin-bottom: 10%;">관련 링크</h4>
				<ul class="list-unstyled">
					<li style="margin-bottom: 1%;"><a href="https://deu.ac.kr">동의대학교
							홈페이지</a></li>
					<li style="margin-bottom: 1%;"><a href="#!">입학정보</a></li>
				</ul>
			</div>
			<!-- Grid column -->
			<!-- Grid column -->
			<div class="col-md-2">
				<!-- Links -->
				<h4 class="bold" style="margin-bottom: 10%;">학과 SNS</h4>
				<ul class="list-unstyled">
					<li style="margin-bottom: 1%;"><a href="#!">Instagram</a></li>
					<li style="margin-bottom: 1%;"><a href="#!">Facebook</a></li>
				</ul>
			</div>
			<!-- Grid column -->
		</div>
		<!-- Grid row -->
	</div>
	<!-- Footer Links --> <!-- Copyright --> <!-- Copyright --> 
	</div>


</body>


</html>