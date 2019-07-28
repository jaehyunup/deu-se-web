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
				<li class="nav-item dropdown"><a
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
				<li class="nav-item active"><a class="nav-link menutext"
					href="professor"> 교수진 </a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false" href="notice"> 게시판 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item submenutext" href="notice">공지사항</a> <a
							class="dropdown-item submenutext" href="#">공모전/취업정보</a>
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
			<div class="sidebartitle">교수진</div>
			<!-- Vertical Menu-->
			<nav class="nav flex-column bg-white p-3"> <a
				href="professor"
				class="nav-link px-4 bg-info text-white shadow py-3 my-1 sidebarmenu">
				<i class="fas fa-university"></i>&nbsp; 교수진 소개
			</a> </nav>
			<!-- End -->
		</div>

		<div class="col-lg-8 col-xs-12">
			<div class="tabs">
				<div class="container-fulid">
					<div class="row mx-0">
						<!--페이지 네비게이터(콘텐츠 탭 윗부분)-->
						<div class="col-xl-12 navigator">
							<a class="title"><i class="fas fa-archway"></i>&nbsp;&nbsp;소프트웨어공학과
								교수진 </a> <a>홈 > 교수진 > 교수진 소개</a>
						</div>
					</div>

					<div class="row justify-content-center">
						<!-- 교수진 소개 1라인 -->
						<div class="col-md-4 col-sm-8">
							<div class="card mb-4 shadow">
								<div class="card-header justify-content-center">
									<img src="<c:url value="/resources/images/professor/1.gif" />"
										alt="image"
										style="display: block; margin: 0px auto; width: 17rem; height: 17rem; overflow: hidden; object-fit: cover; object-position: center;">
								</div>
								<div class="card-body">
									<strong class="d-inline-block mb-2 text-primary">교수</strong>
									<h3 class="mb-0">
										<a class="text-dark" href="#">김태석</a>
									</h3>
									<div class="mb-1 text-muted">자연어 처리,프로그래밍 언어</div>
									<p class="card-text mb-2">정보공학관 902호</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">TEL) </strong>051-890-1707
									</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">E-MAIL) </strong>tskim@deu.ac.kr
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-8">
							<div class="card mb-4 shadow">
								<div class="card-header justify-content-center">
									<img src="<c:url value="/resources/images/professor/2.gif" />"
										alt="image"
										style="display: block; margin: 0px auto; width: 17rem; height: 17rem; overflow: hidden; object-fit: cover; object-position: center;">
								</div>
								<div class="card-body">
									<strong class="d-inline-block mb-2 text-primary">교수</strong>
									<h3 class="mb-0">
										<a class="text-dark" href="#">권오준</a>
									</h3>
									<div class="mb-1 text-muted">인공지능,컴퓨터네트워크,정보보호</div>
									<p class="card-text mb-2">정보공학관 903호</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">TEL) </strong>051-890-1725
									</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">E-MAIL) </strong>ojkwon@deu.ac.kr
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-8">
							<div class="card mb-4 shadow">
								<div class="card-header justify-content-center">
									<img src="<c:url value="/resources/images/professor/3.gif" />"
										alt="image"
										style="display: block; margin: 0px auto; width: 17rem; height: 17rem; overflow: hidden; object-fit: cover; object-position: center;">
								</div>
								<div class="card-body">
									<strong class="d-inline-block mb-2 text-primary">교수</strong>
									<h3 class="mb-0">
										<a class="text-dark" href="#">권순각</a>
									</h3>
									<div class="mb-1 text-muted">멀티미디어정보처리,영상통신</div>
									<p class="card-text mb-2">정보공학관 904호</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">TEL) </strong>051-890-1727
									</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">E-MAIL) </strong>skkwon@deu.ac.kr
									</p>
								</div>
							</div>
						</div>
					</div>
					<!-- 교수진 소개 2라인 -->
					<div class="row justify-content-center">
						<div class="col-md-4 col-sm-8">
							<div class="card mb-4 shadow">
								<div class="card-header justify-content-center">
									<img src="<c:url value="/resources/images/professor/4.gif" />"
										alt="image"
										style="display: block; margin: 0px auto; width: 17rem; height: 17rem; overflow: hidden; object-fit: cover; object-position: center;">
								</div>
								<div class="card-body">
									<strong class="d-inline-block mb-2 text-primary">교수</strong>
									<h3 class="mb-0">
										<a class="text-dark" href="#">김성우</a>
									</h3>
									<div class="mb-1 text-muted">임베디드시스템,운영체제</div>
									<p class="card-text mb-2">정보공학관 905호</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">TEL) </strong>051-890-1728
									</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">E-MAIL) </strong>libero@deu.ac.kr
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-8">
							<div class="card mb-4 shadow">
								<div class="card-header justify-content-center">
									<img src="<c:url value="/resources/images/professor/6.gif" />"
										alt="image"
										style="display: block; margin: 0px auto; width: 17rem; height: 17rem; overflow: hidden; object-fit: cover; object-position: center;">
								</div>
								<div class="card-body">
									<strong class="d-inline-block mb-2 text-primary">교수</strong>
									<h3 class="mb-0">
										<a class="text-dark" href="#">이종민</a>
									</h3>
									<div class="mb-1 text-muted">모바일컴퓨팅,병렬처리,S/W공학,OOAD</div>
									<p class="card-text mb-2">정보공학관 907호</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">TEL) </strong>051-890-1736
									</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">E-MAIL) </strong>JONGMIN@deu.ac.kr
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-8">
							<div class="card mb-4 shadow">
								<div class="card-header justify-content-center">
									<img src="<c:url value="/resources/images/professor/7.gif" />"
										alt="image"
										style="display: block; margin: 0px auto; width: 17rem; height: 17rem; overflow: hidden; object-fit: cover; object-position: center;">
								</div>
								<div class="card-body">
									<strong class="d-inline-block mb-2 text-primary">교수</strong>
									<h3 class="mb-0">
										<a class="text-dark" href="#">박유현</a>
									</h3>
									<div class="mb-1 text-muted">인터넷 시스템,클러스터 시스템</div>
									<p class="card-text mb-2">정보공학관 901호</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">TEL) </strong>051-890-1737
									</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">E-MAIL) </strong>yhpark@deu.ac.kr
									</p>
								</div>
							</div>
						</div>
					</div>
					<!-- 교수진 소개 3라인 -->
					<div class="row justify-content-center">
						<div class="col-md-4 col-sm-8">
							<div class="card mb-4 shadow">
								<div class="card-header justify-content-center">
									<img src="<c:url value="/resources/images/professor/8.jpg" />"
										alt="image"
										style="display: block; margin: 0px auto; width: 17rem; height: 17rem; overflow: hidden; object-fit: cover; object-position: center;">
								</div>
								<div class="card-body">
									<strong class="d-inline-block mb-2 text-primary">교수</strong>
									<h3 class="mb-0">
										<a class="text-dark" href="#">임영호</a>
									</h3>
									<div class="mb-1 text-muted">컴퓨터 응용,컨텐츠 제작기술</div>
									<p class="card-text mb-2">정보공학관 808호</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">TEL) </strong>051-890-1847
									</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">E-MAIL) </strong>yhleem@deu.ac.kr
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-8">
							<div class="card mb-4 shadow">
								<div class="card-header justify-content-center">
									<img src="<c:url value="/resources/images/professor/9.gif" />"
										alt="image"
										style="display: block; margin: 0px auto; width: 17rem; height: 17rem; overflow: hidden; object-fit: cover; object-position: center;">
								</div>
								<div class="card-body">
									<strong class="d-inline-block mb-2 text-primary">교수</strong>
									<h3 class="mb-0">
										<a class="text-dark" href="#">장희숙</a>
									</h3>
									<div class="mb-1 text-muted">S/W공학,시스템분석설계,네트워크프로토콜</div>
									<p class="card-text mb-2">정보공학관 701호</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">TEL) </strong>051-890-1815
									</p>
									<p class="card-text mb-auto">
										<strong class="text-primary">E-MAIL) </strong>jang1052@deu.ac.kr
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-8">
							<div class="card mb-4 shadow">
								<div class="card-header justify-content-center">
									<img
										src="<c:url value="/resources/images/professor/10.jpeg" />"
										alt="image"
										style="display: block; margin: 0px auto; width: 17rem; height: 17rem; overflow: hidden; object-fit: cover; object-position: center;">
								</div>
								<div class="card-body">
									<strong class="d-inline-block mb-2 text-primary">교수</strong>
									<h3 class="mb-0">
										<a class="text-dark" href="#">빈기철</a>
									</h3>
									<div class="mb-1 text-muted">컴퓨터 프로그래밍</div>
									<p class="card-text mb-auto">
										<strong class="text-primary">E-MAIL) </strong>kchpin@deu.ac.kr
									</p>
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