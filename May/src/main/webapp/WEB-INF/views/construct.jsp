<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file= "include/include.jsp" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>야야야약관</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
	
	.main_name{
		text-align: center;
		color: #333030;
		font-size: 30px;
	}
	
	body{
		margin:0;
		padding:0;
		font-family: 'Nanum Gothic', sans-serif;
		background-image: url('${path}/img/001.jpg');
		
	}
	
	a {
		text-decoration: none;
		
	}
	
	ul {
		list-style-type: none;
	}
	
	#may_rap{
		width: 458px;
		height: 400px;
		margin: 50px auto 30px;
		border: 1px solid #e3dede;
		box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2),
					0px 4px 10px 0 rgba(0, 0, 0, 0.10);	
		background-color: white;
		opacity: 0.9;
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
		margin: 0px auto;
		padding-top: 2px;
		line-height: 59px;
		box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2),
					0px 4px 10px 0 rgba(0, 0, 0, 0.10);	
		
	}
	
	#ac_not{
		width: 100px;	
		height: 20px;
		font-size: 12px;
		text-align: center;
		font-weight: bold;
		color: black;
		display: block;
		margin: 0px auto;
		padding-top: 2px;
		line-height:20px;
		/*border-bottom: 1px solid black;*/
		
	}
	
	#title{
		margin: 100px 0px 30px;
		font-weight: bold;
		font-size: 50px;ㅌ
	}
	#title > a{
	text-shadow:black 2px 2px 2px;
	color: white;
	}
	
	.agree {
		border: 1px solid #e6e6e6;
		height: 150px;
		overflow: auto; /* 스크롤바 지정할떄 */
	 	height: 70px;
	 	font-size: 13px;
	 	color: #555;
	 	line-height: 16px;
	 	margin: 0px 10px;
	 	padding: 10px 10px;
	 }
	 
	.agree > p{
		height: 43px; 
		background: #f8f8f8;
		border-top: 1px solid #e6e6e;
		line-height: 43px;
		font-size: 13px;
		color: #222;
		text-indent: 19px;
		
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
	/* modal  */
	
	
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
	$(document).ready(function(){
		$("#ac_mk").click(function(){
			var ch1 =$("#chk1").is(":checked");
			var ch2 =$("#chk1").is(":checked");
			if(ch1 == true && ch2 ==true) {
				location.href = "${path}/member/Insert";
			}else{
				$("#err_check").css("display", "block");	
			}
		});	
	});	
	/*	var ch1 =$("#chk1").is(":checked");
		var ch2 =$("#chk1").is(":checked");
		alert("ch2", "ch1");
		if(ch1==true && ch2==true){
			alert("페이지이동")
		}*/
	
	
</script>
</head>

<body>
	<h2 id="title" class="main_name"><a href="">MAY</a></h2>
	<div id="may_rap">
		<h2 class="main_name">서비스 약관및 개인정보 <br>
		수집 이용에 동의해주세요</h2>
		<p><input type="checkbox" id="chk1"><label for="chk1">홈페이지 이용약관에 동의 합니다.</label>
			<div class="agree">
				여러분을 환영합니다.<br>
				네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
				<br>네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
				<br>
			</div>
		
		<p><input type="checkbox" id="chk2"><label for="chk2">홈페이지 이용약관에 동의 합니다.</label>
			<div class="agree">
				여러분을 환영합니다.<br>
				네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
				<br>네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
				<br>
			</div>
		
	</div>
	
	<aside>
			<div id="may_layout2">
				<h2 class="main_name">약관을 모두 확인하였습니까?</h2>
					<div>
						<a href="#" id="ac_mk">동의하기</a>
							<div id="err_check">
								<span id="err_check_msg">
								이용약관에 대한 안내를 모두 동의해주세요
								</span>
							</div>
						
						<a href="login.bizpoll" id=ac_not>뒤로 가기</a>
					</div>
			</div>
	</aside>


</body>
</html>