<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Education Board | 3 Columns</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="resources/layout/styles/layout.css"
	type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 3 Column Stylesheet Added To The Page And Not To The Layout.css -->
<link rel="stylesheet" href="resources/layout/styles/3_column.css"
	type="text/css" />
<script type="text/javascript">
$(function () {
	$(".board").click(function(){
		
		var c = $(this).attr("class")
		c = "."+ c.substring(6,10)
		alert(c)
		$(c).css("color","red")
	})
})

</script>
</head>

<body id="top">
	<div class="wrapper row1">
		<div id="header" class="clear">
			<div class="fl_left">
				<h1>
					<a href="http://localhost:8888/BoardTest/">Education Board</a>
				</h1>
				<p>Free Website Template</p>
			</div>
			<div class="fl_right">
				<p>
					<a href="#">A - Z Index</a> | <a href="#">Student Login</a> | <a
						href="#">Staff Login</a>
				</p>
				<form action="#" method="post" id="sitesearch">
					<fieldset>
						<legend>Site Search</legend>
						<input type="text" value="Search Our Website&hellip;"
							onfocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;" />
						<input type="image" src="resources/layout/images/search.gif"
							id="search" alt="Search" />
					</fieldset>
				</form>
			</div>
			<div id="topnav">
				<ul>
					<li><a href="http://localhost:8888/BoardTest/">Home</a></li>
					<li><a href="style-demo.html">Style Demo</a></li>
					<li><a href="full-width.html">Full Width</a></li>
					<li class="active"><a href="guestBoard">GUEST BOARD</a></li>
					<li><a href="portfolio.html">Portfolio</a></li>
					<li><a href="gallery.html">Gallery</a></li>
					<li><a href="#">This a very long link</a></li>
					<li class="last"><a href="#">This is the last</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- ####################################################################################################### -->
	<div class="wrapper row3">
		<div id="container" class="clear">
			<!-- ####################################################################################################### -->
			<div id="left_column">
				<div class="holder">
					<h2 class="title">Quick Links</h2>
					<ul class="nostart">
						<li><a href="#">GuestBoardWrite</a></li>
						<li><a href="#">GuestBoard</a></li>
					</ul>
				</div>
				<div class="holder">
					<h2 class="title">Lorem ipsum dolor</h2>
					<div class="imgholder">
						<img src="resources/images/demo/190x90.gif" alt="" />
					</div>
				</div>
			</div>
			<!-- ############ -->
			<div id="content">
				<h1 class="title">GuestBoardWrite</h1>
					<form action="board" method="post">
						<table summary="Summary Here" cellpadding="0" cellspacing="0">
							<tr>
								<td style="text-align: center;">제목</td>
								<td><input type="text" name="board_title"
									style="width: 100%;"></td>
							</tr>
							<tr>
								<td style="text-align: center;">내용</td>
								<td><textarea rows="5" cols="40" name ="board_detail" style="width: 100%; resize: none;"></textarea>
							</tr>
							<tr>
							<td style="text-align: center;">비밀번호</td>
							<td><input type="password" name = "board_pw"><input type="submit" value="write" class="btn"></td>
							</tr>
						</table>
					</form>
					
				<p>You can use and modify the template for both personal and
					commercial use.</p>
					<h1 class="title">GuestBoard</h1>
				<div class="imgholder">
				<table summary="Summary Here" cellpadding="0" cellspacing="0">
				
				<c:choose>
<c:when test="${blist==null}">
아직글이 없습니다.
</c:when>
<c:when test="${blist!=null}">
	<table>
		<tr>
			<td style="text-align: center;"><c:out value="글번호"></c:out></td>
			<td style="text-align: center;"><c:out value="제목 / 내용"></c:out></td>
			<td id="writer" style="text-align: center;"><c:out value="작성일 / 작성자"></c:out></td>
		</tr>
		<c:forEach var="gul" items="${blist}">
			<tr>
			<td class="board board_num${gul.board_num}" id="board_num${gul.board_num}" rowspan="2">
				<c:out value="${gul.board_num}"></c:out>
			</td>
			<td class="board board_num${gul.board_num}">
				<c:out value="${gul.board_title}"></c:out>
			</td>
			<td class="board board_num${gul.board_num}">
				<c:out value="${gul.board_lastregdate.getYear()+1900}년 
				${gul.board_lastregdate.getMonth()+1}월
				${gul.board_lastregdate.getDate()}일
				${gul.board_lastregdate.getHours()}:
				${gul.board_lastregdate.getMinutes()}:
				${gul.board_lastregdate.getSeconds()}
				"></c:out>
			</td>
			</tr>
			<tr>
			<td class="board board_num${gul.board_num}">
				<c:out value="${gul.board_detail}"></c:out>
			</td>
			<td class="board board_num${gul.board_num}">
				<c:out value="${gul.user_id}"></c:out>
			</td>
			</tr>
		</c:forEach>
	</table>
	</c:when>
	</c:choose>
				</table>
				</div>
					
			</div>
			<!-- ############ -->
			<div id="right_column">
				<div class="holder">
					<h2 class="title">Lorem ipsum dolor</h2>
					<p>안녕 여긴 우측이야</p>
					<ul>
						<li><a href="#">Lorem ipsum dolor sit</a></li>
						<li>여긴 우측 가운데구</li>
						<li><a href="#">Etiam vel sapien et</a></li>
					</ul>
					<p>여긴 우측 하단이지</p>
					<p class="readmore">
						<a href="#">Continue Reading &raquo;</a>
					</p>
				</div>
				<div class="holder">
					<h2 class="title">Lorem ipsum dolor</h2>
					<div class="imgholder">
						<img src="resources/images/demo/240x90.gif" alt="" />
					</div>
				</div>
			</div>
			<!-- ####################################################################################################### -->
		</div>
	</div>
	<!-- ####################################################################################################### -->
	<div class="wrapper row4">
		<div id="footer" class="clear">
			<!-- ####################################################################################################### -->
			<div class="footbox">
				<h2>Quick Links</h2>
				<ul>
					<li><a href="#">&raquo; Homepage</a></li>
				</ul>
			</div>
			<div class="footbox">
				<h2>How To Find Us</h2>
				<address>
					Email: <a href="#">contact@domain.com</a>
				</address>
			</div>
			<div class="fl_right">
				<div id="social">
					<h2>Connect With Us</h2>
					<ul>
						<li><a href="#"><img
								src="resources/images/social/facebook.gif" alt="" /></a></li>
						<li><a href="#"><img
								src="resources/images/social/twitter.gif" alt="" /></a></li>
						<li><a href="#"><img
								src="resources/images/social/flickr.gif" alt="" /></a></li>
						<li><a href="#"><img
								src="resources/images/social/youtube.gif" alt="" /></a></li>
						<li class="last"><a href="#"><img
								src="resources/images/social/rss.gif" alt="" /></a></li>
					</ul>
				</div>
				<div id="newsletter" class="clear">
					<form action="#" method="post">
						<fieldset>
							<legend>Subscribe To Our Newsletter:</legend>
							<input type="text" value="Enter Email Here&hellip;"
								onfocus="this.value=(this.value=='Enter Email Here&hellip;')? '' : this.value ;" />
							<input type="text" id="subscribe" value="Submit" />
						</fieldset>
					</form>
				</div>
			</div>
			<!-- ####################################################################################################### -->
		</div>
	</div>
	<!-- ####################################################################################################### -->
	<div class="wrapper">
		<div id="copyright" class="clear">
			<p class="fl_left">
				Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain
					Name</a>
			</p>
			<p class="fl_right">
				Template by <a target="_blank" href="http://www.os-templates.com/"
					title="Free Website Templates">OS Templates</a>
			</p>
		</div>
	</div>
</body>
</html>
