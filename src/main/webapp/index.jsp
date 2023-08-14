<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>Headers · Bootstrap v5.0</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/headers/">
<link href="./resources/img (2)" rel="stylesheet">


<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="./mainCSS/headers.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="./carousel.css" rel="stylesheet">
</head>

<body>

	<main>
		<div class="container">
			<nav class="navbar p-3 mb-2 bg-dark text-white">

				<a class="navbar-brand abs text-white col-md-8" href="index.jsp">S_Movie</a>
				<form class="d-flex" action="/member/login.do" method="post">
					<c:if test="${memberId eq null }">
						<div class="col-4-md-8 text-end">
							<button type="button" class="btn btn-outline-primary me-2"
								onClick="location.href='/bootstraplogin.jsp'">Login</button>
							<button type="button" class="btn btn-primary"
								onClick="location.href='/bootstrapSignout.jsp'">Sign-up</button>
						</div>
					</c:if>
					<c:if test="${memberId ne null }">
						<div class="col-4-md-8 text-end">
						  <button type="button" class="btn btn-outline-primary me-2" onClick="location.href='member/logout.do'">로그아웃</button>
						</div>
					</c:if>
					<!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"> -->
					<!-- <button class="btn btn-outline-success" type="submit">Search</button> -->
				</form>

			</nav>
		</div>
		<!-- <ul class="nav">
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Login</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Sign up</a></li>
      </ul> -->


		<header class="py-3 mb-4 border-bottom">
			<div class="container d-flex">
				<!-- <a href="/" class="d-flex mb-3 z me-lg-auto text-dark text-decoration-none">  -->
				<!-- <svg class="bi me-2" width="40" height="32">
          <use xlink:href="#bootstrap"/></svg> -->
				<!-- <div class="fs-4">Double header</div> -->
				<!-- </a> -->
				<ul
					class="nav col-3 col-lg-auto me-lg-auto mb-2 justify-content-lg-start mb-md-0">
					<li><a href="/member/movie_Detail/movie_menu_page .html"
						class="nav-link px-2 link-secondary">영화</a></li>
					<li><a href="#" class="nav-link px-2 link-dark">극장</a></li>
					<li><a href="#" class="nav-link px-2 link-dark">영화관</a></li>
				</ul>
				<ul class="nav col-9 justify-content-end mb-md-0">
					<li><a href="#" class="nav-link px-2 link-dark">고객센터</a></li>
					<li><a href="/mypage.jsp" class="nav-link px-2 link-dark">mypage</a></li>
					
					<!--                 <li><a href="/member/mypage/mypage (1).html" class="nav-link px-2 link-dark">my페이지</a></li>
 -->
					<div class="nav col-2  ">
						<input type="search" class="form-control me-2"
							placeholder="Search" aria-label="Search" width="12px">
					</div>
				</ul>
			</div>
		</header>
	</main>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators canonical-dark">
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item" width="1280" height="720"
							src="https://www.youtube.com/embed/Ef1TBzqgLk4" frameborder="0"
							allowfullscreen></iframe>
					</div>
					<svg class="bd-placeholder-img" width="100%" height="100%"
						xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<rect width="100%" height="100%" fill="#777" /></svg>

					<div class="container">
						<div class="carousel-caption text-start">
							<!-- <h1>Example headline.</h1>
            <p>Some representative placeholder content for the first slide of the carousel.</p> -->
							<p>
								<a class="btn btn-lg btn-primary"
									href="/movie_Detail_img_ .html">상세정보보기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<iframe class="embed-responsive-item" width="1280" height="720"
						src="https://www.youtube.com/embed/YRdhVdzzMKk" frameborder="0"
						allowfullscreen></iframe>
					<svg class="bd-placeholder-img" width="100%" height="100%"
						xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<rect width="100%" height="100%" fill="#777" /></svg>

					<div class="container">
						<div class="carousel-caption">
							<h1>Another example headline.</h1>
							<p>Some representative placeholder content for the second
								slide of the carousel.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#">Learn more</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<iframe class="embed-responsive-item" width="1280" height="720"
						src="https://www.youtube.com/embed/SXkhnmdxVYw" frameborder="0"
						allowfullscreen></iframe>
					<svg class="bd-placeholder-img" width="100%" height="100%"
						xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<rect width="100%" height="100%" fill="#777" />
        <div class="container">
          <div class="carousel-caption text-end">
        
            <h1>One more for good measure.</h1>
            <p>Some representative placeholder content for the third slide of this carousel.</p>
            <p>
									<a class="btn btn-lg btn-primary" href="">Browse gallery</a>
								</p>
          </div>
        </div>
        </svg>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<br>
		<footer>
			<div section="text-center">
				<img src="./resources/img (2)/가디언즈 (2).jpg" class="rounded"
					width="200" height="300" alt="가디언즈"
					href="/member/movie_Detail/movie_Detail_img_가디언즈.html"> <img
					src="./resources/img (2)/스즈메 이미지 (2).jpg" class="rounded"
					width="200" height="300" alt="스즈메의 문단속"
					href="/member/movie_Detail/movie_Detail_img_스즈메.html"> <img
					src="./resources/img (2)/트랜스포터 포스터 (2).jpg" class="rounded"
					width="200" height="300" alt="트랜스포머"
					href="/8.movie_Detail_img_ (2).html"> <img
					src="./resources/img (2)/플래시 이미지 (2).jpg" class="rounded"
					width="200" height="300" alt="플래시"
					href="/member/movie_Detail/movie_Detail_img_플래시.html">
			</div>
		</footer>
	</div>
	<!-- <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="./img/86720_320.jpg" class="d-block" alt="슬램덩크" >
        </div>
        <div class="carousel-item">
          <img src="/img/86815_320.jpg" class="d-block" alt="스즈매" >
        </div>
        <div class="carousel-item">
          <img src="/img/86883_320.jpg" class="d-block" alt="아무거나" >
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div> -->
	<!-- <div class="text-center">
      <img src="./img/86720_320.jpg" class="rounded" alt="...">
      <img src="./img/86720_320.jpg" class="rounded" alt="...">
      <img src="./img/86720_320.jpg" class="rounded" alt="...">
      <img src="./img/86720_320.jpg" class="rounded" alt="...">
      <img src="./img/86720_320.jpg" class="rounded" alt="...">    
    </div> -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>