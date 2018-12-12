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
		background-image: url('img/001.jpg');
		
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
		margin: 50px auto;
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
	.error{
		position: relative;
		top: 5px;
		color: red;
		font-size: 10px;
		font-weight: bold;
		left: 120px;
		display: none;
	}
	
	
	
	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
	});
		$(document).on("click", "#btn_login", function(){
			var form = $("#frm_mem"),
			mid = $("#inputid"),
			mphone = $("#input_ph"),
			mmailid1 = $("#input_email_id");
			
		
			var phone =$.trim(mphone.val());
			var regPhone = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
			if(phone ==""){
				mphone.focus();
				mphone.next().text("필수정보입니다").css("display", "block");
				return false;
			}else if($.isNumeric(phone)==false) { /*숫자 값만 받아옴*/
				mphone.select();
				mphone.next().text("숫자만 입력하세요 ").css("display", "block");
				return false;
			}else if(!regPhone.test(phone)){
				mphone.select();
				mphone.next().text("올바른값만 입력하세요").css("display", "block");
				return false;
			}
		});
	
</script>

</head>
<body>
	
		 <h2 id="title"><a href="">MAY</a></h2>
			<div id="may_layout">
				
				<section>
				<form action="">
					<h2>회원 조회하기</h2>
						<div class="div_input" id="naver_id">
							<input type="text"  placeholder="EMAIL" id ="inputid"class="input_login">
							<span class="error">입력해주세요 </span>
						</div>
					
						<div class="div_input" id="naver_pw">
							<input type="text" placeholder="PHONE( - 없이 입력하세요)" id="inputpw" class="input_login">
							<span class="error">입력해주세요 </span>
						</div> 
					
					<div><a href="#" id="btn_login">조회하기</a></div>
				 </form>
				 
				</section>
			</div>
			
				<aside>
					<div id="may_layout2">
						<h2>계정이 없으신가요?</h2>
						<div><a href="construct.bizpoll" id="ac_mk">계정 만들기</a></div>
					</div>
				</aside>
	 	
		
			
			
		
		
		
		
	
</body>

</html>