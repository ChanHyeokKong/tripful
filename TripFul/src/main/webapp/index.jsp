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
            background-color: white;
            color: black;
        }
        .navbar {
            background-color: rgba(0, 0, 0, 0.85);
        }
        .navbar-nav .nav-link {
            color: white;
            transition: color 0.3s ease;
        }
        .navbar-nav .nav-link:hover {
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
            color: black;
        }
        .hero h1 {
            font-size: 3.5rem;
            font-weight: bold;
        }
        .hero h2 {
            font-size: 1.5rem;
            color: #d4af37;
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
                <li class="nav-item">
                    <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#regionModal">지역별 관광지</a>
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
    <h2 id="recommended" class="mb-4">추천 관광지</h2>
    <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
        <div class="col">
            <div class="card h-100">
                <img src="../image/seoul.jpg" class="card-img-top" alt="서울">
                <div class="card-body bg-white text-dark">
                    <h5 class="card-title">서울</h5>
                    <p class="card-text">역사와 현대가 어우러진 대한민국 수도 서울.</p>
                    <a href="#" class="btn btn-yellow">자세히 보기</a>
                </div>
            </div>
        </div>
    </div>

    <!-- 최근 리뷰 -->
    <h2 class="mb-3">여행자들의 리뷰</h2>
    <div class="list-group mb-5">
        <div class="list-group-item bg-light text-dark">
            <h5>서울 경복궁이 정말 멋졌어요!</h5>
            <p>역사와 전통을 직접 느낄 수 있어요. 한복 체험도 추천합니다.</p>
            <small>by 여행자A</small>
        </div>
    </div>
</main>

<!-- Footer -->
<footer class="text-white text-center py-4">
    <p class="mb-1">Address: 1234 Street, City, Country</p>
    <p class="mb-0">Tel: +123 456 7890</p>
</footer>

<!-- 지역별 관광지 모달 -->
<div class="modal fade" id="regionModal" tabindex="-1" aria-labelledby="regionModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="regionModalLabel">지역별 관광지</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3 d-flex flex-wrap gap-2">
                    <button class="btn btn-outline-primary" onclick="showCountries('asia')">아시아</button>
                    <button class="btn btn-outline-primary" onclick="showCountries('europe')">유럽</button>
                    <button class="btn btn-outline-primary" onclick="showCountries('americas')">아메리카</button>
                    <button class="btn btn-outline-primary" onclick="showCountries('oceania')">오세아니아</button>
                    <button class="btn btn-outline-primary" onclick="showCountries('africa')">아프리카</button>
                </div>
                <div id="countryList" class="d-flex flex-wrap gap-2"></div>
            </div>
        </div>
    </div>
</div>

<!-- 스크립트 -->
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


        const countriesByContinent = {
        asia: ['대한민국', '일본', '중국', '태국', '베트남'],
        europe: ['프랑스', '영국', '이탈리아', '독일', '스페인'],
        americas: ['미국', '캐나다', '브라질', '멕시코', '아르헨티나'],
        oceania: ['호주', '뉴질랜드', '피지'],
        africa: ['이집트', '남아프리카공화국', '모로코', '케냐']
    };

        function showCountries(continent) {
        const container = document.getElementById('countryList');
        container.innerHTML = '';
        countriesByContinent[continent].forEach(country => {
        const btn = document.createElement('a');
        btn.className = 'btn btn-outline-secondary';
        btn.href = 'country.jsp?name=' + encodeURIComponent(country);
        btn.textContent = country;
        container.appendChild(btn);
    });
    }


</script>

</body>
</html>
