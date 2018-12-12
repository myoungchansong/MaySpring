<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/include.jsp"%>
<%@ include file="../include/header.jsp"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<style type="text/css">
body, html {
	margin: 0px;
	padding: 0px;
	list-style-type: none;
	
}

#main-gr {
	margin: 0px auto;
	width: 900px;
	height: 3200px;
}
a{
	text-decoration: none;
}
#title {
	font-size: 20px;
	font-weight: bold;
	font-family: Quicksand;
	margin: 50px 0px 0px 60px;
}
#new {
	color: red;
	font-size: 15px;
	font-weight: 900px;
}

#box-gr {
	width: 860px;
	height: 270px;
	padding: 20px 20px;
	border-bottom: 1px solid gray;
}

#name {
	position: absolute;
	margin: 15px 10px 5px 10px;
	font-weight: bold;
}

#rad {
	margin: 10px 0px 0px 10px;
	display: inline-block;
	width: 40px;
	height: 40px;
	border-radius: 50%;
}

#rad_img {
	width: 40px;
	height: 40px;
	border-radius: 50%;
}

#time {
	font-size: 10px;
	margin: 0px 10px;
}

#grap-gr {
	height: 200px;
	width: 660px;
	display: inline-block;
	margin: 30px 0px;
}

.img-gr {
	width: 200px;
	height: 200px;
	float: right;
	display: inline-block;
	margin: 30px 0px;
}
.con-gr{
	height: 100px;
	width: 	610px;
	border-bottom: 1px solid black;
	margin-bottom: 10px;
}

.con-gr>p {
	padding: 0px 5px;
	font-size: 5px;
}

.gam-gr {
	display: inline-block;
	font-size: 15px;
}

.gam-gr>span {
	margin-left: 10px;
}

.title-gr {
	margin: 10px;
	font-weight: bold;
}

/* ==========================================================*/
#page {
	text-align: center;
 	margin-bottom: 10px;
}
.pagination li{
	display: inline-block;
	
	
} 
.pagination li a{
	/* text-decoration: none;
	font-weight: bold;
	margin: 0px 10px;
	color: black; */
	float:left;  
    padding:4px; 
    margin: 0px 4px; 
    width:15px;  
    font:bold 15px black;  
    text-align:center;  
    text-decoration:none;  
}


.active1{
	border-bottom:1px solid gray;
	color: red;
	
}




#nav1 {
	border: 1px solid black;
	width: 900px;
	height: 50px;
	text-align: center;
}

.nav1_div {
	display: inline-block;
}

.nav1_div> p {
	margin: 0px;
	line-height: 50px;
	width: 150px;
	font-weight: bold;
	margin: 0px 0px;
	color: white;
	cursor: pointer;
}
/* ================================================================ */
.fordiv {
	width: 1600px;
	height: 300px;
	margin: 0px auto;
	padding: 100px 110px 50px 110px;
	background-color: #f5f5f6;
}

.img_div {
	display: inline-block;
}

.img {
	width: 300px;
	height: 300px;
	margin-right: 15px;
}

#mypage{
	width: 900px;
	height: 150px;
	border-bottom: 1px solid black;
	margin: 10px auto;
}
#mypage > p{
	text-align: center;
	position:relative;
	top: 45px;
	font-size: 20px;
	font-weight: bold;
}
section.secl {
		width: 100%;
		height: 500px;
		
	}
	
	.search-box{
		position: absolute;
		top: 50%; left: 50%;
		transform: translate(-50%, -50%);
		background: #2f3640;
		height: 40px;
		border-radius: 40px;
		padding: 10px;
	}

	.search-box:hover > .search-txt {
		width: 240px;
		padding:0 6px;
	}

	.search-box:hover > .search-btn {
		background: white;
		color: #1e1e1e;
	}

	.search-btn{
		color:#d9d9d9;
		float: right; 
		width: 40px; height: 40px;
		border-radius: 50%;
		background:#1e1e1e;
		display: flex;
		justify-content: center;
		align-items: center;
		transition: 0.4s;
	}

	.search-txt {
		border : none;
		background : none;
		outline: none;
		float: left;
		padding: 0;
		color: white;
		font-size: 16px;
		transition: 0.4s;
		line-height: 40px;
		width: 0px;
	}
	
	#searchwrp{
		width: 900px;
		height: 70px;
		position: relative;
		top: 30px;
		display: block;
		border: 1px solid black;
		font-weight: bold;
	}
	#inputGroupSelect01{
		width: 200px;
		height: 70px;
		background-color: white;
		float: left;
		border: none;
	}
	#keywordInput{
		width: 598px;
		height: 70px;
		border: none;
		border-left:1px solid black;
		border-right: 1px solid black;
	}
	#searchbtn{
		width: 180px;
		height: 70px;
		float: right;
		border: none;
		background: white;
	}
	#ser{
		font-weight: blod;
		width: 450px;
		font-size: 15px;
		display: block;
		margin: 0 auto;
		text-align: center;
		margin-top: 5px;
	
	}
</style>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		
		var code = $("#code").val();
		if(code == "new"){
			$("#orderNew").css("color", "#E71D36").css("font-weight", "bold")
		} else if(code == "good"){
			$("#orderGood").css("color", "#E71D36").css("font-weight", "bold")
		} else if(code == "reply"){
			$("#orderReply").css("color", "#E71D36").css("font-weight", "bold")
		} else if(code == "cnt"){
			$("#orderCnt").css("color", "#E71D36").css("font-weight", "bold")
		}
		
		
		$("#searchbtn").on("click", function(){
		var flag = $("#inputGroupSelect01").val();
		var keyword	= $("#keywordInput").val();
			location.href="${path}/blog/list?flag="+flag+"&keyword="+keyword;
		});
		
		
	});
</script>






<body>

	<div id="photocard">
		<div class="fordiv">
			<c:forEach items="${newView}" var="newView">
				<div class="img_div">
					<img src="${path}/resources/img/${newView.p_img}" class="img"><br>
				</div>
			</c:forEach>
		</div>
	</div>
		<div id="mypage">
			<div id="searchwrp">
			
			<select name="searchType" class="custom-select"
				id="inputGroupSelect01" style="width: 120px;">
	
				<option value="1"
					<c:out value="${cri.searchType eq 't'?'selected' :''}"/>>
					제목</option>
					
					
				<option value="2"
					<c:out value="${cri.searchType eq 'c'?'selected' :''}"/>>
					내용</option>
					
					
				<option value="3"
					<c:out value="${cri.searchType ==  null?'selected' :''}"/>>
					제목+내용</option>
	
	
				<option value="4"
					<c:out value="${cri.searchType eq 'w'?'selected' :''}"/>>
					작성자</option>
	
	
	
			</select> 
			<input type="text" name="keyword" id="keywordInput"value="${cri.keyword }" placeholder="검색어를 입력하세요">
	
			<button id="searchbtn" class="btn btn-warning">검색</button>
			
			<c:if test="${!empty keyword}">
				<div id="ser">
					<p>"${keyword}"관련검색어 ${pageMaker.totalCount}건이 검색되엇습니다</p>
				</div>
			</c:if>

		</div>
		
		
		
		
		
			<!-- <p>로그아웃 상태입니다.<br>
			로그인하여 새글을 확인해보세요.</p> -->
		</div>

	<div id="main-gr">
	
		<div id="nav1">
			<div class="nav1_div">
				<p><a href="${path}/blog/list?flag=${flag}&keyword=${keyword}&code=new" id="orderNew" class="order_nav">최신순</a></p>
			</div>
			<div class="nav1_div">
				<p><a href="${path}/blog/list?flag=${flag}&keyword=${keyword}&code=good" id="orderGood" class="order_nav">추천순</a></p>
			</div>
			<div class="nav1_div">
				<p><a href="${path}/blog/list?flag=${flag}&keyword=${keyword}&code=reply" id="orderReply" class="order_nav">댓글</a></p>
			</div>
			<div class="nav1_div">
				<p><a href="${path}/blog/list?flag=${flag}&keyword=${keyword}&code=cnt" id="orderCnt" class="order_nav">조회</a></p>
			</div>
			<c:choose>
				<c:when test="${empty sessionScope.loginUser}">
					<!-- 로그인 안됐을때  -->
					<div class="nav1_div">
					<!-- 	<p><a href="login.bizpoll">등록</a></p> -->
						<p><a href="${path}/blog/register" style="font-style: none" id=>등록</a></p>
					</div>	
				</c:when>
				<c:otherwise>
					<!--로그인 됬을때  -->
					<div class="nav1_div">
						<p><a href="${path}/blog/register" style="font-style: none" id=>등록</a></p>
					</div>	
					
				</c:otherwise>
			</c:choose>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
<!--=================================================================================  -->
			<c:forEach items="${blogList}" var="bDto">
				<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
				<fmt:formatDate value="${bDto.regdate}" pattern="yyyy-MM-dd" var="regdate2"/>
				
				<div id="box-gr">
					<div id="grap-gr">
					
					 <div id="bno">${bDto.bno}</div> 
					
						<div class="name-gr box">
							<div id="rad"><img src="${path}/resources/img/011.jpg" id="rad_img"></div>
							
							<span id="name">${bDto.writer}</span> 
							<span id="time">
								
								<c:choose>
									<c:when test="${today2==regdate2}">
										<fmt:formatDate pattern="HH:mm:ss" value="${bDto.regdate}"/>
									</c:when>
									<c:otherwise>
										<fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.regdate}"/>
									</c:otherwise>
								</c:choose>
							</span>
						</div>
						
						<div class="title-gr box"><a href="${path}/blog/view?bno=${bDto.bno}">${bDto.title}</a>
							<c:if test="${today2==regdate2}">
								<span class="title-gr box" id="new">New</span>
							</c:if>
						</div>
						
						
						<div class="con-gr box">${bDto.content}</div>
						<div class="gam-gr box">
							<input type="hidden" id="code" value="${code}">
							<span>추천 ${bDto.goodcnt}</span>
							<span>댓글 ${bDto.replycnt}</span> 
							<span>조회수  ${bDto.viewcnt}</span>
							<span>첨부 파일 
								<c:if test="${bDto.filename != null}">
									<i class ="fa fa-floppy-o"></i>
								</c:if>
							</span>
						</div>
		
					</div>
		
					<div class="img-gr"><img src="${path}/resources/img/010.jpg" class="img-gr" style="margin: 0px"></div>
		
				</div>
			</c:forEach>
	
	
	
	
	
		</div>
<!--=================================================================================  -->



























	<div id="page">
			
		<div class="pagination" style="margin-bottom: 50px;">
		
			<c:if test="${pageMaker.prev}">
				<li>
					<a href="${path}/blog/list?page=${pageMaker.startPage - 1}">&laquo;</a> 
				</li>
			</c:if>
			
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				<li 
					<c:out value="${pageMaker.criDto.page == idx? 'class=active1':''}"/>>
					<a href="${path}/blog/list?page=${idx}&flag=${flag}&keyword=${keyword}&code=${code}">${idx}</a>
				</li>
			</c:forEach>	
			
			<c:if test="${pageMaker.next}">
				<li> 
					<a href="${path}/blog/list?page=${pageMaker.endPage + 1 }">&raquo;</a>
				</li>
			</c:if>
			<!-- <a href="#">1</a> 
			<a href="#">2</a> 
			<a href="#">3</a> 
			<a href="#">4</a> 
			<a href="#">5</a> 
			<a href="#">6</a>
			
			<a href="#">&raquo;</a> -->
			
		</div>
	</div>






</body>
<%@ include file="../include/footer.jsp"%>
</html>
