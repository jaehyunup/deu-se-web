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
	<div class="container py-2">
	<!--메뉴네비바 -->
	<nav id="menunav" class="navbar float-top navbar-expand-lg"> <a
		class="navbar-brand" href="/webapp/home" class="d-inline-block"> <img
		src="<c:url value="/resources/images/logo.png" />" /></a>
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
			style="padding-left: 1%; padding-right: 1%;">
			<div class="sidebartitle">공학인증제도</div>
			<!-- Vertical Menu-->
			<nav class="nav flex-column bg-white rounded p-3"> <a
				href="abeek"
				class="nav-link px-4 shadow-sm py-3 my-1 sidebarmenu">
				<i class="fas fa-university"></i>&nbsp; 개요 및 목표
			</a> <a href="abeekrule"
				class="nav-link px-4 bg-info text-white py-3 shadow-sm my-1 sidebarmenu">
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
							<a class="title"><i class="fas fa-archway"></i>&nbsp;&nbsp;공학인증
								프로그램</a> <a>홈 > 공학인증제도 > 인증프로그램</a>
						</div>
						<div class="col-xs-12" id="contab">
							<ul class="nav">
								<li><a href="#tab_a" class="active" data-toggle="pill">프로그램내규</a>
								</li>
								<li><a href="#tab_b" data-toggle="pill"> 교육성과 </a></li>
								<li><a href="#tab_c" data-toggle="pill"> 이수체계 </a></li>
								<li><a href="#tab_d" data-toggle="pill"> 위원회 </a></li>
								<li><a href="#tab_e" data-toggle="pill"> 인증기준(KCC2015)
								</a></li>
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
												<iframe
													src="<c:url value="/resources/images/abeek/abeekrule.pdf"/>"
													style="margin-left: auto 0; margin-right: auto 0; width: 100%; height: 130vh;"
													frameborder="0"> </iframe>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab_b">
									<div class="container-fluid mb-5">
										<div class="row">
											<div class="col-md-12">
												<iframe
													src="<c:url value="/resources/images/abeek/abeekedu1.pdf"/>"
													style="margin-left: auto 0; margin-right: auto 0; width: 100%; height: 130vh;"
													frameborder="0"> </iframe>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab_c">
									<div class="container-fluid mb-5">
										<div class="row">
											<div class="col-md-12">
												<iframe
													src="<c:url value="/resources/images/abeek/abeekcul.pdf"/>"
													style="margin-left: auto 0; margin-right: auto 0; width: 100%; height: 130vh;"
													frameborder="0"> </iframe>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab_d">
									<div class="container-fluid mb-5">
										<div class="row">
											<div class="col-xs-12">
												<table border="0" cellspacing="0" cellpadding="0">
													<tbody>
														<tr>
															<td>
																<div class="text10">위원회 및 행정지원 조직</div> <img
																class="auto-size-img"
																style="max-height: 90%; margin: 0 auto;"
																src="<c:url value="/resources/images/abeek/abeekcom.gif"/>">
															</td>
														</tr>
														<tr>

															<td align="center">

																<table width="100%" border="0" cellpadding="0"
																	cellspacing="1">
																	<tbody>
																		<tr>
																			<th class="text07">
																				<div class="text10">위원회별 주요업무</div>

																			</th>

																		</tr>


																		<tr bordercolor="#000099">
																			<td height="25" align="center" bgcolor="#FFFFFF">프로그램
																				위원회</td>
																			<td height="25" bgcolor="#FFFFFF">ㆍ공학인증 프로그램 운영
																				및 주요 의결사항 결정<br> ㆍ학교본부와 공학인증협력센터와의 의견조율<br>
																				ㆍ인증기준별 CQI에 따른 프로그램 개선<br> ㆍ학생 상담 및 관찰 시스템 체계적인
																				운영 <br> ㆍ교육목표 수립 및 개선, 학습성과 설정 및 개선<br>
																				ㆍ교과과정 편성과 개선, 교과목 CQI 검토 및 분석<br> ㆍ설계 교과목 운영 및
																				개선, 교육환경 구축 및 개선 <br> ㆍ재학생 학업성취도 조사 및 분석, 재학생
																				강의평가 분석 <br> ㆍ재학생 상담 및 관찰 결과 분석, 학습성과 달성여부 평가<br>
																				ㆍ재학생, 졸업생, 산업체 고용주 설문조사 실시
																			</td>
																		</tr>
																		<tr bordercolor="#000099">
																			<td height="25" align="center" bgcolor="#FFFFFF">산학자문
																				위원회</td>
																			<td height="25" bgcolor="#FFFFFF">ㆍ학과 발전 계획 수립,
																				산업체 동향 분석 <br> ㆍ재학생과 졸업생 취업 지도, 취업률 조사 및 분석<br>
																				ㆍ인턴쉽 프로그램, 산업체 전문가 멘토제 운영 <br> ㆍ교육목표, 학습성과,
																				교과과정에 대한 산업체 인사 자문 분석
																			</td>
																		</tr>

																	</tbody>
																</table>
															</td>
														</tr>

														<tr>
															<td><table width="666" border="0" cellspacing="0"
																	cellpadding="0">
																	<tbody>
																		<tr>
																			<td height="10" colspan="3"></td>
																		</tr>
																		<tr>
																			<td width="30">&nbsp;</td>
																			<td class="text04"><span class="text10">1)
																					프로그램위원회 운영세칙</span> <br> <br> <span
																				class="text07">제1조(목적)</span> 컴퓨터소프트웨어공학과의 교육품질을
																				향상시키고 한국공학교육인증원의 인증기준에 부합하는 프로그램의 운영과 개선에 관한 사항을 논의
																				또는 의결하기 위해 프로그램위원회(이하 위원회)를 둔다. <br> <br>
																				제2조(기능) 위원회는 제1조의 목적을 달성하기 위해 다음 사항을 심의 의결한다. <br>
																				1. 프로그램의 운영에 대한 사항 <br> 2. 프로그램의 교육목표 설정에 관한 사항<br>
																				3. 프로그램 교육목표 달성 및 평가에 관한 사항<br> 4. 프로그램의 학습 성과
																				설정에 관한 사항<br> 5. 프로그램 학습 성과 달성 및 평가에 관한 사항<br>
																				6. 프로그램의 교육과정 편성, 운영, 개편에 관한 사항<br> 7. 프로그램의
																				교육품질 향상을 위한 학생, 교수, 교육시설 및 재원, 교육환경의 개선에 관한 사항<br>
																				8. 프로그램 자체보고서 작성에 관한 사항 <br> 9. 기타 프로그램과 관련한 사항
																				<br> <br> <span class="text07">제3조(구성)</span>
																				위원회는 컴퓨터소프트웨어공학과 교수로 구성되고, 위원장은 학과장을 원칙으로 하며, 위원장은
																				간사를 임명하여 운영할 수 있다. <br> <br> <span
																				class="text07">제4조(회의)</span> 회의는 학기 말에 소집하며, 필요에 따라
																				위원장이 수시로 소집할 수 있다. <br> <br> <span
																				class="text07">제5조(보칙)</span> 이 규정에 정하지 않은 사항은
																				프로그램위원회의 결정에 따른다. <br> <br> <span
																				class="text07">부 칙</span> <br> 1. 이 내규는 2006년
																				11월 1일부터 시행한다.<br> 2. 이 변경 내규는 2007년 3월 1일부터
																				시행한다. <br> <br> <br> <span
																				class="text10">2) 산학자문위원회 운영세칙</span> <br> <br>
																				<span class="text07">제1조(목적)</span> 컴퓨터소프트웨어공학 프로그램에
																				대한 산업체의 의견을 수렴하고 반영하며, 프로그램의 교육목표, 학습 성과 및 교과과정의
																				적정성을 자문하며, 산학교류에 관한 사항을 담당하는 것을 목적으로 산학자문위원회(이하
																				위원회)를 둔다. <br> <br> <span class="text07">제2조(기능)</span>
																				제1조의 목적을 달성하기 위하여 다음 사항을 수행한다. <br> 1. 프로그램의
																				교육목표 및 학습 성과가 산업체 요구에 부합하는지 검토하고 자문한다. <br> 2.
																				프로그램의 교과과정을 통해 교육목표 및 학습 성과가 적절하게 달성되고 있는지 검토하고
																				자문한다. <br> 3. 종합설계에 대한 평가를 통해 산업체가 요구하는 설계 교육이
																				이루어지고 있는지 검토하고 자문한다. <br> <br> <span
																				class="text07">제3조(구성)</span> 위원회는 다음과 같이 구성한다. <br>
																				1. 위원회의 위원은 프로그램 교수 2인 이상과 산업체 인사 4인 이상으로 구성한다. <br>
																				2. 위원장과 위원은 프로그램위원회를 통해 프로그램 위원장이 임명한다. <br> 3.
																				산업체 위원은 교수들의 추천으로 프로그램위원회를 통해 프로그램 위원장이 임명한다. <br>
																				<br> <span class="text07">제4조(회의)</span> 위원회는
																				1회/년&nbsp;소집하며, 필요에 따라 위원장이 수시로 소집할 수 있다. <br>
																				<br> <span class="text07">제5조(보칙)</span> 이 규정에
																				정하지 않은 사항은 프로그램위원회의 결정에 따른다. <br> <br> <span
																				class="text07">부 칙</span> <br> 1. 이 내규는 2006년
																				11월 1일부터 시행한다. <br> 2. 이 변경 내규는 2007년 3월 1일부터
																				시행한다. <br> 3. 이 변경 내규는 2014년 3월 1일부터 시행한다.<br>
																				<br></td>
																			<td width="30" class="text04">&nbsp;</td>
																		</tr>
																	</tbody>
																</table></td>
														</tr>
														<tr>
															<td>&nbsp;</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab_e">
									<div class="container-fluid mb-5">
										<div class="row">
											<div class="col-md-12">
												<iframe
													src="<c:url value="/resources/images/abeek/abeekkcc2015.pdf"/>"
													style="margin-left: auto 0; margin-right: auto 0; width: 100%; height: 130vh;"
													frameborder="0"> </iframe>
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