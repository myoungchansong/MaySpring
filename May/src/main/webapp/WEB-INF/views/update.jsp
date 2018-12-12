<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file= "include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MayLogin</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
	h2{
		text-align: center;
		color: #333030;
		font-size: 30px;
		
	}	
	
	body{
		margin: 0;
		padding: 100;
		font-family: 'Nanum Gothic', sans-serif;
		background-image: url('${path}/img/001.jpg');
		
	}
	
	a {
		text-decoration: none;
		
	}
	
	
	ul {
		list-style-type: none;
	}
		

	#may_layout{
		
		width: 458px;
		height: 430px;
		margin: 100px auto 30px;
		border: 1px solid #e3dede;
		box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2),
					0px 4px 10px 0 rgba(0, 0, 0, 0.10);	
		background-color: white;
		opacity: 0.9;
		
		position: relative;
	}
	

	
	.btn_login{
		width: 300px;	
		height: 59px;
		font-size: 22px;
		text-align: center;
		background-color: #8b8687;
		color: white;
		display: block;
		margin: 0px auto;
		margin-top: 50px;
		padding-top: 2px;
		line-height: 59px;
		box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2),
					0px 4px 10px 0 rgba(0, 0, 0, 0.10);	
	}
	.btn_login{
		text-align: center;
	}
	
	
	
	
	
	
	#title{
		margin: 100px 0px 30px;
		font-weight: bold;
		font-size: 50px;
	}
	#title > a{
	text-shadow:black 2px 2px 2px;
	color: white;
	cursor: pointer;
	
	}
	
	
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	
		 <h2 id="title"><a href="">MAY</a></h2>
			<div id="may_layout">
				
				<section>
			
					<h2>회원 수정</h2>
					
				
					
					<div><a href="${path}/member/mypage" class="btn_login">회원 정보 수정</a></div>
					<div><a href="${path}/member/pwupdate" class="btn_login">비밀 번호 수정</a></div>
					<div><a href="${path}/member/delete" class="btn_login">회원 삭제</a></div>
					
				
				 
				</section>
			</div>
			
		
			
			
		
		
		
		
	
</body>

</html>