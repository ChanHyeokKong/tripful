<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<nav class="navbar navbar-light shadow px-4">
    <div class="container-fluid d-flex justify-content-between align-items-center position-relative">

        <!-- 좌측 햄버거 버튼 -->
        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#mainMenu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- 중앙 로고 -->
        <div class="position-absolute top-50 start-50 translate-middle">
            <a class="navbar-brand" href="index.jsp">
                <img src="../image/tripful_logo.png" alt="Tripful Logo" height="100">
            </a>
        </div>

        <!-- 우측 로그인 영역 -->
        <div class="d-flex align-items-center">
            <span id="welcome-text" class="me-3">로그인을 해주세요</span>
            <button id="auth-button" class="btn btn-yellow">Login</button>
        </div>
    </div>

    <!-- 햄버거 메뉴 펼침 영역 -->
    <div class="collapse" id="mainMenu">
        <ul class="navbar-nav px-4 py-3 bg-light">
            <li class="nav-item">
                <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#regionModal">지역별 관광지</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="#">이벤트</a></li>
            <li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
            <li class="nav-item"><a class="nav-link" href="#">QnA 게시판</a></li>
        </ul>
    </div>
</nav>



<header class="hero">
    <h2>Welcome To Our Studio!</h2>
    <h1>IT'S NICE TO MEET YOU</h1>
    <a href="#recommended" class="btn btn-yellow btn-lg mt-4">Tell Me More</a>
</header>
