<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 : 로그인 페이지</title>

<style>
#container {
	width: 520px; -
	-border: 1px solid black;
	padding: 20px 40px;
	margin: 0px auto;
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

#login label {
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

fieldset legend {
	font-weight: bold;
}
</style>
</head>
<body>


			<%-- <h2>로그인 페이지</h2>

			<c:if test="${sessionScope.memberId ne null }">
			${sessionScope.memberName }님 환영합니다! 
			<br>
			</c:if>
			<c:if test="${memberId eq null }">
				<fieldset>
					<legend>로그인</legend>
					<form action="/login.do" method="post">
						<input type="text" name="member-id"><br> <input
							type="password" name="member-pw"><br>
						<div>
							<input type="submit" value="로그인"> <input type="reset"
								value="취소">
						</div>
						<a href="/member/login/id폼찾기페이지 (2).html">아이디 찾기</a> <a
							href="/member/login/pw비밀번호 찾기 폼 .html">비밀번호 찾기</a>
					</form>
				</fieldset>
			</c:if> --%>
</html>