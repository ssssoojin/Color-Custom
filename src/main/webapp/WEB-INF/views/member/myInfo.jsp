<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<link rel="stylesheet" href="/resources/css/join.css">


<!-- 버튼관련 -->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- 이미지업로드관련 -->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>
<!-- 생년월일 (달력) -->
<script src="http://momentjs.com/downloads/moment-with-locales.js"></script>


</head>
<body>
<%@include file="../includes/header.jsp"%>


    <div class="row">
        <div class="col-md-offset-4 col-md-2">
        
           <div class = "change-myprofile-image">
                <img class="preview-img" src="http://simpleicon.com/wp-content/uploads/account.png" alt="Preview Image" width="200" height="200"/>
                <div class="browse-button">
                    <!-- <i class="fa fa-pencil-alt"></i> -->
                    <input type="file" class="browse-input" required name="UploadedFile" id="UploadedFile"/>
                </div>
                <span class="Error"></span>
            </div>
        
        </div>
        
        <div class="col-md-2">
        <section class="change-input-section-wrap">
			<div class="change-input-wrap">	
				<input placeholder="아이디" type="text"></input>
			</div>
			<div class="change-input-wrap password-wrap">	
				<input placeholder="비밀번호" type="password"></input>
			</div>
			<div class="change-input-wrap passwordcheck-wrap">
				<input placeholder="비밀번호 확인" type="password"></input>
			</div>
			<div class="change-input-wrap username-wrap">	
				<input placeholder="이름" type="text"></input>
			</div>
			<div class="gender-wrap">
			<label>남<input type="radio" name="gender" value="남"></label>
			<label>여<input type="radio" name="gender" value="여"></label>
			</div>
			<div class="change-input-wrap birth-wrap">	
            <input class="form-control" name="registration_date" id="registration-date" type="date" >
			</div>
			<div class="change-input-wrap email-wrap">	
				<input placeholder="이메일" type="email"></input>
			</div>
			<div class="three-button">
        	<a class="btn icon-btn btn-gray" href="#"><span class="glyphicon btn-glyphicon glyphicon-repeat img-circle text"></span>취소</a>
			<a class="btn icon-btn btn-pink" href="#"><span class="glyphicon btn-glyphicon glyphicon-refresh img-circle text-warning"></span>수정</a>
			<a class="btn icon-btn btn-danger" href="#"><span class="glyphicon btn-glyphicon glyphicon-trash img-circle text-danger"></span>탈퇴</a>
       </div>
       </section>
        </div>
        </div>
    
<script>

$(document).ready(function() {
  
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.preview-img').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    $(".browse-input").on('change', function(){
        readURL(this);
    });
    
});
</script>
<!-- 이미지 업로드 관련 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- 생년월일 (달력) -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%@include file="../includes/footer.jsp"%>
</body>
</html>