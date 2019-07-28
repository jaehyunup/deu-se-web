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
						src="<c:url value="/resources/images/subslider.jpg" />" alt=""
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


	<!--좌측 사이드바 -->
	<div class="row">
		<!-- 왼쪽 사이드바는 lg-2(1offset) 우측콘텐츠는 lg-8 로 한다. -->
		<div class="col-lg-2 hidden-md-down offset-lg-1"
			style="padding-left: 1%; padding-right: 1%;">
			<div class="sidebartitle">학과 안내</div>
			<!-- Vertical Menu-->
			<nav class="nav flex-column bg-white p-3">
			 <a href="overview"
				class="nav-link px-4 py-3 my-1 shadow-sm sidebarmenu">
				<i class="fas fa-university mr-2"></i>학과 소개
			 </a> 
			 <a href="intention"
				class="nav-link active bg-info py-3 my-1 px-4 shadow-sm  sidebarmenu text-white">
				<i class="fas fa-graduation-cap mr-1"></i>교과 개요
			</a> 
			<a href="roadmap"
				class="nav-link px-4 py-3 my-1 shadow-sm sidebarmenu">
				<i class="fa fa-archway mr-1"></i>학과 커리큘럼
			</a> 
			</nav>
			<!-- End -->
		</div>
		<!--콘텐츠 -->
		<div class="col-lg-8 col-xs-12">
			<div class="tabs">
				<div class="container-fulid">
					<div class="row mx-0">
						<!--페이지 네비게이터(콘텐츠 탭 윗부분)-->
						<div class="col-xl-12 navigator">
							<a class="title"><i class="fas fa-archway"></i>&nbsp;&nbsp;학과커리큘럼</a>
							<a>홈 > 학과안내 > 교과 개요</a>
						</div>
						<div class="col-xs-12">
							<ul class="nav nav-pills">
								<li class="active"><a class="active" href="#tab_course1"
									data-toggle="pill"> 전공핵심과목 </a></li>
								<li><a href="#tab_course2" data-toggle="pill"> 전공심화과목</a></li>
								<li><a href="#tab_course3" data-toggle="pill"> 학문기초과목</a></li>

							</ul>
						</div>
					</div>

					<!-- 콘텐츠 탭 행 a=전공과목연계표, b=교과과정 , c = 교과개요 -->
					<div class="row">
						<div class="col-xl-12 mx-0" style="min-height: 300px">
							<div class="tab-content">
								<div class="tab-pane fade show active" id="tab_course1">
									<div class="col-xl-12 align-middle ">
										 <h5 style="margin-bottom:3%;font-weight:700;font-size:1.2rem;color:#333;
											padding-bottom:2%;">
											<i class="fas fa-chevron-circle-right" style="font-size:1.3rem;
											color:#333;margin-right:1%;">
											</i>전공핵심과목
										</h5>
										 
										 <span class="text07"><strong>일반물리학 Ⅰ,Ⅱ (GeneralPhysics Ⅰ,Ⅱ)</strong></span>	
										 <span class="text01">이공학의 기초가 되는 역학, 열역학, 음향학, 유체역학, 전자기학,
																광학 및 현대 물리학을 개론적으로 다룬다.</span>
								
										 <span class="text07"><strong>일반물리학실험 Ⅰ,Ⅱ (General Physics Laboratory)</strong></span>
										 <span class="text01">일반물리학에서 배운 이론을 실험을
											통하여 완전히 이해할 수 있도록 역학, 열역학, 전자기학, 광학 등 기본 실험을 행하고, 응용분야를 위한 실험
											기술을 습득한다.</span> 
											
										<span class="text07"><strong>컴퓨터개론 (Introduction to Computer)</strong></span>
										<span class="text01">하드웨어, 소프트웨어, 멀티미디어 및 컴퓨터 네트워크의
											일반적인 개념, 입력, 출력, 처리 및 저장장치, 기본 프로그래밍과 프로그램 구조, 시스템 분석 및 설계,
											데이터베이스 관리 시스템에 대하여 배운다.</span> 
											
										<span class="text07"><strong>데이터구조
												(Data Structures)</strong></span>
										
										 <span class="text01">자료구조의 개념 및 기초지식과 더불어 기본자료구조로서 스택 및 큐,
											리스트들을 다루며 고급자료 구조로서 그래프와 트리 등에 대하여 학습한다. 또한 자료구조의 응용으로서 탐색,
											정렬, 해슁 기법 등을 다룬다.</span> 
											
										<span class="text07"><strong>공학설계입문
												(Basic Engineering Design)</strong></span>
										<span class="text01">공학인이 갖추어야 할 기본 소양과 창의적 설계 능력을 기르기
											위해 이론 강의와 작품 설계 프로젝트로 구성된다. 이 과목을 통해서 공학인의 정의 및 필요한 능력, 제안서 및
											기술 보고서 쓰는 법, 프로젝트 추진법, 팀워크를 통한 공동개발법 등을 경험하고 공부한다.</span>
											
										 <span class="text07"><strong>이산수학론 (Theory of Discrete Mathematics)</strong></span>
												
										 <span
											class="text01">컴퓨터 관련 과목을 이수하기 전에 필요한 지식인 이산 개념에 기초를 둔
											학문으로 수학적 논리, 집합과 함수, 행렬, 관계, 트리, 그래프, 부울대수, 조합, 알고리즘, 형식언어,
											오토마타 등을 다룬다.</span> <span class="text07"><strong>데이터베이스론
												(Database Theory)</strong></span>
												
										<span class="text01">데이터베이스의 개념 및 구조, 데이터 모델, DBMS시스템의 종류,
											데이터베이스 설계기법, 데이터베이스 질의어(SQL), 트랜잭션 처리기법 등에 대하여 학습한다. 나아가
											VLDB와 관련된 데이터웨어하우스, 데이터마이닝 등의 기본 개념에 대하여 수업을 진행한다.</span> 
											
											
										<span class="text07"><strong>운영체제 (Operating
												System)</strong></span>
										 <span class="text01">운영체제의 개념, 발전과정, 기능, 구조 등과 시스템을 구성하는 여러
											자원들을 효율적으로 관리하는 방안을 학습한다. 나아가 프로세스와 스레드의 개념과 프로세스 동기화, 교착상태,
											메모리 관리, 가상 메모리, 파일 시스템 및 입출력 시스템의 기본적인 개념을 학습하며 리눅스 등의 운영체제
											사례에 대하여 학습한다.</span> 
											
											<span class="text07"><strong>컴퓨터구조(Computer Architecture)</strong></span>
												
											 <span class="text01">디지털 컴퓨터의 하드웨어 동작을 이해하는데 필요한 기본적인 지식을
											다루며, 논리회로 설계, 디지털 소자, 산술연산, 레지스터 전송과 명령어 집합, 기본 컴퓨터를 설계하기 위해
											설계자가 수행해야 할 상세한 단계, 중앙처리 장치의 구성과 구조, 입출력과 기억장치와 구성과 구조의 개념을
											다룬다.</span> 
											
											<span class="text07"><strong>컴퓨터네트워크(Computer Network)</strong></span>
											<span class="text01">디지털
											통신 기술을 기반으로 한 네트워크와 디지털 통신 이론에 대한 기본 모델, OSI 7계층 모델의 개념에 대하여
											이해하고, 각 계층에 대한 관련 프로토콜, 그리고 인터넷 통신 프로토콜인 TCP/IP를 다룬다. 나아가
											컴퓨터들 간의 연결을 위해 사용하는 LAN을 비롯하여 MAN, B-ISDN 등에 관하여 학습한다.</span> 
											
											<span class="text07"><strong>프로그래밍언어론 (Theory of Programming Language)</strong></span>
											
											<span class="text01">프로그래밍 언어의 신택스와 시멘틱스 등 컴퓨터가 인식하는 인공언어의
											기본원리 및 컴파일러 언어와 인터프리터 언어의 원리 및 바인딩 시간, 객체지향 프로그래밍 언어의 특징 등에
											대하여 학습한다.</span> 
											
											<span class="text07"><strong>객체지향프로그래밍Ⅱ
												(Object-Oriented Programming Ⅱ)</strong></span>
										<span class="text01">Java, C++, 비주얼 프로그래밍 언어 등 객체지향
											프로그래밍 언어를 이용하여 실제 소프트웨어 개발 방법론의 단계에 맞추어 응용프로그램을 작성하는 실습을
											수행한다.</span> 
											
										<span class="text07"><strong>객체지향모델링
												(Object-Oriented Modeling)</strong></span>
										<span class="text01">Unified Modeling Language (UML)은
											OMG 표준으로서, 객체지향 비주얼 모델링에 사용된다. 객체지향 시스템을 분석, 설계하기 위한 클래스도,
											쓰임새도 등과 같은 다이어그램 작성에 대하여 학습하고, 이를 이용한 패턴 적용과 책임 할당 방법을 알아본다.
											사례 연구를 통하여 애플리케이션의 분석과 설계 과정을 보여줌으로써 UML에 대한 이해를 더욱 증진하도록 한다.</span>
										
										<span class="text07"><strong>소프트웨어설계공학
												(Software Design Engineering)</strong></span>
										<span class="text01">고전적인 소프트웨어 개발 방법론인 폭포수 모델과 함께 객체지향
											설계 단계에서 사용되는 설계 패턴을 학습한다. 소프트웨어 개발 과정에 대한 이해를 통하여 소프트웨어를 보다 잘
											설계하고 개발할 수 있도록 한다. 또한 객체지향 분석․설계에서 사용되는 설계 패턴에 대한 개념을 이해함으로써
											고품질의 객체지향 소프트웨어를 개발할 수 있도록 한다.</span> 
											
										<span class="text07"><strong>컴퓨터알고리즘
												(Computer Algorithm)</strong></span>
												
										 <span class="text01">알고리즘의 표현방법, 기능 및 처리과정, 복잡도의 분석,
											정확성(correctness) 및 공정도(fairness)에 대하여 학습한다. 나아가 효율적인 알고리즘을
											설계하는 기법, 응용 등을 다루고 기존에 개발된 알고리즘을 주제별로 분류하여 학습한다.</span> 
											
										<span class="text07"><strong>캡스톤설계 (Capstone Design)</strong></span>
										 <span class="text01">논문프로젝트 과목으로 각자 혹은 몇 명이 팀을 이루어 창의적인 설계
											토픽을 선정하고 설계된 작품을 발표한다. 이 과목을 통해 제안서 및 최종 기술보고서의 작성부터 소프트웨어의
											설계와 발표를 통한 설계 노하우의 공개 등 여러 가지 이론 및 설계 지식을 복합적으로 습득한다.</span>
									</div>
								</div>

								<div class="tab-pane" id="tab_course2">
									<div class="container-fluid mb-5">
										<div class="row">
											<div class="col-md-12">
												<h5 style="margin-bottom:3%;font-weight:700;font-size:1.2rem;color:#333;
											padding-bottom:2%;">
											<i class="fas fa-chevron-circle-right" style="font-size:1.3rem;
											color:#333;margin-right:1%;">
											</i>전공심화과목
											</h5>
										
										 <span class="text07"><strong>생명과학개론
													(Introduction to Life Science)</strong></span>
													
											<span class="text01">생명체의 구성 및 기능, 생명체의 보존, 진화 등 생명과학
												분야의 기본 개념에 대하여 학습한다. 즉, 생명의 신비, 생명현상 등 생명과학의 기초기술 및 응용기술에
												관하여 개괄적으로 다룬다. 그리고 생명과학과 타 학문과의 관계 등에 대해서도 알아본다.</span> <span
											class="text07"><strong>비주얼프로그래밍 (Visual
													Programming)</strong></span>
													
											 <span
											class="text01">객체지향 프로그래밍을 위한 C 프로그래밍언어의 기초를 학습하고,
												객체지향 프로그램의 흐름을 잇는 비주얼 프로그래밍의 개념을 Visual C, MFC 등의 패키지를 이용하여
												시스템으로 설계 및 구현한다.</span> 
												
											<span class="text07"><strong>수치해석
													(Numerical Analysis)</strong></span>
													
											<span
											class="text01">수학적 논리전개에 따른 공식과 해법 등을 바탕으로 오차의 종류와계산법,
												고차방정식과 선형계방정식의 수치해법 그리고 곡선의 수치적 구성법, 보간법 등을 다룬다. 또한 상미분방정식의
												해법, 수치적분법, 고유치문제 등을 다룬다.</span> 
												
												<span class="text07"><strong>시스템프로그래밍
													(System Programming</strong>)</span>
													
												<span class="text01">리눅스와
												같은 운영체제 시스템을 사용하여 보고, 시스템 소프트웨어를 직접 프로그래밍 한다. 리눅스 환경과 쉘
												프로그래밍, 프로그래밍 개발 환경, 유닉스 시스템 호출 인터페이스에 대해 학습하고, 실제 프로그래밍을 통하여
												실습하여 본다. 아울러, 간단한 팀 프로젝트를 수행하여 시스템 프로그램 설계 능력을 갖추도록 한다.</span> 
												
												<span
											class="text07"><strong>영상처리 (Image
													Processing)</strong></span> <span
											class="text01">정지영상 및 동영상신호에 대한 인간시각모델, 색상표현, 영상분할 및
												합병 방법, 영역경계선 추출방법, 영상 압축 방법 등의 이론을 학습하고, 나아가 비주얼 인터페이스 시스템을
												위한 구현방법을 학습한다.</span> <span class="text07"><strong>지능정보시스템
													(Intelligent Information System)</strong></span>
											 <span class="text01">탐색, 게임, 지식표현, 자연어
												학습, 기계학습, 컴퓨터 비전, 전문가 시스템 등 인공지능에 대한 전반적인 이론을 습득한다.</span> <span
											class="text07"><strong>컴파일러개론 (Introduction
													to Compiler)</strong></span><span
											class="text01">컴파일러의 기본원리인 유한상태기계, 튜링기계, 계산함수 등의 오타마타
												이론을 기본적으로 다루고, 고급 프로그래밍언어를 번역하기 위한 프로그램 언어문법, 파싱, 코드생성 등에
												대해서 학습한다.</span> <span class="text07"><strong>파일처리론
													(File Processing Theory)</strong></span>
											<span class="text01">데이터 처리와 응용을 위한 파일의 기본 개념, 파일 저장
												장치의 구조, 파일의 입출력 제어 등을 학습하고 순차 파일, 인덱스 파일, 직접 파일 등의 다양한 파일
												구조를 배운다.</span> <span class="text07"><strong>확률및통계
													(Probability and Statistics)</strong></span>
											<span class="text01">확률에 대한 기본적인 이론, 랜덤 변수들의 분포, 조건부
												확률, 확률의 독립성을 살펴보고, 컴퓨터소프트웨어 관점에서 다수의 수치적 통계 방법과 통계적 알고리즘을
												다룬다.</span> <span class="text07"><strong>컴퓨터그래픽스
													(Computer Graphics)</strong></span><
													
													<span
											class="text01">컴퓨터 그래픽스의 정의 및 멀티미디어 분야와의 관련에 대하여 학습한다.
												나아가 다양한 컴퓨터 그래픽스용 하드웨어 및 소프트웨어의 원리에 대하여 알아보고 실습을 통하여 2, 3 차원
												모형의 설계 및 투시, 렌더링 및 애니메이션 등에 대한 이해를 증진시킨다.</span> <span
											class="text07"><strong>멀티미디어시스템 (Multimedia
													System)</strong></span> <span
											class="text01">멀티미디어 분야를 디바이스, 시스템, 응용분야 등 세 가지 영역으로
												나누어 멀티미디어 분야에 대한 기본적인 개념들에 대하여 학습한다. 나아가 컴퓨터 기반 멀티미디어 시스템의
												데이터 압축기술, 광 기억장치매체, 고속 네트워킹 시스템에 관하여 수업을 진행한다.</span> <span
											class="text07"><strong>정보보호론 (Information
													Security Theory)</strong></span> <span
											class="text01">정보보호에 개념, 암호 시스템, 운영체계 보안, 네트워크 보안,
												데이터베이스 보안, 인터넷 보안 등 전반적인 정보보호와 관련된 지식을 학습한다.</span> <span
											class="text07"><strong>객체지향프로그래밍Ⅰ
													(Object-Oriented Programming Ⅰ)</strong></span>
													
													 <span class="text01">Java, C++, 비주얼
												프로그래밍 언어 등 객체지향 프로그래밍 언어를 이용하여 실제 소프트웨어 개발 방법론의 단계에 맞추어
												응용프로그램을 작성하는 실습을 수행한다.</span> <span class="text07"><strong>객체지향설계
													(Object-Oriented Design)</strong></span>
											<span class="text01">자바, 서블릿, JSP 학습을 통하여 웹 애플리케이션 제작
												및 배포 전 과정에 대한 이해를 증진한다. 또한 Javamail API를 이용한 웹메일 프로젝트에 대한 분석
												및 기능 수정, 추가 과정을 통하여 애플리케이션 구성 요소들을 연동시키는 방법에 대해서 학습한다.</span> <span
											class="text07"><strong>임베디드소프트웨어 (Embedded
													Software)</strong></span><span
											class="text01">임베디드 소프트웨어 개발 환경 하에서 Embedded LINUX를
												장착한 임베디드 개발 보드에 부트로더, 커널, 파일 시스템, 디바이스 드라이버, 응용 소프트웨어 등을
												다운로드하는 실습을 진행한다.</span> <span class="text07"><strong>모바일프로그래밍
													(Mobile Programming)</strong></span>
													
													 <span
											class="text01">PDA, 핸드폰과 같은 모바일 장치를 위한 소프트웨어 개발 플랫폼,
												에뮬레이션 환경, GUI 프로그래밍, 네트워크 프로그래밍 등에 대하여 학습하고, 다양한 모바일 응용
												소프트웨어를 제작하여 본다.</span> <span class="text07"><strong>데이터베이스응용
													(Database Application)</strong></span> <span
											class="text01">최근 업계에서 많이 사용하고 있는 DBMS 실습을 통해 데이터베이스
												모델링 및 응용 프로그램 작성법을 습득함으로써 데이터베이스 이론이 실제 업무에서 어떻게 적용되는 가를
												배운다. 또한 전자상거래, 데이터마이닝 등 다양한 데이터베이스 응용 시스템에 대해 살펴본다.</span> <span
											class="text07"><strong>멀티미디어처리응용 (Multimedia
													Processing Application)</strong></span><span
											class="text01">애니메이션 기법, 정지 영상 및 동영상 압축기법, 실시간 영상 전송기법
												등의 멀티미디어 응용 과제를 실습한다.</span> <span class="text07"><strong>인터넷창업및경영
													(Internet Venture and Management)</strong></span>
													
												 <span class="text01">IT 분야의 벤처 창업과 경영에
												관련된 사항을 질의응답 방식으로 진행한다.</span> <span class="text07"><strong>디지털논리
													(Digital Logic)</strong></span>
													
													<span
											class="text01">순차논리의 기본인 플립플롭, 레지스터, 카운터 및 메모리 설계,
												레지스터 전송 회로를 이용한 프로세서 논리, 제어 논리 및 제어 장치의 하드웨어적 설계 그리고 비동기식
												순차논리회로의 설계 등을 학습함으로써 디지털 시스템의 실현 능력을 배양한다.</span> <span
											class="text07"><strong>유비쿼터스응용시스템 (Ubiquitous
													Systems)</strong></span>
													
													 <span
											class="text01">유비쿼터스 응용 시스템에 대한 기본적인 내용을 소개하고 유비쿼터스를
												이해하기 위해 필요한 필수 기초지식을 공부한다. 최근의 다양한 유비쿼터스 응용 미들웨어 기술에 대해
												소개한다. 유비쿼터스 응용 시스템 구축을 위해 필요한 유무선 네트워크 기술의 종류, 특성과 기술 동향에
												대하여 공부한다. 이러한 지식을 바탕으로 유비쿼터스 응용 시스템과 관련있는 서비스에 대해서 공부한다.</span>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tab_course3">
									<div class="container-fluid mb-5">
										<div class="row">
											<div class="col-md-12">
												<h5 style="margin-bottom:3%;font-weight:700;font-size:1.2rem;color:#333;
											padding-bottom:2%;">
											<i class="fas fa-chevron-circle-right" style="font-size:1.3rem;
											color:#333;margin-right:1%;">
											</i>학문기초과목
											</h5>	
												 <span class="text07"><strong>선형대수학
													(Linear Algebra)</strong></span>
												 <span class="text01">벡터공간과 기저 및 차원, 행렬공간, 내적과 Gram Schmidt
												수직화 정리, Orthogonal 변환과 Unitary 변환, 선형변환과 행렬, 기저의 변환, 행렬식과
												역행렬의 존재성, 선형시스템의 해법 등을 다루고, Eigen vectors와 Eigen values의 기본적
												성질과 행렬 대각화, 행렬의 Jordan form의 변환, Quadratic form 등을 다룬다.</span>
												
												 <span class="text07"><strong>미적분학 (Calculus)</strong></span>
											
												 <span class="text01"> 생명체의 구성 및 기능,
												생명체의 보존, 진화 등 생명 과학 분야의 기본 개념에 대하여 학습한다. 즉, 생명의 신비, 생명현상 등
												생명과학의 기초기술 및 응용기술에 관하여 개괄적으로 다룬다. 그리고 생명과학과 타 학문과의 관계 등에
												대해서도 알아본다.</span>
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