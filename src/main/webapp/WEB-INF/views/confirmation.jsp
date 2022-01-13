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
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <style type="text/css">
  	.carousel-inner img {
    	width: 100%;
    	height: 100%;
  	}
  </style>
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
						<div class="col-sm-8 ">
							<div class= "row divinfo" style="display: flex;">
								<label class="col-sm-3" for="configNum" style="font-size: 15px">주문 번호</label>
 								<input type="text" class="form-control col-sm-9" placeholder="주문 번호" id="configNum" readonly>
 								<label class="col-sm-3" for="configDate" style="font-size: 15px">구매 날짜</label>
 								<input type="text" class="form-control col-sm-9" placeholder="구매 날짜" id="configDate" readonly>
 								<label class="col-sm-3" for="priceSum" style="font-size: 15px">총 가격</label>
 								<input type="text" class="form-control col-sm-9" placeholder="총 가격" id="priceSum" readonly>
 								
							</div>
						</div>
						<!-- 이미지 슬라이드 -->
						<div class="col-sm-4">
							<div id="demo" class="carousel slide" data-ride="carousel">
  							<!-- Indicators -->
  								<ul class="carousel-indicators">
  									<li data-target="#demo" data-slide-to="0" class="active"></li>
  									<li data-target="#demo" data-slide-to="1"></li>
  									<li data-target="#demo" data-slide-to="2"></li>
  								</ul>
   								<!-- The slideshow -->
  								<div class="carousel-inner">
  									<div class="carousel-item active">
  										<img src="/resources/images/T-shirt.jpg" class="rounded-circle">
  									</div>
  									<div class="carousel-item">
  										<img src="/resources/images/T-shirt.jpg" class="rounded-circle">
  									</div>
  									<div class="carousel-item">
  										<img src="/resources/images/T-shirt.jpg" class="rounded-circle">
  									</div>
  								</div>
  								<!-- Left and right controls -->
  								<a class="carousel-control-prev" href="#demo" data-slide="prev">
  									<span class="carousel-control-prev-icon"></span>
  								</a>
  								<a class="carousel-control-next" href="#demo" data-slide="next">
  									<span class="carousel-control-next-icon"></span>
  								</a>
  							</div>	
						</div>
						<!-- 이미지 슬라이드 -->
					</div>
				</li>
				<!-- forEach -->
				
			</ul>
			<hr style="border: solid 5px #FC7B70;">
		</div>
	</div>
	<jsp:include page="includes/footer.jsp" />
</body>
</html>

 