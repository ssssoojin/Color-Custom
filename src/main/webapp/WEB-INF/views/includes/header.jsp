<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Header</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="/resources/style/reset.min.css" />
    <link rel="stylesheet" href="/resources/style/style.css" />
    <link rel="stylesheet" href="/resources/style/header-8.css" />
    
  </head>
  <body>
    <!-- Header Start -->
    <header class="site-header">
      <div class="wrapper site-header__wrapper">
        <div class="site-header__start">
          <a href="#" class="brand">C <a class="header_inner">color</a><a href="#" class="brand"> C </a><a>custom</a>
          
        </div>
        <div class="site-header__middle">
          <nav class="nav">
            <button class="nav__toggle" aria-expanded="false" type="button">
              menu
            </button>
            <ul class="nav__wrapper">
              <li class="nav__item"><a href="#">Home</a></li>
              <li class="nav__item"><a href="#">About</a></li>
              <li class="nav__item"><a href="#">Services</a></li>
            </ul>
          </nav>
        </div>
        <div class="site-header__end">
          <a href="/member/login">로그인</a>
          <a href="/member/join">회원가입</a>
        </div>
      </div>
    </header>
    <!-- Header End -->

    <script src="/resources/js/header-8.js"></script>
  </body>
</html>
