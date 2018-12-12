<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file= "include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <meta http-equiv="refresh" content="3; url=index.bizpoll"> -->
<title>Insert title here</title>
<style type="text/css">
	body{
		margin: 0px;
		padding: 0px;
		background: url(img/);
		background-repeat: no-repeat ;
		background-size: cover;
		background-position: center;
	}
	#welcome{
		width: 700px;
		height: 200px;
		border: 1px solid green;
		margin: 200px auto;
		box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2),
					0px 4px 10px 0 rgba(0, 0, 0, 0.10);	
					
	}
	#thx{
		text-align: center;
	}
	
	#may{
		text-align: center;
	}
	#rCnt{
		text-align: center;
	}
	#cntname{
		text-align: center;
		font-weight: bold;
	}
</style>
<script type="text/javascript">
	 var cnt=4;
	function countdown(){
		if(cnt == 0){
			clearInterval(s);
			location.href="${path}/index"
		}
		document.getElementById("rCnt").innerHTML=cnt
		cnt--;
	}
	var s = setInterval(countdown, 1000);  /*시작하는곳 1초 단위로 실행 */
</script>
</head>
<body>
	<div id ="welcome">
		<h2 id="thx">비밀번호 수정이 완료 되었습니다 감사합니다</h2>
		<h2 id="may">MAY</h2>
		<div id="cntname"><span id="rCnt">4</span>초후에 메인 페이지로 이동합니다</div>
	</div>
	<!--카운트 다운 방법  -->
	<!-- 1.meta태그 활용 -->
	<!-- 2.javascript의 setInterval()활용 -->
</body>
</html>