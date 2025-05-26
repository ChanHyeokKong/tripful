<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.board_menu table{
		width: auto;
	}
	
	.board_menu td{
		width: 300px;
		height: 80px;
		font-size: 20px;
		cursor: pointer;
		text-align: center;
		vertical-align: middle;
		border: 1px solid #ccc;
		transition: background-color 0.3s ease;
	}
	.title{
		border: 1px solid gray;
		height: 260px;
		
		display: flex;               /* 플렉스 컨테이너 활성화 */
    	justify-content: center;     /* 가로 방향 중앙 정렬 */
    	align-items: center;         /* 세로 방향 중앙 정렬 */
	}
	
	.title-content{
		
	}
	
	.board_menu td.active {
		background-color: #198754;
		color: white;
		font-weight: bold;
	}

	.title .title-content {
		margin-top: auto;
		margin-bottom: 0;
	}
</style>
</head>
<body>
<div class="board_header">
	<div class="title">
		<div class="title-content">
			<h1>소식</h1>
			<div class="desc">새로운 소식</div>
			<div class="board_menu"></div>
		</div>
		<script type="text/javascript">
			//메뉴 변수
			const board_menu = `
			<table class='table table-bordered'>
				<tr>
					<td data-url='notice.jsp'>공지사항</td>
					<td data-url='event.jsp'>이벤트</td>
					<td data-url='support.jsp'>고객센터</td>
				</tr>
			</table>`;
			
			// 메뉴삽입
			$(".board_menu").html(board_menu)
			// 기본으로 첫 번째 td에 active 클래스 부여
			$(".board_menu td:first").addClass("active");
			
			// 클릭 이벤트 설정
			$(".board_menu").on("click", "td", function() {
			// 모든 td에서 active 제거
			$(".board_menu td").removeClass("active");

			// 클릭한 td에 active 추가
			$(this).addClass("active");

			// 페이지 이동
			const url = $(this).data("EventBoardList.jsp");
			if (url) {
				window.location.href = url;
			}
		});
		</script>
	</div>
</div>
<br><br><br>
<div class="d-flex justify-content-center">
	<form action="#">
		<table class="table table-hover" style="width: 1000px;">
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
				</tr>
			</thead>
			<tbody>
			<%
				for(int i=0;i<10;i++)
				{%>
					<tr>
						<th scope="row"><%=i+1%></th>
						<td>제목</td>
						<td>손흥민</td>
						<td>2025-05-21</td>
					</tr>
				<%}
			%>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>