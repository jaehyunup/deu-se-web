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
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap&subset=korean" rel="stylesheet">
<!-- import bootstrap -->
<script src="<c:url value="/resources/js/bootstrap/bootstrap.min.js" />"></script>
<link href="<c:url value="/resources/css/bootstrap/bootstrap.css" />"
	rel="stylesheet">
<title>동의대학교 컴퓨터소프트웨어 공학과</title>
</head>


<body>
	<div class="container py-2">
		<!--메뉴네비바 -->
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
				<li class="nav-item active"><a class="nav-link"
					href="/webapp/home"> 홈</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false" href="overview"> 학과
						안내 </a>
					<div class="dropdown-menu" aria-labelledby="dropdown1">
						<a class="dropdown-item submenutext" href="overview">학과 소개</a> <a
							class="dropdown-item submenutext" href="intention">교육 목표</a> <a
							class="dropdown-item submenutext" href="roadmap">학과 커리큘럼</a>
					</div></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"
					href="http://ipsi.deu.ac.kr/main/default.asp"> 입학안내 </a>
					<div class="dropdown-menu" aria-labelledby="dropdown2">
						<a class="dropdown-item submenutext"
							href="http://ipsi.deu.ac.kr/main/default.asp">학부</a> <a
							class="dropdown-item submenutext"
							href="https://grd.deu.ac.kr/grd/content/9">대학원</a>
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
	<div class="container-fulid" id="maincarousel">
		<div class="carousel slide carousel-fade" data-ride="carousel">
			<!--Indicators-->
			<ol class="carousel-indicators">
				<li data-target="#maincarousel" data-slide-to="0" class="active"></li>
				<li data-target="#maincarousel" data-slide-to="1"></li>
			</ol>
			<!--/.Indicators-->
			<!--Slides-->
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<!--Mask color-->
					<div class="view mh-80">
						<img class="w-100"
							src="<c:url value="/resources/images/slider1.jpg" />"
							alt="Second slide"
							style="overflow: hidden; object-fit: cover; object-position: center;">
					</div>
				</div>
				<div class="carousel-item">
					<!--Mask color-->
					<div class="view mh-80">
						<img class="w-100"
							src="<c:url value="/resources/images/slider2.jpg" />"
							alt="Third slide"
							style="overflow: hidden; object-fit: cover; object-position: center;">
					</div>
					<!--  <div class="carousel-caption d-xl-block  ">-->
				</div>
			</div>
			<!--/.Slides-->
			<!--Controls-->
			<a class="carousel-control-prev" href="#maincarousel" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#maincarousel" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
			<!--/.Controls-->
		</div>
		<!--/.Carousel Wrapper-->
	</div>

	<!--메인콘텐츠 -->
	<div class="container-fulid maincontents justify-content-center">
		<div class="row mx-auto justify-content-center">
			<div class="col-sm-12 col-md-4 col-xl-4 mb-3">
				<div class="row mx-1 p-3 banner shadow banner-background1">
					<div class="col-sm-12">
						<p class="bannermaintext">공지사항</p>
						<table class="table table-white table-hover" frame="void" style="margin:1px;table-layout:fixed;">
							<!-- forEach 문은 리스트 객체 타입을 꺼낼때 많이 활용된다. -->
							<c:forEach var="row" items="${currentContentsList}">
								<tr>
									<!-- 컨트롤러에서 넘겨준 list 모델 객체를 쓰는 방법을 잘 익혀두자 -->
									<td class="banner1subtext1" style="padding:1px;width:80%;border:hidden;color:#fff;">
										<a style="color:#fff;" href="notice/read?postno=${row.postno}">
											${row.posttitle}
										 </a>
									</td>
									<td class="banner1subtext2" style="padding:1px;margin-left:auto;width:20%;color:#fff;border:hidden;"><fmt:parseDate var="formatedDate"
											value="${row.postdate}" pattern="yyyy-MM-dd HH:mm:ss.S" /> <fmt:formatDate
											value="${formatedDate}" pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>

			<div class="col-sm-12 col-md-4 col-xl-4 mb-3">
				<div class="row mx-1 p-3 banner shadow banner-background2">
					<div class="col-sm-12">
						<p class="bannermaintext">공지사항</p>
					</div>
				</div>
			</div>

		</div>

		<div class="row mx-auto justify-content-center">
			<div class="mx-2 my-3 col-sm-11 col-md-2 col-xl-2 p-3 banner shadow banner-background3" align="center">
				<i class="mb-2 fas fa-graduation-cap" style="font-size:7rem;color:#fff;"></i>
				<p class="subbannerheader">입학안내</p>
				<p class="subbannerbody">동의대학교 <br>입학 안내</p>
				
			</div>
			<div class="mx-2 my-3 col-sm-11 col-md-2  col-xl-2 p-3 banner shadow banner-background4" align="center">
				<i class="mb-2 fas fa-users" style="font-size:7rem;color:#81b125;"></i>	
				<p class="subbannerheaderblacktext">교수진</p>
				<p class="subbannerbodyblacktext">소프트웨어공학 <br>교수진 소개</p>
			</div>
			<div class="mx-2 my-3 col-sm-11 col-md-2  col-xl-2 p-3 banner shadow banner-background5" align="center">
				<i class="mb-2 fas fa-archway" style="font-size:7rem;color:#fff;"></i>
				<p class="subbannerheader">학과커리큘럼</p>
				<p class="subbannerbody">소프트웨어공학 <br>교육과정 안내</p>
			</div>
			<div class="mx-2 my-3 col-sm-11 col-md-2  col-xl-2 p-3 banner shadow banner-background6" align="center">
				<i class="mb-2 fas fa-certificate" style="font-size:7rem;color:#fff;"></i>
				<p class="subbannerheader">ABEEK</p>
				<p class="subbannerbody">공학인증 프로그램 <br>소개 및 내규</p>
			</div>
		</div>
	</div>





	<!-- 푸터 -->
	<div
		class="position-relative page-footer font-small footerdesign  pt-3 mt-10 ">
		<!-- Footer Links -->
		<div class="container text-center text-md-left">


			<!-- Grid row -->
			<div class="row">

				<!-- Grid column -->
				<div class="col-md-8">

					<!-- Content -->
					<h4 class="bold">동의대학교 컴퓨터소프트웨어공학과</h4>
					<p class="footertext">47340 부산광역시 부산진구 엄광로 176 (가야동) 정보공학관 9층</p>
					<p class="footertext">Tel.051-890-1114 Fax.051-890-123</p>


				</div>
				<!-- Grid column -->

				<hr class="clearfix w-100 d-md-none pb-3">

				<!-- Grid column -->
				<div class="col-md-2">

					<!-- Links -->
					<h4 class="bold" style="margin-bottom: 10%;">관련 링크</h4>

					<ul class="list-unstyled">
						<li style="margin-bottom: 1%;"><a class="footertext"
							href="https://deu.ac.kr">동의대학교 홈페이지</a></li>
						<li style="margin-bottom: 1%;"><a class="footertext"
							href="#!">입학정보</a></li>

					</ul>

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-2">

					<!-- Links -->
					<h4 class="bold" style="margin-bottom: 10%;">학과 SNS</h4>

					<ul class="list-unstyled">
						<li style="margin-bottom: 1%;"><a class="footertext"
							href="#!">Instagram</a></li>
						<li style="margin-bottom: 1%;"><a class="footertext"
							href="#!">Facebook</a></li>
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