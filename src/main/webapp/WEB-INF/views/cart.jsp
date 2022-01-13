<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Blueprint: Vertical Timeline</title>
<meta name="description" content="Blueprint: Vertical Timeline" />
<meta name="keywords"
	content="timeline, vertical, layout, style, component, web development, template, responsive" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css"
	href="../resources/css/cart_default.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/css/cart_component.css" />
<script src="../resources/js/modernizr.custom.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
	integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="includes/header.jsp" />
	<div class="container">
		<div class="Cartmain">
			<hr style="border: solid 5px #FC7B70;">
			<ul class="cbp_tmtimeline">
					<!-- forEach -->
					<li>
						<div class="cbp_tmicon">
							<i class="fas fa-gift"></i>
						</div>
						<div class="cbp_tmlabel row align-items-center">
							<div class="col-sm-5 ">
								<img src="/resources/images/T-shirt.jpg" class="rounded-circle"
									alt="Cinque Terre" width="150px">
							</div>
							<div class="col-sm-7">
								<label for="productName">상품명</label>
								<input type="text" class="form-control form-control-sm" id="productName" readonly="readonly" value="상품명">
								<label for="color">색상</label>
								<input type="text" class="form-control form-control-sm" id="color" readonly="readonly" value="색상">
								<label for="size">사이즈 : </label>
								<input type="text" class="form-control form-control-sm" id="size" readonly="readonly" value="size">
								<label for="count">수량</label>
								<input type="text" class="form-control form-control-sm" id="count" readonly="readonly" value="count">
								<label for="imageNum">이미지 개수</label>
								<input type="text" class="form-control form-control-sm" id="imageNum" readonly="readonly" value="이미지 개수">
								<label for="textNum">텍스트 개수</label>
								<input type="text" class="form-control form-control-sm" id="textNum" readonly="readonly" value="텍스트 개수">
								<div class="form-check-inline">
									<label class="form-check-label"> 100,000&nbsp;<input
										type="checkbox" class="form-check-input"
										style="width: 20px; height: 20px;" value="price" checked>
									</label>
								</div>
							</div>
						</div>
					</li>
					<!-- forEach -->
			</ul>
			<hr style="border: solid 5px #FC7B70;">
			<div class="col-sm-8" style="float: right;">
				<h2 style="text-align: right; margin: 5px">
					총 금액&nbsp;
					<button type="button" class="btn btn-secondary col-sm-3">선택</button>
				</h2>
			</div>
		</div>
	</div>
	<jsp:include page="includes/footer.jsp" />
</body>
</html>

