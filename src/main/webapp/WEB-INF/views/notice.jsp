<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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

<!-- import custom js -->
<script type="text/javascript"
	src="<c:url value="/resources/js/main.js" />"></script>

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
				aria-haspopup="true" aria-expanded="false" href="../overview">
					학과 안내 </a>
				<div class="dropdown-menu" aria-labelledby="dropdown1">
					<a class="dropdown-item submenutext" href="../overview">학과 소개</a> <a
						class="dropdown-item submenutext" href="../intention">교과 개요</a> <a
						class="dropdown-item submenutext" href="../roadmap">학과 커리큘럼</a>
				</div></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false" href="../overview">
					입학안내 </a>
				<div class="dropdown-menu" aria-labelledby="dropdown2">
					<a class="dropdown-item submenutext"
						href="http://ipsi.deu.ac.kr/main/default.asp">학부</a> <a
						class="dropdown-item submenutext"
						href="https://grd.deu.ac.kr/grd/content/9">대학원</a>
				</div></li>
			<li class="nav-item"><a class="nav-link menutext"
				href="../abeek"> 공학인증제도 </a></li>
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
			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle menutext" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false" href="overview"> 게시판
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item submenutext" href="list">공지사항</a> <a
						class="dropdown-item submenutext" href="#">공모전/취업정보</a>
				</div></li>
		</ul>
	</div>
	</nav>
	<!-- 메뉴네비바끝 -->


	<!--캐러셀(슬라이더) -->
	<div id="maincarousel" class="carousel slide carousel-fade"
		data-ride="carousel">
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active">
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
	</div>
	<!--메인 캐러셀 종료-->


	<!-- 콘텐츠행 -->
	<div class="row">
		<!-- 콘텐츠 왼쪽 사이드바 -->
		<div class="col-lg-2 hidden-md-down offset-lg-1"
			style="padding-left: 1%; padding-right: 1%;">
			<div class="sidebartitle">게시판</div>
			<nav class="nav flex-column bg-white rounded p-3"> <a
				href="list"
				class="nav-link px-4 bg-info text-white shadow-sm py-3 my-1 rounded-pill sidebarmenu">
				<i class="fas fa-university"></i>&nbsp; 공지사항
			</a> <a href="abeekrule"
				class="nav-link px-4 py-3 shadow-sm my-1 rounded-pill sidebarmenu">
				<i class="fas fa-graduation-cap"></i>&nbsp;공모전/취업정보
			</a> </nav>
			<!-- 사이드바 종료-->
		</div>

		<!-- 메인콘텐츠 공간 -->
		<div class="col-lg-8 col-xs-12">
			<div class="tabs">
				<div class="container-fulid">
					<div class="row mx-0">
						<!--페이지 네비게이터(콘텐츠 탭 윗부분)-->
						<div class="col-xl-12 navigator">
							<a class="title"> <i class="fas fa-archway"></i>
								&nbsp;&nbsp;공지사항
							</a> <a>홈 > 게시판 > 공지사항</a>
						</div>
						<!--메인컨텐츠 시작-->
						<div class="col-xl-12">
							<table class="table table-white table-hover">
								<thead class="thead-dark">
									<tr>
										<th style="width: 5%" scope="col">NO</th>
										<th style="width: 75%" scope="col">제목</th>
										<th style="width: 5%" scope="col">글쓴이</th>
										<th style="width: 15%" scope="col">작성일자</th>
									</tr>
								</thead>
								<!-- forEach 문은 리스트 객체 타입을 꺼낼때 많이 활용된다. -->
								<c:forEach var="row" items="${list}">
									<tr>
										<!-- 컨트롤러에서 넘겨준 list 모델 객체를 쓰는 방법을 잘 익혀두자 -->
										<td style="width: 5%">${row.postno}</td>
										<td style="width: 75%"><a
											href="read?postno=${row.postno}"> ${row.posttitle} </a></td>
										<td style="width: 5%">${row.postwriter}</td>
										<td style="width: 15%">
											<fmt:parseDate var="formatedDate" value="${row.postdate}" pattern="yyyy-MM-dd HH:mm:ss.S" />
											<fmt:formatDate value="${formatedDate}" pattern="yyyy-MM-dd" />
											
										</td>
									</tr>
								</c:forEach>
							</table>
							<div class="col-xl-6 col-sm-6">
								<div class="text-center">
									<ul class="pagination">
										<c:if test="${pm.prev}">
											<li><a href="list?page=${pm.startPage - 1}">이전</a></li>
										</c:if>
										<c:forEach begin="${pm.startPage}" end="${pm.endPage}"
											var="idx">
											<li
												<c:out value="${pm.criteria.page == idx ? 'class=active' : ''}"/>>
												<a href="list?page=${idx}">${idx}</a>
											</li>
										</c:forEach>
										<c:if test="${pm.next && pm.endPage > 0}">
											<li><a href="list?page=${pm.endPage + 1}">다음</a></li>
										</c:if>
									</ul>
								</div>
							</div>
							<div class="col-xl-6 col-sm-6">
								<a href="writeNotice" class="btn btn-dark btn-lg active"
									role="button" aria-pressed="true">글 작성</a>

								<c:if test="${empty login}">
									<a href="../user" class="btn btn-dark btn-lg active"
										role="button" aria-pressed="true">관리자로그인</a>
								</c:if>
								<c:if test="${not empty login}">
									<a href="../user/logout" class="btn btn-dark btn-lg active"
										role="button" aria-pressed="true">로그아웃</a>
								</c:if>
							</div>

						</div>

						<!-- 메인컨텐츠 끝 -->
					</div>
				</div>
			</div>
		</div>
		<!-- 메인콘텐츠 끝-->

	</div>







	<!-- 푸터 -->
	<footer class="position-relative page-footer font-small footerdesign pt-3 mt-5">
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
				<hr class="clearfix w-100 d-md-none pb-3">
				<div class="col-md-2">
					<h4 class="bold" style="margin-bottom: 10%;">관련 링크</h4>
					<ul class="list-unstyled">
						<li style="margin-bottom: 1%;"><a href="https://deu.ac.kr">동의대학교
								홈페이지</a></li>
						<li style="margin-bottom: 1%;"><a href="#!">입학정보</a></li>
					</ul>
				</div>
				<div class="col-md-2">
					<h4 class="bold" style="margin-bottom: 10%;">학과 SNS</h4>
					<ul class="list-unstyled">
						<li style="margin-bottom: 1%;"><a href="#!">Instagram</a></li>
						<li style="margin-bottom: 1%;"><a href="#!">Facebook</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

</body>

</html>