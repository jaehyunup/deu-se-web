<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<!--import PDF Viewer (pdfjs) -->
<script src="<c:url value="/resources/js/pdfjs/build/pdf.js" />"></script>

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
				aria-haspopup="true" aria-expanded="false" href="overview"> 입학안내
			</a>
				<div class="dropdown-menu" aria-labelledby="dropdown2">
					<a class="dropdown-item submenutext"
						href="http://ipsi.deu.ac.kr/main/default.asp">학부</a> <a
						class="dropdown-item submenutext"
						href="https://grd.deu.ac.kr/grd/content/9">대학원</a>
				</div></li>
			<li class="nav-item active"><a class="nav-link menutext"
				href="#home"> 공학인증제도 </a></li>
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
			<div class="sidebartitle">공학인증제도</div>
			<!-- Vertical Menu-->
			<nav class="nav flex-column bg-white rounded p-3"> <a
				href="abeek"
				class="nav-link px-4 bg-info text-white shadow-sm py-3 my-1 rounded-pill sidebarmenu">
				<i class="fas fa-university"></i>&nbsp; 개요 및 목표
			</a> <a href="abeekrule"
				class="nav-link px-4 py-3 shadow-sm my-1 rounded-pill sidebarmenu">
				<i class="fas fa-graduation-cap"></i>&nbsp;인증프로그램
			</a> </nav>
			<!-- End -->
		</div>

		<div class="col-lg-8 col-xs-12">
			<div class="tabs">
				<div class="container-fulid">
					<div class="row mx-0">
						<!--페이지 네비게이터(콘텐츠 탭 윗부분)-->
						<div class="col-xl-12 navigator">
							<a class="title"><i class="fas fa-archway"></i>&nbsp;&nbsp;공학인증개요 & 교육목표
								</a> <a>홈 > 공학인증제도 > 개요 및 목표</a>
						</div>
						<div class="col-xs-12">
							<ul class="nav nav-pills">
								<li class="active"><a href="#tab_a" data-toggle="pill">
										개요 </a></li>
								<li><a href="#tab_b" data-toggle="pill"> 교육 목표 </a></li>
							</ul>
						</div>
					</div>

					<!-- 콘텐츠 탭 행 a=전공과목연계표, b=교과과정 , c = 교과개요 -->
					<div class="row">
						<div class="col-xl-12 mx-0" style="min-height: 300px">
							<div class="tab-content">
								<div class="tab-pane fade show active" id="tab_a">
									<div class="container-fluid mb-5">
										<div class="row">
											<div class="col-md-12">
												<img
													src="<c:url value="/resources/images/abeekinfo1.gif" />"
													class="img-fluid" alt="1"> <img
													src="<c:url value="/resources/images/abeekinfo2.gif" />"
													class="img-fluid" alt="2">
											</div>
										</div>
									</div>
								</div>

								<div class="tab-pane" id="tab_b">
									<div class="container-fluid mb-5">
										<div class="row">
											<div class="col-md-12">
												<table>
													<tbody>
														<tr>
															<td>
																<div class="aimbackground">
																	<div class="aimcontainer">
																		<p>
																			<strong class="courseaim">교육목표 </strong>
																		</p>
																		<p>
																			&nbsp; 공학인증 프로그램은<strong>
																				기초과학, 컴퓨터 소프트웨어 공학 기술, 소프트웨어 도구 활용 능력을 바탕으로 한 공학 기초
																				능력과 도구 활용 능력을 배양하고 </strong> <strong> 습득한 지식과 창의적인
																				사고를 발휘하여 다양한 공학 분야에 응용할 수 있고, 종합적으로 설계할 수 있는 응용 능력과
																				설계 능력을 배양함과 동시에</strong> <strong> 관련 산업체와 연구기관 등에서
																				필요로 하는 실무 수행 능력과 효과적으로 의사를 전달 할 수 있는 능력을 배양하고 </strong> <strong>
																				건전한 윤리의식과 책임의식을 바탕으로 국제화 시대를 이끌어 나갈 능력</strong>을 갖춘 능동적이고
																			창의적인 컴퓨터 소프트웨어 전문 기술 인력 양성을 교육목표로 한다.
																		</p>
																		<p>&nbsp;</p>
																	</div>
																</div> 
																 
																 <strong class="text10">1. 공학 기초 능력과 도구 활용능력 배양</strong>
																
																 <span class="text07"><strong>세부교육목표</strong></span>
																 <span class="text01">기초과학, 컴퓨터 소프트웨어 공학 기술, 소프트웨어 도구 활용
																					능력을 바탕으로 한 공학 기초 능력과 도구 활용 능력 배양</span>
																
																 <span class="text07"><strong>추구방향</strong></span> 
																 <span class="text01"> 본 프로그램 소속 학생은 기초과학의 중요한 이론을 이해하고, 
																  컴퓨터소프트웨어공학 전공과 관련된 다양한
																	도구를 습득함으로써, 기초과학을 바탕으로 체계적인 전공능력을 향상시킬 수 있으며, 
																	능숙한 전공 도구
																	활용을 바탕으로 실무능력을 향상시킬 수 있다. </span>
																
																	
																
																 <strong class="text10">2. 응용 능력과 설계 능력 배양</strong>
																
																 <span class="text07"><strong>세부교육목표</strong></span>
																 <span class="text01">습득한 지식을 응용하고 창의적인 사고를 발휘하여 다양한 공학 분야에 응용할 수 있고, 
																 종합적으로 설계할 수 있는 능력 배양</span>
																
																 <span class="text07"><strong>추구방향</strong></span> 
																 <span class="text01"> 본 프로그램 소속 학생은 컴퓨터 하드웨어, 컴퓨터 소프트웨어, 컴퓨터 시스템과 관련된 구성요소에
																  대하여 설계 요소를 이해하고,  제시된 문제에 대한 현실적 해결방안을 도출하고 해결함으로써, 컴퓨터소프트웨어공학과 관련된 
																 다양한 공학적 문제해결 능력을 향상시킬 수 있으며, 설계 구성요소 및 제한요소 등에 대한 인식을 바탕으로 체계적인 
																 설계능력을 향상시킬 수 있다.</span>
																
																 <strong class="text10">3. 실무 능력과 의사 전달 능력 배양</strong>
																
																 <span class="text07"><strong>세부교육목표</strong></span>
																 <span class="text01">관련 산업체와 연구기관 등에서 필요한 실무 수행 능력과 효과적인으로 
																 의사를 전달 할 수 있는 능력 배양

																 </span>
																
																 <span class="text07"><strong>추구방향</strong></span> 
																 <span class="text01"> 본 프로그램 소속 학생은 컴퓨터소프트웨어공학 전공과 관련하여 실험을 계획하고 실험결과에 대하여 종합적으로 분석하며, 
																 객관적 사실에 근거하여 논리적으로 실무 수행 절차를 표현함으로써, 
																 실무적 현장에 적응하는 실무능력을 향상시킬 수 있으며, 실무를 통해 인식한 다양한 실무지식을 
																 타인에게 효과적으로 전달하는 의사전달능력을 향상시킬 수 있다.</span>
																
																 <strong class="text10">4. 책임의식과 국제화 능력 배양</strong>
																
																 <span class="text07"><strong>세부교육목표</strong></span>
																 <span class="text01">
																 건전한 윤리적 사고와 책임의식을 바탕으로 국제화 시대를 이끌어 나갈 능력 배양
																 </span>
																
																 <span class="text07"><strong>추구방향</strong></span> 
																 <span class="text01"> 본 프로그램 소속 학생은 정보 윤리와 직업적 책임의 필요성을 인식하고 
																 외국어로 전공 지식을 논리적으로 표현함으로써, 지역사회 및 국가에 이바지하기 위한 책임의식을 배양시킬 수 있으며, 
																 국제적 공학도로서 윤리적 사고와 직업적 책임의식을 배양시킬 수 있다.</span>
																

																
															</td>
														</tr>

													</tbody>
												</table>

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
		<!-- Footer Links -->
		<!-- Copyright -->
		<!-- Copyright -->
	</div>


</body>




</html>