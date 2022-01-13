<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/custom.css">
<link href="http://fonts.googleapis.com/css?family=Architects+Daughter" rel="stylesheet" type="text/css">

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/css/lightgallery.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- color picker -->
<link rel="stylesheet" href="/resources/css/colorPick.min.css">
<!-- <link rel="stylesheet" href="/resources/css/colorPick.dark.theme.css"> -->

</head>
<body>
	<%@include file="../includes/header.jsp"%>
	<div class="container">
		<section class="home" id="home">
			<div class="slide active">
				<div class="image">
					<img src="/resources/images/red.png" alt="">
				</div>
				<div class="content">
					<h3>공지사항</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo eveniet veniam tempora fuga tenetur placeat sapiente architecto illum soluta consequuntur, aspernatur quidem at sequi ipsa!</p>
					<div class="controls">
						<div class="fas fa-angle-left" id="fp" onclick="prev()"></div>
						<div class="fas fa-angle-right" id="fn" onclick="next()"></div>
					</div>
				</div>
			</div>

			<div class="slide">
				<div class="image">
					<img src="/resources/images/red.png" alt="">
				</div>
				<div class="content">
					<p style="margin-top: -30px; margin-bottom: -100px;">기본 설정</p>
					<div class="box" style="height:150px;">
						<div class="item">
							색깔&nbsp;&nbsp;&nbsp;<div class="picker"></div>
						</div>
						<div class="item" style="padding-top: 10px;">
							사이즈&nbsp;&nbsp;&nbsp;
							<select class="w3-input w3-border w3-round-large" name="msg">
								<option value="" disabled selected>사이즈를 선택하세요.</option>
								<option value="1">S</option>
								<option value="2">M</option>
								<option value="3">L</option>
							</select>
						</div>
					</div>
					<p style="margin-top: -50px; margin-bottom: -100px;">커스텀</p>
					<div class="box">
						<div class="item">
							<input type="file" class="form-control-file" id="file">
						</div>
						<div class="item">
							<div style="width: 100%; height: 100px; background: rgb(252, 123, 112); border-radius:10px;"></div>
						</div>
					</div>
					<div class="controls">
						<div class="fas fa-angle-left" onclick="prev()"></div>
						<div class="fas fa-angle-right" onclick="next()"></div>
					</div>
				</div>
			</div>

			<div class="slide">
				<div class="image">
					<img src="/resources/images/red.png" alt="">
				</div>
				<div class="content">
					<p style="margin-top: 50px; margin-bottom: -30px;">결제 정보</p>
					<div class="receipt">
						<header class="receipt__header">
							<p class="receipt__title">CC</p>
							<!-- <p class="receipt__date">2021-01-12</p> -->
						</header>
						<dl class="receipt__list">
							<div class="receipt__list-row">
								<dt class="receipt__item">기본 금액</dt>
								<dd class="receipt__cost">￦10,000</dd>
							</div>
							<div class="receipt__list-row">
								<dt class="receipt__item">이미지 아이콘</dt>
								<dd class="receipt__cost">￦5,000</dd>
							</div>
							<div class="receipt__list-row receipt__list-row--total">
								<dt class="receipt__item">Total</dt>
								<dd class="receipt__cost">￦15,000</dd>
							</div>
						</dl>
					</div>
					<div class="btn-grp">
						<button type="button" class="btn">
							장바구니 <i class="fas fa-shopping-cart"></i>
						</button>
						<button type="button" class="btn">구매하기</button>
					</div>
					<div class="controls">
						<div class="fas fa-angle-left" id="tp" onclick="prev()"></div>
						<div class="fas fa-angle-right" id="tn" onclick="next()"></div>
					</div>
				</div>
			</div>
		</section>	
	</div>
	<!-- container -->
	
	<footer>
		<h3>C C. color custom</h3>
	</footer>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/js/lightgallery.min.js"></script>

	<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

	<!-- custom js file link      -->
	<script src="/resources/js/custom.js"></script>
	<script src="/resources/js/colorPick.min.js"></script>
	
	<script type="text/javascript">
		$(".picker").colorPick({
			'initialColor': '#8e44ad',
			'palette': ["#1abc9c", "#16a085", "#2ecc71", "#27ae60", "#3498db", "#2980b9", "#9b59b6", "#8e44ad", "#34495e", "#2c3e50", "#f1c40f", "#f39c12", "#e67e22", "#d35400", "#e74c3c", "#c0392b", "#ecf0f1"],
			'onColorSelected': function() {
				console.log("The user has selected the color: " + this.color)
				this.element.css({ 'backgroundColor': this.color, 'color': this.color });
			}
		});
	</script>
</body>
</html>