<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Tripful - 관광지 정보</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: #1a1a1a;
            color: white;
        }
        .navbar {
            background-color: rgba(0, 0, 0, 0.85);
        }
        .navbar-nav .nav-link {
            color: white;
            transition: color 0.3s ease;
        }
        .navbar-nav .nav-link:hover {
            color: #fdd835; /* 노란색 hover 효과 */
        }
        .dropdown-menu {
            background-color: #333;
        }
        .dropdown-item {
            color: white;
        }
        .dropdown-item:hover {
            background-color: #444;
            color: #fdd835;
        }
        .hero {
            background-image: url('../image/IMG_0104.JPEG');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .hero h1 {
            font-size: 3.5rem;
            font-weight: bold;
            color: white;
        }
        .hero h2 {
            font-size: 1.5rem;
            color: #fdd835;
            font-style: italic;
        }
        .btn-yellow {
            background-color: #fdd835;
            color: black;
            border: none;
        }
        .btn-yellow:hover {
            background-color: #e6c200;
        }
        footer {
            background-color: #111;
        }
    </style>
</head>
<body>

<!-- Header/Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top shadow">
    <div class="container-fluid px-4">
        <a class="navbar-brand" href="main.jsp">
            <img src="../image/tripful.png" alt="Tripful Logo" height="40">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">지역별 관광지</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">서울</a></li>
                        <li><a class="dropdown-item" href="#">부산</a></li>
                        <li><a class="dropdown-item" href="#">제주</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link" href="#">이벤트</a></li>
                <li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
            </ul>
            <div class="d-flex align-items-center text-white">
                <span id="welcome-text" class="me-3">로그인을 해주세요</span>
                <button id="auth-button" class="btn btn-yellow">Login</button>
            </div>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<header class="hero">
    <h2>Welcome To Our Studio!</h2>
    <h1>IT'S NICE TO MEET YOU</h1>
    <a href="#recommended" class="btn btn-yellow btn-lg mt-4">Tell Me More</a>
</header>

<!-- Main Content -->
<main class="container py-5">
    <h2 id="recommended" class="mb-4 text-white">추천 관광지</h2>
    <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
        <!-- 카드 반복 -->
        <div class="col">
            <div class="card h-100">
                <img src="../image/seoul.jpg" class="card-img-top" alt="서울">
                <div class="card-body bg-dark text-white">
                    <h5 class="card-title">서울</h5>
                    <p class="card-text">역사와 현대가 어우러진 대한민국 수도 서울.</p>
                    <a href="#" class="btn btn-yellow">자세히 보기</a>
                </div>
            </div>
        </div>
        <!-- 나머지 카드도 같은 방식으로 -->
    </div>

    <!-- 최근 리뷰 -->
    <h2 class="mb-3 text-white">여행자들의 리뷰</h2>
    <div class="list-group mb-5">
        <div class="list-group-item bg-secondary text-white">
            <h5>서울 경복궁이 정말 멋졌어요!</h5>
            <p>역사와 전통을 직접 느낄 수 있어요. 한복 체험도 추천합니다.</p>
            <small>by 여행자A</small>
        </div>
        <!-- 더 많은 리뷰 추가 -->
    </div>
</main>

<!-- Footer -->
<footer class="text-white text-center py-4">
    <p class="mb-1">Address: 1234 Street, City, Country</p>
    <p class="mb-0">Tel: +123 456 7890</p>
</footer>

<script>
    const authButton = document.getElementById('auth-button');
    const welcomeText = document.getElementById('welcome-text');
    let loggedIn = false;

    authButton.addEventListener('click', () => {
        loggedIn = !loggedIn;
        if (loggedIn) {
            welcomeText.textContent = 'taelim34 님 환영합니다';
            authButton.textContent = 'Logout';
            authButton.classList.remove('btn-yellow');
            authButton.classList.add('btn-danger');
        } else {
            welcomeText.textContent = '로그인을 해주세요';
            authButton.textContent = 'Login';
            authButton.classList.remove('btn-danger');
            authButton.classList.add('btn-yellow');
        }
    });
</script>

</body>
</html>
