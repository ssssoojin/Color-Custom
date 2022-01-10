<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<!-- css -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link href="/resources/css/dashboard.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<!-- js -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/base.js"></script>



</head>
<style>
@media (min-width: 1200px){
.container{
max-width: 1600px !important;}
}}
</style>

<body>
	<script>
	$('.carousel').carousel(
			{ interval: 2000 //기본 5초
				}) 
	</script>
	
	<%@include file="../includes/header.jsp"%>
	<div class="allcontainer" style="margin:25px 0 ">
	<div class="container">
	 <div class="row">
	 <div class="col-sm-6">
<br>
	<div id="demo" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			<!-- 슬라이드 쇼 -->
			<div class="carousel-item active">
				<!--가로-->
				<img style="height: 780px"
					src="/resources/images/blue.png"
					alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>TEST</h5>
					<p>testtesttest</p>
				</div>
			</div>
			<div class="carousel-item">
				<img style="height: 780px"
					src="/resources/images/black.png"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img style="height: 780px"
					src="/resources/images/red.png"
					alt="Third slide">
			</div>
			<!-- / 슬라이드 쇼 끝 -->
			<!-- 왼쪽 오른쪽 화살표 버튼 -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<!-- <span>Previous</span> -->
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<!-- <span>Next</span> -->
			</a>
			<!-- / 화살표 버튼 끝 -->
			<!-- 인디케이터 -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<!--0번부터시작-->
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<!-- 인디케이터 끝 -->
		</div>
</div>
</div>

		<div class="col-md-6">
<div class="container">
		<br>
		 <div class="widget">
            <div class="widget-header">
              <!-- <h3>Important Shortcuts</h3> -->
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <div class="shortcuts"> <a href="javascript:;" class="shortcut">
              <i class="shortcut-icon icon-list-alt"></i>
              <span class="shortcut-label">반팔</span> </a><a href="javascript:;" class="shortcut">
              <i class="shortcut-icon icon-bookmark"></i>
              <span class="shortcut-label">긴팔</span> </a><a href="javascript:;" class="shortcut">
              <i class="shortcut-icon icon-signal"></i> 
              <span class="shortcut-label">반팔셔츠</span> </a><a href="javascript:;" class="shortcut"> 
              <i class="shortcut-icon icon-comment"></i>
              <span class="shortcut-label">긴팔셔츠</span> </a><a href="javascript:;" class="shortcut">
              <i class="shortcut-icon icon-user"></i>
              <span class="shortcut-label">민소매</span> </a><a href="javascript:;" class="shortcut">
              <i class="shortcut-icon icon-file"></i>
              <span class="shortcut-label">반바지</span> </a><a href="javascript:;" class="shortcut">
              <i class="shortcut-icon icon-picture"></i> 
              <span class="shortcut-label">긴바지</span> </a><a href="javascript:;" class="shortcut"> 
              <i class="shortcut-icon icon-tag"></i>
              <span class="shortcut-label">치마</span> </a> </div>
              <!-- /shortcuts --> 
            </div>
            <!-- /widget-content --> 
          </div>
		</div>
		
		<div class="container">		
<p style="text-align:center; text-size:16px">items</p>
    	<div class="row">
        <div class="col-md-4 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="#">
                        <img class="pic-1" src="/resources/images/black.png">
                        <img class="pic-2" src="/resources/images/black.png">
                    </a>
                    <ul class="social">
                        <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                        <li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
                        <li><a href="" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                    </ul>
                    <span class="product-new-label">Sale</span>
                    <span class="product-discount-label">20%</span>
                </div>
                <ul class="rating">
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star disable"></li>
                </ul>
                <div class="product-content">
                    <h3 class="title"><a href="#">Women's Blouse</a></h3>
                    <div class="price">$16.00
                        <span>$20.00</span>
                    </div>
                    <a class="add-to-cart" href="">+ Add To Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="#">
                        <img class="pic-1" src="/resources/images/black.png">
                        <img class="pic-2" src="/resources/images/black.png">
                    </a>
                    <ul class="social">
                        <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                        <li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
                        <li><a href="" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                    </ul>
                    <span class="product-new-label">Sale</span>
                    <span class="product-discount-label">50%</span>
                </div>
                <ul class="rating">
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                </ul>
                <div class="product-content">
                    <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                    <div class="price">$5.00
                        <span>$10.00</span>
                    </div>
                    <a class="add-to-cart" href="">+ Add To Cart</a>
                </div>
            </div>
        </div>
       
        <div class="col-md-4 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="#">
                        <img class="pic-1" src="/resources/images/black.png">
                        <img class="pic-2" src="/resources/images/black.png">
                    </a>
                    <ul class="social">
                        <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                        <li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
                        <li><a href="" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                    </ul>
                    <span class="product-new-label">Sale</span>
                    <span class="product-discount-label">50%</span>
                </div>
                <ul class="rating">
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                </ul>
                <div class="product-content">
                    <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                    <div class="price">$5.00
                        <span>$10.00</span>
                    </div>
                    <a class="add-to-cart" href="">+ Add To Cart</a>
                </div>
            </div>
        </div>
    </div>
    </div>
    <br>
    <div class="container">		

    	<div class="row">
        <div class="col-md-4 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="#">
                        <img class="pic-1" src="/resources/images/black.png">
                        <img class="pic-2" src="/resources/images/black.png">
                    </a>
                    <ul class="social">
                        <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                        <li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
                        <li><a href="" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                    </ul>
                    <span class="product-new-label">Sale</span>
                    <span class="product-discount-label">20%</span>
                </div>
                <ul class="rating">
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star disable"></li>
                </ul>
                <div class="product-content">
                    <h3 class="title"><a href="#">Women's Blouse</a></h3>
                    <div class="price">$16.00
                        <span>$20.00</span>
                    </div>
                    <a class="add-to-cart" href="">+ Add To Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="#">
                        <img class="pic-1" src="/resources/images/black.png">
                        <img class="pic-2" src="/resources/images/black.png">
                    </a>
                    <ul class="social">
                        <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                        <li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
                        <li><a href="" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                    </ul>
                    <span class="product-new-label">Sale</span>
                    <span class="product-discount-label">50%</span>
                </div>
                <ul class="rating">
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                </ul>
                <div class="product-content">
                    <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                    <div class="price">$5.00
                        <span>$10.00</span>
                    </div>
                    <a class="add-to-cart" href="">+ Add To Cart</a>
                </div>
            </div>
        </div>
       
        <div class="col-md-4 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="#">
                        <img class="pic-1" src="/resources/images/black.png">
                        <img class="pic-2" src="/resources/images/black.png">
                    </a>
                    <ul class="social">
                        <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                        <li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
                        <li><a href="" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                    </ul>
                    <span class="product-new-label">Sale</span>
                    <span class="product-discount-label">50%</span>
                </div>
                <ul class="rating">
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                </ul>
                <div class="product-content">
                    <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                    <div class="price">$5.00
                        <span>$10.00</span>
                    </div>
                    <a class="add-to-cart" href="">+ Add To Cart</a>
                </div>
            </div>
        </div>
    </div>
    </div>
			</div>
		</div>
		
		</div>
	
</div>
	


<!-- 	<script>
$(function(){
// 이미지 슬라이드 컨트롤를 사용하기 위해서는 carousel를 실행해야한다.
$('.carousel').carousel({
// 슬리아딩 자동 순환 지연 시간
// false면 자동 순환하지 않는다.
interval: 1000,
// hover를 설정하면 마우스를 가져대면 자동 순환이 멈춘다.
pause: "hover",
// 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
wrap: true,
// 키보드 이벤트 설정 여부(?)
keyboard : true
});
});
</script> -->

<%@include file="../includes/footer.jsp"%>
</body>
</html>