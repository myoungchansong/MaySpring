<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  
	<%@ include file= "include.jsp" %>
	<%
		String path =request.getContextPath(); //컨텍스트 경로
	%>

<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header.html</title>
<link href="https://unpkg.com/ionicons@4.4.2/dist/css/ionicons.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
	*{
		margin:0px;
		padding: 0px;
		
	}

	body,html{
		height: 1000px;
		width: 100%;
		font-family: Quicksand;
	}

	#wrapper_nav{
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100px;
		padding: 10px 100px;
		box-sizing: border-box;
		transition: 0.3s;
	}
	
	#wrapper_nav.black {
		background: rgba(0,0,0,0.8);
		height: 100px;
		padding: 10px 100px;
		z-index: 100;
	}
	
	#wrapper_nav .logo{
		padding: 22px 20px;
		height: 80px;
		float: left;
		font-size: 24px;
		transition: 0.3s;
		
	}
	
	
	
	
	#wrapper_nav.black .logo{
		color: #fff;
	}
	
	
	
	#wrapper_nav ul {
		list-style-type: none;
		float: right;
		margin: 0;
		padding: 0;
		display: flex;
	}
	
	#wrapper_nav ul li{
		list-style: none;
	}
	#wrapper_nav ul li a{
		line-height: 80px;
		color: #151515;
		padding: 12px; 30px;
		text-decoration: none;
		text-transform: uppercase;
		transition: 0.3s;
		font-weight: bold;
		font-size: 17px;
	}

	#wrapper_nav.black ul li a{
		color: #fff;
	}
	
	#wrapper_nav ul li a:focus {
		outline: none;
	}
	#wrapper_nav ul li a.active{
		background: #E2472F;
		color: #fff;
		border-radius: 6px;
	}
	
	


	
	
	

	
	
	
	

	
</style>
<script type="text/javascript" src="${path}/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	 $(document).ready(function(){
		
		$(window).on('scroll', function() {
			if($(window).scrollTop()){
				$('nav').addClass('black');
				$('#icon').addClass('black');
			}else{
				$('nav').removeClass('black');
				$('#icon').addClass('black');
			}	
		});
		
		$('.icon').click(function(){
			$('.search').toggleClass('active')
			
		});
		
	}); 

</script>


</head>


<body>
	
	
	
	
	
		
		<nav id="wrapper_nav">
			<div class="logo">MAY</div>
			<ul>
				<li><a href="${path}/index">HOME</a></li>
				<li><a href="${path}/gallery">Gallery</a></li>
				<li><a href="${path}/blog/list">Blog</a></li>
				
				<c:choose> 
					<c:when test="${empty sessionScope.loginUser}">
						<li><a href="<%=path%>/construct.bizpoll">회원가입</a></li>
						<li><a class ="active" href="<%=path%>/member/login">Log IN</a></li>	
					</c:when>
					<c:otherwise>
						<li>
						<a href="<%=path%>/member/update">${sessionScope.loginUser.name}(${sessionScope.loginUser.id})</a>
						</li>
						
						<li><a  class ="active" href="<%=path%>/member/logout">LogOut</a></li>
					</c:otherwise>
						
				</c:choose>
			</ul>
		</nav>
	
	
	


		
	
	
		
	
		
	
	
	

	
</body>
</html>