<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ include file= "include/include.jsp" %>
    <%@ include file= "include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>May</title>

<style type="text/css">

	body,html{
		height: 1000px;
		width: 100%;
		font-family: Quicksand;
		background: url(${path}/resources/img/main.jpg);
		/*  background:url(img/se.jpg); */
		background-repeat: no-repeat ;
		background-size: cover;
		background-position: center;
	}
	
	#img{
		margin: 0px 0px 0px 150px;
	}
	 #top{
		width:100%;
		padding: 20px 20px 5px;
		display: block;
	} 
	
	#top h1{
		padding-top:150px;
		font-size: 30px;
		font-weight: blod;
		
	}
	
	#top h1, #top h2{
		margin: auto;
		max-width: 800px;
		color: #fff;
		text-shadow: 0 0 1px rgba(0,0,0,0.6);
		line-height: 1.5 !important
	}
	
	#top h2{
		font-size: 18px;
		padding: 10px 0 20px;
		font-weight: normal;
	}
	/*==================================================*/
	section.secl {
		width: 100%;
		height: 500px;
		
	}
	
	
	.content {
		margin-top: 80px;
	}
	
	.content p {
		width: 900px;
		margin: 30px auto;
		text-align: justify;
		font-size: 20px;
		line-height:  30px;
	}
	
	.search{
		margin: 0px auto;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		width: 80px;
		height: 80px;
		background: #fff;
		box-shadow: 0px 5px 20px rgba(0,0,0,0.5);
		border-radius: 4px;
		transition: width 0.5s;
		overflow: hidden;
		
	}
	.search.active{
		width: 600px;
	}
	
	.search input{
		position: absolute;
		top: 10px;
		left: 10px;
		width: calc(100% - 90px);
		height: 60px;
		border: none;
		outline: none;
		font-size: 36px;
		padding: 0 10px;
		color: #666;
	}
	.icon{
		position: absolute;
		top: 10px;
		right: 10px;
		width: 60px;
		height: 60px;
		cursor: pointer;
		transition: 0.5s;
		border-radius: 4px;
		
	}
	#icon_div{
		position: absolute;
		width: 100%;
		height:500px;
		
	}
	.search.active .icon {
		background: #ff355a;
	}
	
	.icon:before{
		content: '';
		position: absolute;
		top: 10px;
		left: 10px;
		width: 24px;
		height: 24px;
		background: transparent;
		border: 2px solid #262626;
		border-radius: 50%;
		transition: 0.5s;
	}
	
	.search.active .icon:before{
		content: '';
		position: absolute;
		top: 7px;
		left: 13px;
		width: 18px;
		height: 30px;
		background: transparent;
		border:	none;
		border-right: 2px solid #fff;
		border-radius: 0;
		transition: 0.5s;
		transform: rotate(45deg);
	}
	
	
	.icon:after{
		content: '';
		position: absolute;
		top: 25px;
		left: 35px;
		width: 18px;
		height: 18px;
		background:transparent;
		border-left: 2px solid #262626;
		border-radius: 0;
		transform: rotate(-45deg);
		transition: 0.5s;
	}
	
	.search.active .icon:after{
		content: '';
		position: absolute;
		top: 20px;
		left: 13px;
		width: 18px;
		height: 30px;
		background: transparent;
		border:	none;
		border-right: 2px solid #fff;
		border-radius: 0;
		transition: 0.5s;
		transform: rotate(-45deg);
	}
	/*========================================================*/

	#nav2_div{
		text-align: center;
		padding: 50px;
	}
	
	#nav2_div_ul{
		height: 82px;
	}
	
	#nav2_div_ul{
		margin: auto;
		margin-bottom: 50px;
		width: 800px;
		list-style: none;
		background: rgba(0,0,0,0.2);
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
	
	
	
	/*------------------------------------------------  */
	
	#img{
		width: 300px;
   		height: 300px;
    	object-fit: cover;
    	margin: 0px;
	}
	.fordiv{
		width: 1650px;
		height: 100%;
		margin: 0px auto;
	}
	.w3-row-padding, #div_img, .img_div{
		width: 300px;
   		height: 300px;
   		display: inline-block;
	}
	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	 /* $(document).ready(function(){
		
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
		
	});  */
	function onClick(element) {
		  document.getElementById("img01").src = element.src;
		  document.getElementById("modal01").style.display = "block";
		 
		}

</script>
</head>
<body>
	<div class="wrapper">
		<div id="top">
			<h1>
				<span class="hide-xs hide-sm">May .</span>
				 무료  이미지
				
			</h1>
			<h2>우리의 관대한 커뮤니티를 통해 공유되는 1.5 백만개의 이미지와 비디오를 검색해보세요</h2>
		</div>
	</div>
	<section class="secl">
		<div id="icon_div">
			<div class="search">
				<input type="text" placeholder="Search..">
				<div class="icon"></div>
			</div>
		</div>
		</section>
		<div id="nav2_div">
			<ul id="nav2_div_ul">
				<li><a href="">사진</a></li>
				<li><a href="">일러스트</a></li>
				<li><a href="">벡터 그래픽</a></li>
				<li><a href="">비디오</a></li>
				<li><a href="">더보기</a></li>
			</ul>
		</div>
	
	<Section class="content" >
		<p style="font-weight: bold;">최신 사진</p>
		<div class="w3-row">








			<div id="photocard">
				<div class="fordiv">
					<c:forEach items="${newView}" var="newView">
						<div class="img_div">
							<div class="w3-row-padding">
								<div class="w3-container w3-third" id="div_img">
									<img src="${path}/resources/img/${newView.p_img}" class="img"
										style="cursor: pointer" onclick="onClick(this)"
										class="w3-hover-opacity" id="img">
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>










		</div>
	</Section>
	
	<Section class="content" >
		<p style="font-weight: bold;">베스트 사진</p>
		<div class="w3-row">



				<div id="photocard">
		<div class="fordiv">
			<c:forEach items="${bestlist}" var="bestlist">
				<div class="img_div">
					<div class="w3-row-padding">
						<div class="w3-container w3-third"id="div_img">
							<img src="${path}/resources/img/${bestlist.p_img}" class="img"
								style="cursor: pointer" onclick="onClick(this)"
								class="w3-hover-opacity" id="img">
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>




		</div>
	</Section>
	<div id="modal01" class="w3-modal" onclick="this.style.display='none'">
<!-- <span class="w3-button w3-hover-red w3-xlarge w3-display-topright" id="button">&times;</span> x 버튼-->
		<div class="w3-modal-content w3-animate-zoom">
			<img id="img01" style="width: 100%">
		</div>
	</div>
	
<!-- jstl태그(동작)        el 태그(값) -->
		
		
	
</body>
<%@ include file= "include/footer.jsp" %>
</html>