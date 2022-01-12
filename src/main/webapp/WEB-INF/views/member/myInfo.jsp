<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>    
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>개인정보수정</title>
<link rel="stylesheet" href="/resources/css/join.css">

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6">
       
        <form action="" method="post">
            <div class="preview text-center">
                <img class="preview-img" src="http://simpleicon.com/wp-content/uploads/account.png" alt="Preview Image" width="200" height="200"/>
                <div class="browse-button">
                    <i class="fa fa-pencil-alt"></i>
                    <input class="browse-input" type="file" required name="UploadedFile" id="UploadedFile"/>
                </div>
                <span class="Error"></span>
            </div>
            
        </form>
        </div>
        
        <div class="col-md-6">
        <section class="join-input-section-wrap">
			<div class="join-input-wrap">	
				<input placeholder="아이디" type="text" readonly="readonly"></input>
			</div>
			<div class="join-input-wrap password-wrap">	
				<input placeholder="비밀번호 수정" type="password"></input>
			</div>
			<div class="join-input-wrap passwordcheck-wrap">
				<input placeholder="비밀번호 확인" type="password"></input>
			</div>
			<div class="join-input-wrap username-wrap">	
				<input placeholder="이름" type="text"></input>
			</div>
			<div class="gender-wrap">
			<label>남<input type="radio" name="gender" value="남"></label>
			<label>여<input type="radio" name="gender" value="여"></label>
			</div>
			<div class="join-input-wrap birth-wrap">	
				<input placeholder="생년월일" type="text"></input>
			</div>
			<div class="join-input-wrap email-wrap">	
				<input placeholder="이메일" type="email"></input>
			</div>
			<div class="join-button-wrap">
				<button>수정</button>
			</div>
		</section>
        </div>
    </div>
    </div>

 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>