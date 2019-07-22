<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
<!--메뉴네비바 -->
	<nav id="menunav" class="navbar float-top navbar-expand-lg">
		<a class="navbar-brand" href="/webapp/home" class="d-inline-block"> <img src="<c:url value="/resources/images/logo.png" />"/></a>  
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
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
						class="dropdown-item submenutext" href="intention">교과 개요</a> <a
						class="dropdown-item submenutext" href="roadmap">학과 커리큘럼</a>
				</div></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false" href="overview"> 입학안내
			</a>
				<div class="dropdown-menu" aria-labelledby="dropdown2">
					<a class="dropdown-item submenutext" href="http://ipsi.deu.ac.kr/main/default.asp">학부</a> <a
						class="dropdown-item submenutext" href="https://grd.deu.ac.kr/grd/content/9">대학원</a>
				</div></li>
			<li class="nav-item"><a class="nav-link menutext" href="abeek">
					공학인증제도 </a></li>
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
				aria-haspopup="true" aria-expanded="false" href="notice"> 게시판
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item submenutext" href="notice">공지사항</a> <a
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
			<nav class="nav flex-column bg-white rounded p-3"> <a href="overview"
				class="nav-link px-4 py-3 active bg-info text-white my-1 shadow-sm rounded-pill sidebarmenu">
				<i class="fas fa-university"></i> 학과 소개 
			</a> <a href="intention" class="nav-link shadow-sm my-1 py-3 px-4 rounded-pill sidebarmenu"> <i
				class="fas fa-graduation-cap"></i> 교과 개요
			</a> <a href="roadmap" class="nav-link shadow-sm my-1 py-3 px-4 rounded-pill sidebarmenu"> <i
				class="fas fa-archway"></i> 학과 커리큘럼
			</a> 
			 </nav>
			<!-- End -->
		</div>

		
		<div class="col-lg-8 col-xs-12">
			<div class="tabs">
				<div class="container-fulid">
					<div class="row mx-0">
						<div class="col-xl-12 navigator">
							<a class="title"><i class="fas fa-university"></i>&nbsp;&nbsp;학과소개</a>
							<a>홈 > 학과안내 > 학과소개</a>
						</div>
						<div class="col-xl-12">
							<ul class="nav nav-pills">
								<li class="active"><a href="#tab_a" class="active" data-toggle="pill">
										학과장인사말 </a></li>
								<li><a href="#tab_b" data-toggle="pill">학과연혁</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-12">
							<div class="tab-content">
								<div class="tab-pane fade show active" id="tab_a">
									<div class="col-xl-12">
										<h4>
											안녕하십니까?<br>동의대 <strong style="color:#0ca9b3">창의소프트웨어공학부<br>컴퓨터소프트웨어공학전공
												학과장
											</strong>입니다.
										</h4>
										<p>
											컴퓨터소프트웨어공학과는 지식정보화 사회의 핵심산업인 소프트웨어산업관련 최첨단 전문인력 양성을 위하여 2000년
											3월 50명의 정원으로 컴퓨터응용공학부(총 신입생 230명)의 일원으로 신입생을 모집하였습니다.<br>
											<br> 컴퓨터소프트웨어공학과는 새로운 소프트웨어 프로그래밍 기법을 주도하고 있는 객체지향
											프로그래밍과 관련하여 자바, 델파이 등 객체지향 언어를 포함하여 객체지향 소프트웨어 개발방법론, 객체지향
											CASE Tool 등의 소프트웨어 개발환경, 소프트웨어 품질관리 및 유지보수, 소프트웨어 성능평가 등 기업에서
											필요로 하는 매우 실질적인 소프트웨어 개발 트레이닝과정을 운영하고 있습니다.
										</p>
									</div>
								</div>
								<div class="tab-pane" id="tab_b">
									<div class="container mb-5">
										<div class="row">
											<div class="col-md-6">
												<h4>학과 연혁</h4>
												<ul class="timeline">
													<li><a target="_blank" href="">2000년</a> 
														<p>소프트웨어산업 최첨단 전문인력 양성을 위해 부산지역 최초 신설</p></li>
													<li><a target="_blank" href="">2002년</a> 
														<p>정보통신부 주관 IT장비지원학과 선정</p></li>
													<li><a target="_blank" href="">2003년</a> 
														<p>일반대학원 석박사 과정(소프트웨어공학전공)신설정</p>
														<p>부산 정보산업진흥원 주최IT 인력 UP-GRADE 교육사업진행정</p>
														<p>정보통신연구원 선정 임베디드 SW 표준교과목 시법사업 진행</p></li>
													<li><a target="_blank" href="">2005년</a> 
														<p>산업자원부 주관 공학교육과정 개편 지원사업 선정</p>
														<p>정보통신부 주관 IT 교수요원 지원사업 선정정</p>
														<p>산업자원부 주관 공학교육과정 지원사업 선정</p></li>
													<li><a target="_blank" href="">2006년</a> 
														<p>컴퓨터소프트웨어공학과로 개편</p>
														<p>산업자원부 공학교육과정개편지원사업 선정</p></li>
													<li><a target="_blank" href="">2007년</a> 
														<p>산업자원부 공학교육과정개편지원사업 선정</p></li>
													<li><a target="_blank" href="">2008년</a> 
														<p>	정보통신부 대학IT역량강화(NEXT)사업 선정</p></li>
													<li><a target="_blank" href="">2009년</a> 
														<p>	정보통신부 대학IT역량강화(NEXT)사업 선정</p></li>	
														<li><a target="_blank" href="">2010년</a> 
														<p>	컴퓨터소프트웨어공학과 석박사 과정 신설</p></li>
													<li><a target="_blank" href="">2011년</a> 
														<p>	지식경제부 대학IT역량강화(NEXT)사업 선정</p></li>	
													<li><a target="_blank" href="">2012년</a> 
														<p>	인턴쉽-캡스톤디자인 연계 산학프로젝트 프로그램 운영</p></li>		
													<li><a target="_blank" href="">2013년</a> 
														<p>	컴퓨터정보기술인증(KCC2010) 프로그램 운영</p></li>
													<li><a target="_blank" href="">2014년</a> 
														<p>	지식경제부 서울어코드 공학교육활성화 지원사업 선정</p></li>
													<li><a target="_blank" href="">2014년</a> 
														<p>	지식경제부 서울어코드 공학교육활성화 지원사업 선정</p></li>		
													<li><a target="_blank" href="">2015년</a> 
														<p>	컴퓨터정보기술인증(KCC2015) 프로그램 운영</p>
														<p> 컴퓨터응용공학부(멀티미디어공학과 포함)로 개편</p>
													</li>				
												</ul>
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
	<div
		class="position-relative page-footer font-small footerdesign pt-3 mt-5">
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