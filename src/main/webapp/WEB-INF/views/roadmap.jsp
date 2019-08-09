<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
<!--import PDF Viewer (pdfjs) -->
<script src="<c:url value="/resources/js/pdfjs/build/pdf.js" />"></script>

<title>동의대학교 컴퓨터소프트웨어 공학과</title>
</head>


<body>
	<!--메뉴네비바 -->
	<div class="container py-2">
		<nav id="menunav" class="navbar float-top navbar-expand-lg"> <a
			class="navbar-brand" href="/webapp/home" class="d-inline-block">
			<img src="<c:url value="/resources/images/logo.png" />" />
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mx-auto">
				<li class="nav-item"><a class="nav-link" href="/webapp/home">
						홈</a></li>
				<li class="nav-item dropdown active"><a
					class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false" href="overview"> 학과
						안내 </a>
					<div class="dropdown-menu" aria-labelledby="dropdown1">
						<a class="dropdown-item submenutext" href="overview">학과 소개</a> <a
							class="dropdown-item submenutext" href="intention">교과 개요</a> <a
							class="dropdown-item submenutext" href="roadmap">학과 커리큘럼</a>
					</div></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false" href="overview">
						입학안내 </a>
					<div class="dropdown-menu" aria-labelledby="dropdown2">
						<a class="dropdown-item submenutext"
							href="http://ipsi.deu.ac.kr/main/default.asp">학부</a> <a
							class="dropdown-item submenutext"
							href="https://grd.deu.ac.kr/grd/content/9">대학원</a>
					</div></li>
				<li class="nav-item"><a class="nav-link menutext" href="abeek">
						공학인증제도 </a></li>
				<li class="nav-item"><a class="nav-link menutext"
					href="professor"> 교수진 </a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false" href="overview"> 게시판
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item submenutext" href="notice">공지사항</a> <a
							class="dropdown-item submenutext" href="notice">공모전/취업정보</a>
					</div></li>
			</ul>
		</div>
		</nav>
	</div>

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
						alt="Second slide"
						style="max-height: 180px; overflow: hidden; object-fit: cover; object-position: center;">
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



	<div class="row">
		<!-- 왼쪽 사이드바는 lg-3 xs-12 로 한다. -->
		<div class="col-lg-2 hidden-md-down offset-lg-1"
			style="padding-left: 1%; padding-right: 1%;">
			<div class="sidebartitle">학과 안내</div>
			<!-- Vertical Menu-->
			<nav class="nav flex-column bg-white rounded p-3"> 
			 <a href="overview"
				class="nav-link px-4 py-3 my-1 shadow-sm sidebarmenu">
				<i class="fas fa-university mr-2"></i>학과 소개
			 </a> 
			 <a href="intention"
				class="nav-link py-3 my-1 px-4 shadow-sm  sidebarmenu">
				<i class="fas fa-graduation-cap mr-1"></i>교과 개요
			</a> 
			<a href="roadmap"
				class="nav-link bg-info active text-white px-4 py-3 my-1 shadow-sm sidebarmenu">
				<i class="fa fa-archway mr-1"></i>학과 커리큘럼
			</a> 
			</nav>
			<!-- End -->
		</div>

		<div class="col-lg-8 col-xs-12">
			<div class="tabs">
				<div class="container">
					<div class="row mx-0">
						<!--페이지 네비게이터(콘텐츠 탭 윗부분)-->
						<div class="col-xl-12 navigator">
							<a class="title"><i class="fas fa-archway"></i>&nbsp;&nbsp;학과커리큘럼</a>
							<a>홈 > 학과안내 > 학과커리큘럼</a>
						</div>
						<div class="col-xs-12">
							<ul class="nav nav-pills">
								<li class="active"><a class="active" href="#tab_a" data-toggle="pill">
										최신교육과정 편성표 </a></li>
								<li><a href="#tab_b" data-toggle="pill"> 학과과정 연계표 </a></li>
							</ul>
						</div>
					</div>

					<!-- 콘텐츠 탭 행 a=전공과목연계표, b=교과과정 , c = 교과개요 -->
					<div class="row">
						<div class="col-xl-12 mx-0" style="min-height: 300px">
							<div class="tab-content">
								<div class="tab-pane fade show active" id="tab_a">
									<div class="col-xl-12 align-middle ">
										<h5 style="margin-bottom:3%;font-weight:700;font-size:1.2rem;color:#333;
											padding-bottom:2%;">
											<i class="fas fa-chevron-circle-right" style="font-size:1.3rem;
											color:#333;margin-right:1%;">
											</i>교육과정편성표
										</h5>
										<iframe
											src="<c:url value="/resources/images/2019curriculum.pdf"/>"
											style="margin-left: auto 0; margin-right: auto 0; width: 100%; height: 130vh;"
											frameborder="0"> </iframe>

									</div>
								</div>

								<div class="tab-pane" id="tab_b">
									<div class="container-fluid mb-5">
										<div class="row">
											<div class="col-md-12">
											<h5 style="margin-bottom:3%;font-weight:700;font-size:1.2rem;color:#333;
											padding-bottom:2%;">
											<i class="fas fa-chevron-circle-right" style="font-size:1.3rem;
											color:#333;margin-right:1%;">
											</i>학과 과정연계표
											</h5>
												<img
													src="<c:url value="/resources/images/2019seroadmap.gif" />"
													class="img-fluid" alt="1"> <img
													src="<c:url value="/resources/images/2019seroadmap_2.gif" />"
													class="img-fluid" alt="2">
											</div>
										</div>
									</div>
								</div>





							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>






<!-- 푸터 -->
	<footer class="mt-3 pt-2 section footer-classic context-dark" style="background: #fff;border-top:1px solid #ddd;">
	<div class="container">
		<div class="row py-3">
			<div class="col-md-3 offset-md-3 mb-sm-4">
				<img class="w-100" src="<c:url value="/resources/images/logo.png"/>"/>
			</div>
			<div class="col-md-6">
					<div class="footertext">47340 부산광역시 부산진구 엄광로 176 (가야동) 정보공학관 9층</div>
					<div class="footertext">Tel.051-890-1114 Fax.051-890-123<br></div>
					<div class="copyright">Copyright 2019. DONGEUI UNIVERSITY S.E. MAJOR All Rights Reserved.</div>
			</div>
			
		</div>
	</div>
	<div class="row no-gutters social-container banner-background3">
		<div class="col">
			<a class="social-inner" href="https://www.deu.ac.kr/www"><span
				class="icon mdi mdi-facebook"></span><span>동의대학교 홈</span></a>
		</div>
		<div class="col">
			<a class="social-inner" href="https://urp.deu.ac.kr/loginDeuF.aspx"><span
				class="icon mdi mdi-instagram"></span><span>종합정보시스템</span></a>
		</div>
		<div class="col">
			<a class="social-inner" href="https://dap.deu.ac.kr/sso/login.aspx"><span
				class="icon mdi mdi-twitter"></span><span>학생경력관리포탈</span></a>
		</div>
		<div class="col">
			<a class="social-inner" href="http://sugang.deu.ac.kr:8080/DEUSugang_Login.aspx"><span
				class="icon mdi mdi-youtube-play"></span><span>수강신청시스템</span></a>
		</div>
	</div>
	</footer>
</body>




</html>