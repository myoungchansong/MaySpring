<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/include.jsp"%>
    <%@ include file="include/header.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
<style type="text/css">
*{
		margin:0px;
		padding: 0px;
		font-family: Quicksand;
	}


/*  ======================================================    */

	#nav2_div{
		text-align: center;
		margin: 50px;
	}
	
	#nav2_div_ul{
		height: 82px;
	}
	
	#nav2_div_ul{
		margin: auto;
		margin-bottom: 50px;
		width: 800px;
		list-style: none;
		background: black;
	}
	
	
	#nav2_div_ul > li{
		margin-top: 26px;
		display: inline-block;
	}
	
	
	#nav2_div_ul > li a{
		text-decoration: none;
		color:  #fff;
		font-family: Quicksand;
		font-weight: lighter;
		font-size: 24px;
		transition: 1s;
		padding: 25px 30px;
	}
	
	#nav2_div_ul > li a:hover{
		transition: 1s;
		background: rgba(255, 255, 255,0.7);
		color: #000;
	}
	#img{
		width: 200px;
   		height: 400px;
    	object-fit: cover;
	}
	.fordiv{
		width: 1650px;
		height: 100%;
		margin: 0px auto;
	}
	.w3-row-padding, #div_img, .img_div{
		width: 200px;
   		height: 400px;
   		display: inline-block;
	}
	#logo_may{
		width: 400px;
		height: 200px;
		object-fit: cover;
		margin: 0px auto;
		display:block;
		margin-top: 150px;
	}
	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function onClick(element) {
	  document.getElementById("img01").src = element.src;
	  document.getElementById("modal01").style.display = "block";
	 
	}

</script>
</head>
<body>

		<img src="img/maygra.png" id="logo_may">
		<div id="nav2_div">
			<ul id="nav2_div_ul">
				<li><a href="">사진</a></li>
				<li><a href="">일러스트</a></li>
				<li><a href="">벡터 그래픽</a></li>
				<li><a href="">비디오</a></li>
				<li><a href="">검색</a></li>
			</ul>
		</div>

	<div id="photocard">
		<div class="fordiv">
			<c:forEach items="${allView}" var="allView">
				<div class="img_div">
					<div class="w3-row-padding">
						<div class="w3-container w3-third"id="div_img">
							<img src="img/${allView.p_img}" class="img"
								style="cursor: pointer" onclick="onClick(this)"
								class="w3-hover-opacity" id="img">
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<div id="modal01" class="w3-modal" onclick="this.style.display='none'">
<!-- <span class="w3-button w3-hover-red w3-xlarge w3-display-topright" id="button">&times;</span> x 버튼-->
		<div class="w3-modal-content w3-animate-zoom">
			<img id="img01" style="width: 100%">
		</div>
	</div>

</body>
 <%@ include file="include/footer.jsp"%> 
</html>