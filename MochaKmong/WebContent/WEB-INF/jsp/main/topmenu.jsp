<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Travel HTML-5 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/flaticon.css">
<link rel="stylesheet" href="assets/css/slicknav.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/nice-select.css">
<link rel="stylesheet" href="assets/css/style.css">

<style>

/* 로그인 멤버 알림 글자 깜박임 */
.blink {
	animation: blinker 2s linear infinite;
	padding-right: 20px;
}

@
keyframes blinker { 50% {
	opacity: 0;
}

}
#frm01>input[type="submit"] {
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	position: absolute;
	border: none;
	background-color: transparent;
	right: 5px;
	top: 5px;
}
</style>

<header>

	<!-- menu Start -->
	<div class="header-area" style="background-color: white;">
		<div class="main-header ">
			<div class="header-bottom  header-sticky">
				<div class="container">
					<div class="row align-items-center">
						<!-- Logo -->
						<div class="col-xl-2 col-lg-2 col-md-1">
							<div class="logo">
								<a href="main.do"><img src="assets/img/logo/123.png" alt=""></a>

							</div>
						</div>



						<div class="col-xl-10 col-lg-10 col-md-10">
							<!-- Main-menu -->
							<div class="main-menu f-right d-none d-lg-block">
								<nav>
								
									<ul id="navigation">
										<li>
											<div class="container01">
												<form id="frm01" name="frm01" action="classSearch1.do"
													method="post">
													<span class="icon"><i id="icon1"
														class="fa fa-search"></i></span> <input class="name" type="text"
														id="word" name="word" placeholder="search..">

												</form>
											</div>
										</li>
										
									
									


											<c:if test="${user_auth eq null }">
												<li><a href="boardList.do">공지사항</a>
													<ul class="submenu">

														<li><a href="boardList.do">공지사항</a></li>
														<li><a href="askList.do">자주묻는질문</a></li>
														<li><a href="consultList.do">문의게시판</a></li>
													</ul></li>
										<li><a href="createClassView.do">클래스등록</a></li>
										<li><a href="blog.html">로그인</a>
											<ul class="submenu">
												<li><a href="loginForm.do">로그인</a></li>
												<li><a href="userJoinForm.do">회원가입</a></li>
												<li><a href="myPage.do">마이페이지</a></li>
											</ul></li>

												<li><i class="far fa-user-circle"></i>
													<ul class="submenu">
														<li><a href="loginForm.do">로그인</a></li>
														<li><a href="userJoinForm.do">회원가입</a></li>
														<li><a href="myPage.do">마이페이지</a></li>
													</ul>
											</c:if>
											<!-- 로그인 알림(임시) -->
											<c:if test="${user_auth ne null }">
												<li><a href="boardList.do">공지사항</a>
													<ul class="submenu">
														<li><a href="boardList.do">공지사항</a></li>
														<li><a href="askList.do">자주묻는질문</a></li>
														<li><a href="consultList.do">문의게시판</a></li>

													</ul></li>
												<li><a href="createClassView.do">클래스등록</a></li>
												<li><a href="about.html" class="blink">${user_id }님
														접속을 환영합니다.</a>
													<ul class="submenu">
														<li><a class="menuLink" href="logout.do">로그아웃</a></li>
														<li></li>
														<li><a class="menuLink" href="myPage.do">내클래스/프로필</a></li>
													</ul>
											</c:if>
										</ul>
								</nav>
							</div>
						</div>
						<!-- Mobile Menu -->
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- main End -->

</header>
