<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/member/mypage (1).css">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/headers/">
      
        <!-- Bootstrap core CSS -->
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        h1 {
            text-align: center;
        }
        #mypagepropril > li{
            float: left;
            padding: 30px;
            --height: 50px;
        }
        #mypage1 {
            margin-top: 200px;
            --height: 100px;
        }
        button {
          float: right;
        }
     
    </style>
</head>
<body>
    
    <div class="container">
        <nav class="navbar p-3 mb-2 bg-dark text-white">
            <a class="navbar-brand abs text-white col-md-8" href="/index.jsp">S_Movie</a>
            <form class="d-flex">
              <div class="col-4-md-8 text-end">
                 <button type="button" class="btn btn-outline-primary me-2" onClick="location.href='member/logout.do'">로그아웃</button>
              </div>
            </form>
        </nav>
      </div>
      
    
        <header class="py-3 mb-4 border-bottom">
          <div class="container d-flex">
         
              <ul class="nav col-3 col-lg-auto me-lg-auto mb-2 justify-content-lg-start mb-md-0">
                <li><a href="#" class="nav-link px-2 link-secondary">영화</a></li>
                <li><a href="#" class="nav-link px-2 link-dark">극장</a></li>
                <li><a href="#" class="nav-link px-2 link-dark">영화관</a></li>
              </ul>
              <ul class="nav col-9 justify-content-end mb-md-0">
                    <li><a href="#" class="nav-link px-2 link-dark">고객센터</a></li>
                    <li><a href="#" class="nav-link px-2 link-dark">my페이지</a></li>
                    <div class="nav col-2">
                      <input type="search" class="form-control me-2" placeholder="Search" aria-label="Search" width="12px">
                    </div>
              </ul>
            </div>
          </header>


    <div id="main">
        <div id ="main-layer1">
            <div>
                <ul id = "mypage1">
                    <li><a href="/member/mypage/mypage (1).html">my page</a></li> <br>
                    <li><a href="/member/mypage/mypage_Ticketing.html">나의 예매정보</a></li>
                    <li><a href="/member/mypage/mypage_회원상세정보.html">나의 회원상세정보</a></li>
                    <li><a href="/member/mypage/mypage_개인정보.html">개인정보 변경</a></li>
                    <li><a href="/member/mypage/mypage_my_see.html">내가 본 영화</a></li>
                    <li><a href="/member/mypage/myDelete회원탈퇴.html">회원탈퇴</a></li>
                    <li>나의 찜 영화</li>
                </ul>
            </div>
        </div>
        <div id ="main-layer2">
            <button>프로필설정</button>
            <h1>송정현님 고객님은 현재 아이언 등급입니다.</h1>
            <hr>
                <div>
                    <ul id = "mypagepropril">
                        <li>아이언</li>
                        <li>브론즈 </li>
                        <li>실버 </li>
                        <li>골드 </li>
                        <li>플레티넘</li>
                        <li>다이아</li>
                        <li>VIP</li>
                    </ul>
                </div>
        </div>
    </div>
</body>
</html>