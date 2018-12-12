<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file= "include.jsp" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		margin: 0px;
		padding: 0px;
	}
	
	span{
		
		line-height: 25px;
		font-weight: bold;
	}
	
	#footer{
		width: 100%;
		height: 150px;
		background-color: #25282b;
		margin-top: 100px;
	}
	#footerdiv{
		width: 100%;
		height: 50px;
		line-height: 50px;
		border-bottom: 1px solid gray;
		color: gray;
	}
	
	#do{
		height: 50px;
		width: 70px;
		display: inline-block;
		line-height: 50px;
		margin-left: 50px;
	}
	#nav{
		width: 100%;
		height: 25px;
		margin: 10px 0px 10px 30px;
		font-size: 13px;
		display: inline-block;
	}
	.nav_span{
		height: 30px;
		margin-left: 20px;
		display: inline-block;
		color: gray;
	}
	
	#inforemail{
		font-size: 12px;
		margin-left: 50px;
		line-height: 55px; 
		display: inline-block;
		color: gray;
	}
</style>
</head>
<body>
	<div id=footer>
	
		<div id="footerdiv">
			<span id="do"style="color:white;">공지사항:</span>
			<span style="display: inline-block; line-height: 50px; ">2018.10.31(수요일)</span>
		</div>
		
		<div id="nav">
			<span class="nav_span">공지사항</span>
			<span class="nav_span">문의사항</span>
			<span class="nav_span">이용약관</span>
			<span class="nav_span">정보취급방침</span>
			<span class="nav_span">저작권</span>
			<span class="nav_span">사이트 정보</span>
		</div>
		
		<div id="infor">
			<span id="inforemail">Copyright 2018 MAY. All rights reserved ● 메일문의 : audcks68@gmail.com</span>
		</div>
		
	</div>
</body>
</html>