<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<main class="container py-5">
    <!-- 추천 관광지 -->
    <h2 id="recommended" class="mb-4 text-center fw-bold">추천 관광지</h2>
    <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
        <div class="col">
            <div class="card h-100 shadow-sm border-0">
                <img src="../image/seoul.jpg" class="card-img-top rounded-top" alt="서울">
                <div class="card-body">
                    <h5 class="card-title fw-semibold">서울</h5>
                    <p class="card-text text-muted">역사와 현대가 어우러진 대한민국 수도 서울.</p>
                    <a href="#" class="btn btn-warning">자세히 보기</a>
                </div>
            </div>
        </div>
        <!-- 다른 관광지 카드도 같은 형식으로 추가 가능 -->
    </div>

    <!-- 최근 리뷰 -->
    <h2 class="mb-4 text-center fw-bold">여행자들의 리뷰</h2>
    <div class="list-group mb-5 shadow-sm">
        <div class="list-group-item bg-body border-start border-5 border-warning">
            <h5 class="mb-1 fw-semibold">서울 경복궁이 정말 멋졌어요!</h5>
            <p class="mb-1 text-muted">역사와 전통을 직접 느낄 수 있어요. 한복 체험도 추천합니다.</p>
            <small class="text-secondary">by 여행자A</small>
        </div>
        <!-- 추가 리뷰도 같은 형식으로 삽입 -->
    </div>
</main>
