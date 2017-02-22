<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Flasic</title>
<link href="http://localhost:80/ShoppingMall_01/include/css/headerfooter.css" rel="stylesheet">
<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src="mypage/mypage.js"></script>
</head>
<body>
	<div id="wrap"> <!--header.jsp "wrap" 시작하는 부분 -->
		<header>
			<div id="logo">
				<a href="FlasicServlet?command=index">
				<img alt="TheFlasic" src="http://localhost:80/ShoppingMall_01/imges/LOGO.png" width="250px">
				</a>
			<!--로고 끝-->
			<nav id="category_menu">
				<ul>
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">
					<li><a href="FlasicServlet?command=loginform">LOGIN</a></li>
					<li><a href="FlasicServlet?command=joinform">JOIN</a></li>
					</c:when>
					<c:otherwise>
					 <li style="color:orange" >
        			(${sessionScope.loginUser.id})
       				</li>
       				<li><a href="FlasicServlet?command=loginout">LOGOUT</a></li>
					</c:otherwise>
				</c:choose>	
					<li><a href="#">CART</a></li>
					<li><a href="FlasicServlet?command=mypage">MYPAGE</a></li>
				</ul>
			<!--로고와 같은 태그안 카테고리 메뉴 끝  -->
			</nav>
			<a href="#">
			<img alt="Disigner" src="http://localhost:80/ShoppingMall_01//imges/Disign2.png" width="150px" style="float: right;">
			</a>
			<!--개인디자이너 로고 끝  -->					
			</div>
			<nav id="shopping_menu">
				<ul>
					<li><a href="#">BEST20</a></li>
					<li><a href="#">Outer</a></li>
					<li><a href="#">Top</a></li>
					<li><a href="#">Pants</a></li>
					<li><a href="#">Skirt</a></li>
					<li><a href="#">Inner</a></li>
					<li><a href="#">Shoes</a></li>
					<li><a href="#">Bag&Acc</a></li>
				</ul>
			</nav>
			<div class="clear"></div>
			<hr>
		</header>
