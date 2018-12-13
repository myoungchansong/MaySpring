<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file= "include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>

<title>MAY회원탈퇴</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
body {
	margin: 0;
	padding: 0;
	font-family: 'Nanum Gothic', sans-serif;
	background-image: url('${path}/img/2.jpg');
}

a {
	text-decoration: none;
}

ul {
	list-style-type: none;
}

#body_div {
	background-color: white;
	width: 700px;
	height: 975px;
	margin: 0px auto;					
	border: 1px solid #e3dede;
	box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2), 0px 4px 10px 0
		rgba(0, 0, 0, 0.10);
	opacity: 0.9;
}

#header_div img {
	display: inline-block;
	position: relative;
	top: 30px;
	left: 30px;
}

#mm {
	display: inline-block;
	position: relative;
	left: 300px;
	font-size: 30px;
	color: #282c37;
}

#btn_in {
	width: 300px;
	height: 59px;
	font-size: 22px;
	text-align: center;
	background-color: #8b8687;
	color: white;
	display: block;
	margin: 0px auto;
	margin-top: 50px;
	margin-bottom: 10px;
	padding-top: 2px;
	line-height: 59px;
	box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2), 0px 4px 10px 0
		rgba(0, 0, 0, 0.10);
}

.insert_div {
	border-bottom: 1px solid #DDD;
	width: 500px;
	height: 48px;
	box-sizing: border-box;
	margin-top: 20px;
	position: relative;
	left: 100px;
	margin-bottom: 50px;
}

.insert_label {
	font-size: 14px;
	position: absolute;
	z-index: 1;
	transition: all, 4s cubic-bezier(.25, .8, .25, 1);
	transition-duration: 0.3s;
	color: #979797;
	top: 14px;
	left: 10px;
	font-weight: bold;
}

.input_class {
	width: 100%;
	height: 44px;
	display: block;
	position: relative;
	border: none;
	overflow: visible;
	padding: 20px 0px 0px 10px;
	box-sizing: border-box;
	transition: all .4s cubic-bezier(.25, .8, .25, 1);
	outline: none;
}

.error {
	position: relative;
	top: 5px;
	color: red;
	font-size: 10px;
	font-weight: bold;
	display: none;
}

#deletebox {
	width: 400px;
	height: 200px;
	margin: 0px auto;
	border: 5px solid black;
}

#deletebox>p {
	font-weight: bold;
	font-size: 20px;
	text-align: center;
	color: red;
}

.box1 {
	font-weight: bold;
	font-size: 15px;
	text-align: left;
	padding: 0px 10px;
	padding-bottom: 10px;
}

#ac_not {
	width: 100px;
	height: 20px;
	font-size: 12px;
	text-align: center;
	font-weight: bold;
	color: black;
	display: block;
	margin: 0px auto;
	padding-top: 2px;
	line-height: 20px;
	border-bottom: 1px solid black;
}
</style>

<script type="text/javascript">
	$(document).ready(
			function() {
				$("#input_id")
						.focus(
								function() {
									$(this).css("font-size", "17px");
									$(".insert_label:first").css("top", "5px")
											.css("font-size", "10px");
									$(".insert_label:first").css("color",
											"black");
									$(".insert_label:first").css("font-weight",
											"bold");

								});

				$("#input_id").blur(
						function() {
							var idVal = $(this).val();
							if (idVal == "") {
								$(this).css("font-size", "5px");
								$(".insert_label:first").css("top", "14px")
										.css("font-size", "14px");
								$(".insert_label:first")
										.css("color", "#979797");
							}
						});

				$("#input_pw").focus(function() {
					$(this).css("font-size", "17px");
					$("#pw1").css("top", "5px").css("font-size", "10px");
					$("#pw1").css("color", "black");
					$("#pw1").css("font-weight", "bold");

				});

				$("#input_pw").blur(function() {
					var idVal = $(this).val();
					if (idVal == "") {
						$(this).css("font-size", "5px");
						$("#pw1").css("top", "14px").css("font-size", "14px");
						$("#pw1").css("color", "#979797");
					}
				});

				$("#input_pw2").focus(function() {
					$(this).css("font-size", "17px");
					$("#pw2").css("top", "5px").css("font-size", "10px");
					$("#pw2").css("color", "black");
					$("#pw2").css("font-weight", "bold");

				});

				$("#input_pw2").blur(function() {
					var idVal = $(this).val();
					if (idVal == "") {
						$(this).css("font-size", "5px");
						$("#pw2").css("top", "14px").css("font-size", "14px");
						$("#pw2").css("color", "#979797");
					}
				});

				$("#input_name").focus(function() {
					$(this).css("font-size", "17px");
					$("#name").css("top", "5px").css("font-size", "10px");
					$("#name").css("color", "black");
					$("#name").css("font-weight", "bold");

				});

				$("#input_name").blur(function() {
					var idVal = $(this).val();
					if (idVal == "") {
						$(this).css("font-size", "5px");
						$("#name").css("top", "14px").css("font-size", "14px");
						$("#name").css("color", "#979797");
					}
				});

			});

	
	$(document).ready(function(){
		$(".input_class").blur(
		function() {
							/*input태그에 입력된 값을 가져옴*/
							var inputVal = $(this).val();
							/*input태그에 입력된 값을 가져옴*/
							if (inputVal == ""){
								$(this).next().text("회원 탈퇴를 위해 입력해주세요").css("display", "block").css("color", "red");
							}
							else {
								$(this).next().css("display", "none");
							}

						});
		
		/*ID 검사 */
		$("#input_id").blur(
			function() {
				/*input태그에 입력된 값을 가져옴*/
				var inputVal = $("#input_id").val();
				var session= '${sessionScope.loginUser.id}';
				
				if (inputVal == session){
					$(this).next().text("계속 진행해주세요").css("display", "block").css("color", "black");
					$("#input_pw").focus();
				}
				else if(inputVal != session){
					$(this).next().text("아이디가 일치하지 않습니다").css("display", "block").css("color", "red");
					$("#input_id").select();
					$("#input_id").focus();
				}else if(inputVal == ""){
					$("#input_id").select();
					$(this).next().text("회원 탈퇴를 위해 입력해주세요").css("display", "block").css("color", "red");
					$("#input_id").focus();
				}
				/*input태그에 입력된 값을 가져옴*/
				/* if (inputVal == "")
					$(this).next().text("회원 탈퇴를 위해 입력해주세요").css("display", "block");
				else {
					$(this).next().css("display", "none");
				}
 */
		});
		
		

				/*=============================ajax============================================  */

				
				
				
	$("#input_pw").blur(function() {
		var nowPw = $("#input_pw").val();
		$.ajax({
			url : "${path}/member/pwCheck",
			type : "POST",
			dataType : "json",
			data : "id=${sessionScope.loginUser.id}&pw="+ nowPw,
			success : function(data) {
				if (data == "1") {
					$("#input_pw").next().text("탈퇴를 진행해주세요").css("display","block").css("color", "black");
					} else if (data == "-1") {
						$("#input_pw").next().text("정확하게 입력해주세요").css("display","block").css("color", "red");
						$("#input_pw").select();
						$("#input_pw").focus();
					}

					},
					error : function() {
					alert("System Error");
					}
			});
				
	});			
				
				


		$(document).on("click",".btn_agree",function(){
			var form = $("#frm_mem"), 
			mid = $("#input_id"), 
			mpw1 = $("#input_pw"),
			mname = $("#input_name");
			/*trim = 앞 뒤 공백 제거(가운데 공백은 제거 안됨)*/
			/*아이디 */
			if (mid == "") {
				mid.focus();
				mid.next().text("회원 탈퇴를 위해 ID를 입력하세요").css("display","block").css("color", "red");
				$("#input_id").focus();
				$("#input_id").select();
					return false;
			} else if (mpw1 == "") {
				mpw1.next().text("비밀번호를 입력해 주세요").css("display","block").css("color", "red");
				mpw1.focus();
				mpw1.select();
				return false;
			} else{
				form.submit();
			}
		});
		
		if('${sessionScope.loginUser.id}' !=''){
		} else {
			alert('로그인후 사용이 가능합니다 ');
			location.href="${path}/index";
		}
		
		
		
	});

</script>
</head>
<body>



	<div id="body_div">
		<header>

			<div id="header_div">
				<a href="${path}/index"> <img alt="may"
					src="${path}/img/logo_002.png">
				</a>
			</div>
			<h2 id="mm">회원탈퇴</h2>
		</header>


		<section>

			<div id="deletebox">
				<p>회원 탈퇴시 아래의 조치가 이루어 집니다</p>
				<div class="box1">1.회원탈퇴를 신청하시면 해당 아이디는 즉시 탈퇴처리되며 이후 해당 아이디는
					영구적으로 사용이 중지되므로 해당 아이디로는 재가입이 불가능합니다.</div>
				<div class="box1">2.회원탈퇴 후, 1주일 동안은 회원가입이 불가능합니다.</div>
				<div class="box1">
					3.회원탈퇴 즉시 회원정보는 즉시 삭제되며 아래 회원제 <br>서비스의 정보도 삭제됩니다.
				</div>
			</div>



			
				<!-- name값과 id값은 똑같이 해주는게 좋다  -->
			<form action="${path}/member/delete" id="frm_mem" method="POST" >
				<div id="insert_id" class="insert_div">
					<label for="input_id" class="insert_label"> ID </label> <input
						type="text" id="input_id" name="id" class="input_class">
					<span class="error" id="input_error">옯바른 값을 입력해주세요 </span>
				</div>

				<div id="insert_pw" class="insert_div">
					<label for="input_pw" class="insert_label" id="pw1">
						PASSWORD </label> <input type="password" id="input_pw" name="pw"
						class="input_class ckeckpw"> <span class="error">옯바른
						값을 입력해주세요 </span>
				</div>
				
			</form>
			
				<div>
					<a href="#" id="btn_in"  class="btn_agree">탈퇴</a> <a
						href="index.bizpoll" id=ac_not>메인으로 가기</a>
				</div>

		


		</section>
		
	</div>
	



</body>
</html>