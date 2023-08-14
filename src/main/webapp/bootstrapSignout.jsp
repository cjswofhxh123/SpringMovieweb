<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css rel="stylesheet">
 <link href=https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css rel="stylesheet">
 <link href=https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js rel="stylesheet">
 <link href="resources/bootstraplogin/bootstraplogin.css" rel="stylesheet">
 
</head>
<body>
<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card border-0 shadow rounded-3 my-5">
          <div class="card-body p-4 p-sm-5">
            <h5 class="card-title text-center mb-5 fw-light fs-5" href="/login.jsp">Sign In</h5>
            
            <form action="/member/register.do" method="post">
            
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="member-id" name ="member-id" placeholder="id">
                <label for="member-id">아이디</label>
              </div>
              <div class="form-floating mb-3">
                <input type="password" class="form-control" id="member-pw" name ="member-pw" placeholder="Password">
                <label for="member-pw">비밀번호</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="member-name" name ="member-name" placeholder="name">
                <label for="member-name">이름</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="member-age" name ="member-age" placeholder="age">
                <label for="member-age">나이</label>
              </div>
              <div class="form-floating mb-3">
                <label >성별</label>
                남<input class="form-check-input" type="radio" id="member-gender" name ="member-gender" value="M">
                여<input class="form-check-input" type="radio"  id=""  			name ="member-gender"  value="F">
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="member-email" name ="member-email" placeholder="name@example.com">
                <label for="member-email">이메일</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="member-phone" name ="member-phone" placeholder="phone">
                <label for="member-phone">전화번호</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control"  id="member-address" name ="member-address" placeholder="address">
                <label for="member-address">주소</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="member-hobby" name ="member-hobby" placeholder="hobby">
                <label for="member-hobby">취미</label>
              </div>

              <div class="form-check mb-3">
                <input class="form-check-input" type="checkbox" value="" id="rememberPasswordCheck">
                <label class="form-check-label" for="rememberPasswordCheck">
                  Remember password
                </label>
              </div>
              <div class="d-grid">
                <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">
                  가입하기</button>
              </div>
           
             
              
            	</form>
              
              </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>