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

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/headers/">

<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<title>영화 : 회원가입하기</title>
<style>
#container {
	width: 520px;
	border: 1px solid black;
	padding: 20px 40px;
	margin: 0px auto;
	background-color: rgb(rgba(191, 183, 183, 0.758), rgb(196, 196, 196),
		blue);
}

ul {
	list-style-type: none;
	padding-left: 10px;
}

li {
	margin: 10px;
}

input[type=text], input[type=email], input[type=tel] {
	width: 300px;
}

#shipping label {
	width: 120px;
	float: center;
	text-align: center;
}

form>div {
	display: flex;
	flex-direction: row;
	justify-content: space-evenly;
	align-items: stretch;
	margin-top: 20px;
}

form>div>input {
	width: 150px;
	height: 40px;
	text-align: center;
	border: 1px solid #ccc;
	background-color: #fafafa;
	box-shadow: 1px 1px 1px #ccc;
}

p {
	font-weight: bolder;
}

fieldset legend {
	font-weight: bold;
}
</style>
</head>
<body>



	<div id="container">
		<!-- <h1>회원가입</h1> -->
		<form action="/register.do" method="post">
			<fieldset>
				<legend>회원가입</legend>
				<ul id="shipping">
					<li><label for="member-id">아이디</label> <input type="text"
						id="member-id" name="member-id"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li><label for="member-pw">비밀번호</label> <input type="password"
						id="member-pw" name="member-pw"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li><label for="member-name">이름</label> <input type="text"
						id="member-name" name="member-name"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li><label for="member-age">나이</label> <input type="text"
						id="member-age" name="member-age"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li><label for="member-gender">성별</label> 남<input type="radio"
						id="member-gender" name="member-gender" value="M"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
						여<input type="radio" id="" name="member-gender" value="F">
						<!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name --></li>
					<li><label for="member-email">이메일</label> <input type="text"
						id="member-email" name="member-email"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li><label for="member-phone">전화번호</label> <input type="text"
						id="member-phone" name="member-phone"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li><label for="member-address">주소</label> <input type="text"
						id="member-address" name="member-address"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li><label for="member-hobby">취미</label> <input type="text"
						id="member-hobby" name="member-hobby"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
				</ul>
			</fieldset>
			<div>
				<input type="submit" value="가입하기"> <input type="reset"
					value="초기화">
			</div>
		</form>
	</div>
</body>
</html>