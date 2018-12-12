<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file= "include/include.jsp" %>
<% 
   String referer = request.getHeader("referer");
 %>  
   
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
		height: 400px;
		margin: 50px auto 30px;
		border: 1px solid #e3dede;
		box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2),
					0px 4px 10px 0 rgba(0, 0, 0, 0.10);	
		background-color: white;
		opacity: 0.9;
		
		position: relative;
	}
	

	.div_input{
		background-color: white;
		border-bottom: 1px solid #e3eded;
		width: 300px;
		height: 29px;
		
		margin:40px auto;
		padding: 10px 35px 10px 15px;
		cursor: pointer;
		
	}
	
	.input_login{
		border-width: 0px;
		width: 300px;
		height: 29px;
		text-align: center;
		
		cursor: pointer;
	}
	
	#btn_login{
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
	#btn_login{
		text-align: center;
	}
	
	#may_layout2{
		margin: 20px auto;
		width: 458px;
		height: 200px;
		border: 1px solid #e3dede;
		box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2),
					0px 4px 10px 0 rgba(0, 0, 0, 0.10);	
		background-color: white;
		opacity: 0.9;
	}
	
		#ac_mk{
			width: 300px;	
			height: 59px;
			font-size: 22px;
			text-align: center;
			background-color: #8b8687;
			color: white;
			display: block;
			margin: 50px auto;
			padding-top: 2px;
			line-height: 59px;
			box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2),
						0px 4px 10px 0 rgba(0, 0, 0, 0.10);	
			
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
	
	#err_check_msg{
		display: inline-block;
		width: 428px;
		height: 24px;
		font-size: 11px;
		font-weight: 700;
		line-height: 24px;
		color: #f46665;
		padding: 0px 15px;
		text-align: center;
	}
	
	#err_check{
		 display:none; 
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
	
		$("#btn_login").on("click", function(){
			var val1= $("#inputid").val();
			var val2= $("#inputpw").val();
			
			if(val1!="" && val2!=""){
				$.ajax({
					url : "${path}/member/login",
					type : "POST",
					dataType : "json",
					data : "id="+val1+"&pw="+val2,
					success : function(data) {
						if (data == "1") {
								/* alert("로그인성공"); */
								location.href="<%=referer%>";
							} else {
								/* alert("로그인실패"); */
								$("#err_check_msg").text("ID 또는 PASSWORD가 일치하지않습니다 ")
								$("#err_check").css("display", "block");
							}

							},
							error : function() {
							alert("System Error");
							}
						});
			} else{
				$("#err_check").css("display", "block");
			}
		});	
	});
</script>
</head>
<body>
	
		 <h2 id="title"><a href="">MAY</a></h2>
			<div id="may_layout">
				
				<section>
					<h2>로그인</h2>
					
					<div class="div_input" id="naver_id">
						<input type="text"  placeholder="아이디" id ="inputid" name ="inputid"class="input_login">
					</div>
					
					<div class="div_input" id="naver_pw">
						<input type="password" placeholder="비밀번호" id="inputpw" name="inputpw" class="input_login">
					</div>
					
					<div><a href="#" id="btn_login">로그인</a></div>
					
					<div id="err_check">
						<span id="err_check_msg">
							ID또는 PassWord입력값을 확인해주세요
						</span>
					</div>
				 
				</section>
			</div>
			
				<aside>
					<div id="may_layout2">
						<h2>계정이 없어요</h2>
						<div><a href="${path}/member/Construct" id="ac_mk">계정 만들기</a></div>
					</div>
				</aside>
	 	
		
			
			
		
		
		
		
	
</body>

</html>