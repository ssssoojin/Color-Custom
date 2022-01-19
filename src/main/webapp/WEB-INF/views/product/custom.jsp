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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/css/lightgallery.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- color picker -->
<link rel="stylesheet" href="/resources/css/colorPick.min.css">

</head>
<body>
	<%@include file="../includes/header.jsp"%>
	<div class="container">
		<section class="home" id="home">
			<div class="slide active">
				<div class="image">
					<img src="/resources/images/short_tshirt.png" alt="">
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
					<img id="custom_img" src="/resources/images/short_tshirt.png" alt="">
					<div id="attachImgWrapper">
						<div id="attachImg"></div>
					</div>
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
						<div class="item uploadDiv">
							<input type="file" class="form-control-file" id="file" name="uploadFile" multiple>
						</div>
						<div class="item">
							<div class="uploadResult">
								<ul></ul>
							</div>
						</div>
					</div>
					<div class="controls">
						<div class="fas fa-angle-left" onclick="prev()"></div>
						<script>
							let color = $('#custom_img').css('backgroundColor');
							let img = $('.attachImg img').attr("src");
						</script>
						<div class="fas fa-angle-right" onclick="next()"></div>
					</div>
				</div>
			</div>

			<div class="slide">
				<div class="image">
					<img id="custom_img" src="/resources/images/short_tshirt.png" alt="">
					<div id="attachImgWrapper">
						<div id="attachImg"></div>
					</div>
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
						<button type="button" class="btn" onclick="moveCart();">
							장바구니 <i class="fas fa-shopping-cart"></i>
						</button>
						<button type="button" class="btn" onclick="movePurchase();">구매하기</button>
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

	<script src="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/js/lightgallery.min.js"></script>
	<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

	<!-- custom js file link -->
	<script src="/resources/js/custom.js"></script>
	<script src="/resources/js/colorPick.min.js"></script>
	
	<script type="text/javascript">
		// 썸네일 클릭 이벤트
		function showImage(fileCallPath) {
			$("#attachImg").show();
			$("#attachImg")
			.html("<img src='/display?fileName=" + encodeURI(fileCallPath) + "'>")
			.css({width: '100%', height: '100%'});
			
			
			// 이미지를 다시 클릭하면 사라지도록 처리
			$("#attachImg").on("click", function(e) {
				// $("#attachImg").animate({width: '0%', height: '0%'}, 1000);
				$('#attachImg').hide();
			});
			setImg("<img src='/display?fileName=" + encodeURI(fileCallPath) + "'>");
		}
	
		// 정규식을 이용해서 파일 확장자 체크
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz|txt|xlsx|pdf|html|css|jsp|show|hwp)$");
		var maxSize = 5242880;
		function checkExtension(fileName, fileSize) {
			if(fileSize >= maxSize) {
				alert("파일 크기 초과");
				return false;
			}
			if(regex.test(fileName)) {
				alert("해당 종류의 파일은 업로드 할 수 없음");
				return false;
			}
			return true;
		}
		
		// <input type="file"> 내용이 변경되는 것을 감지해서 무조건 업로드 처리
		$("input[type='file']").change(function(e) {
			// 파일 업로드
			// ajax 이용하는 경우에는 FormData 객체 이용 (form 태그와 같은 역할)
			var formData = new FormData();
			var inputFile = $("input[name='uploadFile']");
			var files = inputFile[0].files;
			console.log(files);
			
			// add filedata to formdata
			for(var i = 0; i < files.length; i++) {
				if(!checkExtension(files[i].name, files[i].size)) { // 파일 확장자 체크
					return false;
				}
				formData.append("uploadFile", files[i]);
			}
			console.log("files.length : " + files.length);
			
			$.ajax({
				url : '/uploadAjaxAction',
				processData : false, // 전달할 데이터를 query string을 만들지 말 것
				contentType : false,
				data : formData, // 전달할 데이터
				type : 'POST',
				dataType: 'json', // 데이터 타입: json
				success : function (result) {
					//alert('Uploaded');
					console.log(result);
					showUploadedFile(result); // json 형태의 업로드 결과를 인자로 줌	
				}
			}); // $.ajax
		});
		
		var uploadResult = $(".uploadResult ul");
		function showUploadedFile(uploadResultArr) {
			if(!uploadResultArr || uploadResultArr.length == 0) {
				return;
			}
			var str = "";
			$(uploadResultArr).each(function(i, obj) {
				// 썸네일 나오게 처리
				var fileCallPath = encodeURIComponent(obj.uploadPath +  "/s_" + obj.uuid + "_" + obj.fileName);
				var originPath = obj.uploadPath + "/" + obj.uuid + "_" + obj.fileName;
				console.log("originPath1 : " + originPath);
				originPath = originPath.replace(new RegExp(/\\/g), "/"); // \를 /로 통일
				console.log("originPath2 : " + originPath);
				str += "<li data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'><div>";
				str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='delete'></button><br>";
				str += "<a href=\"javascript:showImage(\'" + originPath + "\')\"><img src='/display?fileName=" + fileCallPath + "'></a>";
				str += "</div></li>";
			});
			uploadResult.append(str); // 요소 추가 (<li> 추가)
		} // showUploadedFile
		
		// 버튼 클릭시 삭제
		$(".uploadResult").on("click", "button", function(e) {
			//alert("delete file");
			
			var targetFile = $(this).data("file");
			var type = $(this).data("type");
			var targetLi = $(this).closest("li");
			
			$.ajax({
				url: '/deleteFile',
				data: {fileName: targetFile, type: type},
				dataType: 'text',
				type: 'post',
				success: function(result) {
					//alert(result);
					targetLi.remove(); // li 삭제
					$("input[type='file']").val(''); // 업로드 성공 후 초기 상태로 복원
				}
			}); // $.ajax
		}); // uploadResult
		
		
		// 옷에 이미지 넣는 위치 지정
		var big_style = {
			position: "absolute",
		   	top: "41%",
		   	left: "31.4%",
			width: "250px",
			height: "250px",
			border: "3px dotted black"
		};
		
		var small_style = {
			position : "absolute",
			width : "250px",
			height : "250px"
		};
		$('#attachImgWrapper').css(big_style);
		
		// 옷 색깔 변경
		$(".picker").colorPick({
					'initialColor' : 'white',
					//'palette': ["#1abc9c", "#16a085", "#2ecc71", "#27ae60", "#3498db", "#2980b9", "#9b59b6", "#8e44ad", "#34495e", "#2c3e50", "#f1c40f", "#f39c12", "#e67e22", "#d35400", "#e74c3c", "#c0392b", "#ecf0f1"],
					'palette' : [ "red", "orange", "yellow", "green", "skyblue", "blue", "pink", "purple", "white", "black" ],
					'onColorSelected' : function() {
						console.log("The user has selected the color: " + this.color);
						this.element.css({
							'backgroundColor' : this.color,
							'color' : this.color
						});
						$('#custom_img').css({
							'backgroundColor' : this.color
						});
						// 옷 색깔에 관계없이 이미지 위치 잘 보이도록 변경
						if (this.color == "WHITE") {
							big_style.border = '3px dotted black';
							// console.log(big_style.border);
							$('#attachImgWrapper').css(big_style);
						} else {
							big_style.border = '3px dotted white';
							$('#attachImgWrapper').css(big_style);
						}
						setColor(this.color);
					}
				});
		
		// 색 변경될 때마다 호출
		function setColor(color) {
			console.log(color);
		}
		
		function setImg(img) {
			console.log(img);
		}
		
		// 커스텀 정보 저장
		function saveCustom(color, img) {
			let custom = [];
			custom.push(color);
			custom.push(img);
			console.log(custom[0]);
			console.log(custom[1]);
			return custom;
		}
		
		// db에 넣을 데이터
		const form = {
			userId : 'aaa',
			itemName : 'good',
			color : '',
			size : '',
			quantity : '1',
			price : '2000',
			category : '4', // 액세서리
			image : ''
		}
		// 장바구니 버튼
		function moveCart() {
			if (confirm('장바구니에 추가하시겠습니까?')) {
				$.ajax({
					url : '/cart',
					type : 'POST',
					data : form,
					success : function(result) {
						if (confirm('장바구니로 이동하시겠습니까?')) {
							location.href = '/cart';
						}
					}
				});
			}
		}
		// 구매 버튼
		function movePurchase() {
			if (confirm('상품을 구매하시겠습니까?')) {
				location.href = '/purchase';
			}
		}
	</script>
</body>
</html>