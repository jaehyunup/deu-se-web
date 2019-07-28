<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
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
			style="border-right:1px solid #f4f4f4;">
			<div class="sidebartitle">학과 안내</div>
			<!-- Vertical Menu-->
			<nav class="nav flex-column bg-white rounded p-3"> 
			 <a href="overview"
				class="nav-link active bg-info text-white px-4 py-3 my-1 shadow-sm sidebarmenu">
				<i class="fas fa-university mr-2"></i>학과 소개
			 </a> 
			 <a href="intention"
				class="nav-link py-3 my-1 px-4 shadow-sm  sidebarmenu">
				<i class="fas fa-graduation-cap mr-1"></i>교과 개요
			</a> 
			<a href="roadmap"
				class="nav-link px-4 py-3 my-1 shadow-sm sidebarmenu">
				<i class="fa fa-archway mr-1"></i>학과 커리큘럼
			</a> 
			</nav>
			
			<!-- End -->
		</div>


		<div class="col-lg-8 col-xs-12">
			<div class="tabs">
				<div class="container">
					<div class="row">
						<div class="col-xl-12 navigator">
							<a class="title"><i class="fas fa-university"></i>&nbsp;&nbsp;학과소개</a>
							<a>홈 > 학과안내 > 학과소개</a>
						</div>
						<div class="col-xl-12">
							<ul class="nav nav-pills">
								<li class="active"><a href="#tab_a" class="active"
									data-toggle="pill"> 학과장인사말 </a></li>
								<li><a href="#tab_b" data-toggle="pill">교육목표 및 연혁</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-12">
							<div class="tab-content">
								<div class="tab-pane fade show active" id="tab_a">
									<div class="col-xl-12">
										<h5 style="margin-bottom:3%;font-weight:700;font-size:1.2rem;color:#333;
											padding-bottom:2%;">
											<i class="fas fa-chevron-circle-right" style="font-size:1.3rem;
											color:#333;margin-right:1%;">
											</i>학과장 인사말
										</h5>
										
										
										<h4>
											안녕하십니까?<br>동의대 <strong style="color: #0ca9b3">창의소프트웨어공학부<br>컴퓨터소프트웨어공학전공
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
											<div class="col-md-12">
												<h5 style="margin-bottom:1%;font-weight:700;font-size:1.2rem;color:#333;
													padding-bottom:2%;">
													<i class="fas fa-chevron-circle-right" style="font-size:1.3rem;
													color:#333;margin-right:1%;">
													</i>교육 목표
												</h5>
												<div class="justify-content-center">
													<ol class="rectangle-list mb-2">
    													<li><a href="">기초과학, 컴퓨터 소프트웨어 공학 기술, 소프트웨어 도구 활용 능력을 바탕으로 한 공학 기초 능력과 실무 능력 배양</a></li>	
    													<li><a href="">습득한 지식을 응용하고 창의적인 사고를 발휘하여 다양한 공학 문제를 해결하고 종합적으로 설계할 수 있는 능력 배양</a></li>
    													<li><a href="">관련 산업체와 연구기관 등에서 필요한 실무 수행 능력과 효과적인 의사전달 능력을 갖춘 실무 전문 인력 양성	</a></li>
   														<li><a href="">건전한 윤리적 사고와 책임의식을 바탕으로 국제화 시대를 이끌어 나갈 창의적인 전문 인력 양성</a></li>
													</ol>
												</div>	 	

												
												<h5 style="margin-bottom:1%;margin-top:3%;font-weight:700;font-size:1.2rem;color:#333;
													padding-bottom:2%;">
													<i class="fas fa-chevron-circle-right" style="font-size:1.3rem;
													color:#333;margin-right:1%;">
													</i>학과 연혁
												</h5>
											
												<div class="timeline-item" date-is="2000년">
														<p>> 소프트웨어산업 최첨단 전문인력 양성을 위해 부산지역 최초 신설</p>
												</div>
												<div class="timeline-item" date-is="2002년">
														<p>> 정보통신부 주관 IT장비지원학과 선정</p>
												</div>
												<div class="timeline-item" date-is="2003년">
														<p>> 일반대학원 석박사 과정(소프트웨어공학전공)신설</p>
														<p>> 부산 정보산업진흥원 주최IT 인력 UP-GRADE 교육사업진행정</p>
														<p>> 정보통신연구원 선정 임베디드 SW 표준교과목 시법사업 진행</p>
												</div>
												
												<div class="timeline-item" date-is="2005년">
														<p>> 산업자원부 주관 공학교육과정 개편 지원사업 선정</p>
														<p>> 정보통신부 주관 IT 교수요원 지원사업 선정정</p>
														<p>> 산업자원부 주관 공학교육과정 지원사업 선정</p>
												</div>
												<div class="timeline-item" date-is="2006년">
															<p>> 컴퓨터소프트웨어공학과로 개편</p>
														<p>> 산업자원부 공학교육과정개편지원사업 선정</p>
												</div>
												<div class="timeline-item" date-is="2007년">
														<p>> 산업자원부 공학교육과정개편지원사업 선정</p>
												</div>
												
												<div class="timeline-item" date-is="2008년">
														<p>> 정보통신부 대학IT역량강화(NEXT)사업 선정</p>
												</div>
												<div class="timeline-item" date-is="2009년">
														<p>> 정보통신부 대학IT역량강화(NEXT)사업 선정</p>
												</div>
												<div class="timeline-item" date-is="2010년">
														<p>> 컴퓨터소프트웨어공학과 석박사 과정 신설</p>
												</div>
												<div class="timeline-item" date-is="2011년">
														<p>> 지식경제부 대학IT역량강화(NEXT)사업 선정</p>
												</div>
												<div class="timeline-item" date-is="2012년">
														<p>> 인턴쉽-캡스톤디자인 연계 산학프로젝트 프로그램 운영</p>
												</div>
												<div class="timeline-item" date-is="2013년">
														<p>> 컴퓨터정보기술인증(KCC2010) 프로그램 운영</p>
												</div>
												<div class="timeline-item" date-is="2014년">
														<p>> 지식경제부 서울어코드 공학교육활성화 지원사업 선정</p>
												</div>
												<div class="timeline-item" date-is="2015년">
														<p>> 컴퓨터정보기술인증(KCC2015) 프로그램 운영</p>
														<p>> 컴퓨터응용공학부(멀티미디어공학과 포함)로 개편</p>												</div>
												
													
											
												
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