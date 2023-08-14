<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항 작성</title>
		<link rel="stylesheet" href="/resources/css/notice/main.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/headers/">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
		</head>
	 <style>
  	table {
				width : 800px;
				border : 1px solid black;
				border-collapse : collapse;
			}
			th, td {
				border : 1px solid black;
			}
     
    </style>
	
	</head>
	<body>
	<div class ="container">
		
		<h1>공지사항 작성</h1>
		<form action="/notice/insert.do" method="post">
			<fieldset>
			
				<legend>공지사항 작성</legend>
				
				<ul class ="pageination justify-content-center">
					<li>
						<label>제목</label>
						<input type="text" id="" name="noticeSubject">
					</li>
					<li>
						<label>내용</label>
						<textarea rows="30" cols="40" id="" name="noticeContent"></textarea>
					</li>
				</ul>
			</fieldset>
			
			<div>
				<button type= "button" class ="btn btn-outline-info" onClick="location.href='member/logout.do'">작성</button>
<!-- 				<input type="submit" value="작성">
 -->				<input type="reset" value="초기화">
			</div>
		</form>
		</table>
		</div>
	</body>
</html>