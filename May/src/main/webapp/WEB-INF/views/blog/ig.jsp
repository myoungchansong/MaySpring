<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="../include/include.jsp"%>
	<%@ include file="../include/header.jsp"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin:0px;
		padding: 0px;
		font-family: Quicksand;
	}
	
	#gallery{
		
		width: 1650px;
		height: 900px;
		margin: 0px auto;
		margin-top: 120px;
		box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2),
					0px 4px 10px 0 rgba(0, 0, 0, 0.10);	
		border: 1px solid black;
	}
	#infor{
		
		width: 400px;
		height: 900px;
		background-color: white;
		float: right;
		border-left: 1px solid black;
	}
	
	#user_box{
	
	height: 50px;
	width: 400px;
	border-bottom: 1px solid gray;
	
	}
	#user{
		height: 50px;
		width: 100px;
		float: right;
		text-align: center;
		display: inline-block;
		line-height: 50px;
		font-weight: bold;
		
	}
	#title{
		height: 50px;
		width: 300px;
		text-align: center;
		line-height: 50px;
		font-weight: bold;
	}
	#content{
		width: 400px;
		height: 400px;
		border-bottom: 1px solid gray;
		
	}
	#content_div{
		width: 400px;
		height: 330px;
		line-height: 50px;
		font-weight: bold;
		border-bottom: 1px solid gray;
	}
	#file{
		width: 400px;
		height: 20px;
		text-align: right;
		
	}
	#file span{ margin-right: 10px; font-size: 10px; }
	
	
	#war{
		height: 50px;
		margin: 0px auto;
		
	}
	
	#good, #lookup, #share{
		display: block;
		width: 100px;
		height: 50px;
		float: right;
		line-height: 50px;
		text-align: center;
	}
	
	#reply_war{
		width: 400px;
		height: 370px;
		margin-bottom: 10px;
	}
	
	
	#lingk{
		width: 400px;
		height: 54px;
		display: block;
		border-bottom: 1px solid black;
	}
	#lingk button{
		position:relative;
		float:left;
		width: 100px;
		height: 100%;
		padding: 0px 0px;
		border-right: 1px solid black;
		
		color: black;
		margin: 0px 0px;
		margin: 0px 0px;
		border-radius:0%;
		background: white;
	}
	
	#photo_border{
		width:1000px;
		height:700px;
		
	}
	#photo{
		width:1200px;
		height:900px;
		box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2),
					0px 4px 10px 0 rgba(0, 0, 0, 0.10);	
	}
	
	.a{
		display: inline-block;
		line-height: 50px;
		font-weight: bold;
		width: 70px;
		height: 60px;
		line-height: 60px;
		text-align: center;
		float: right;
	}
	
	#rad {
		border-bottom: 1px solid gray;
		height: 60px;
	}
	#rad img{
	margin: 10px 0px 0px 10px;
	display: inline-block;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	}
	#name {
	font-size: 5px;
	
	font-weight: bold;
	}
	#time {
	position:relative;
	font-size: 10px;
	}
	#reply{
		width: 400px;
		height: 60px;
		position: relative;
		top: 20px;
		left: -100px;
		font-size:12px;
	}
	
	#serch_war{
		width: 400px;
		height: 60px;
		border: 1px solid gray;
	}
	#reply_div{
		width: 400px;
		height: 320px;
		
	}
	#reply_insert{
		width: 390px;
		height: 35px;
	}
	#keywordInput{
		width: 398px;
		height: 30px;
		border: none;
		border-bottom: 1px solid gray;
	}
	#btn_input3{
		width: 100px;
		height: 28px;
		display: inline-block;
		background-color:white;
		color: gray;
		float:right;
		font-weight:bold;
		border: none;
		border-left: 1px solid gray;
	}
	#er{
		color:red;
		font-size: 10px;
		font-weight: bold;
		line-height: 10px;
		float: center;
	}
	.container{
		display: inline;
		padding: 0px;
	}
	
	#del_btn{
		position: relative;
		left: 360px;
		top: -20px;
		font-size: 11px;
			
	}
	#goodbutton{
		width: 50px;
		background-color: white;
		line-height: 30px;
		border: none;
	}
</style>
<script type="text/javascript" src="<%=path%>/SmartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script type="text/javascript">




		/*  수정  */
		$(document).on("click", "#blogupdate", function(){
			location.href="${path}/blog/modify?bno=${blogview.bno}"
		});
		
		
		
		
		
		
		
		/* 삭제  */
		$(document).on("click", "#modal_btn", function(){
			location.href="${path}/blog/remove?bno=${blogview.bno}&filename=${blogview.filename}"
		});
		
		
		
		
		
		
		
		
		
		/* 목록  */
		$(document).on("click", "#blog_list", function(){
			location.href="${path}/blog/list";
		});
		
		
		/* 댓글   */
		
		$(document).ready(function(){
			comment_list();
		});
		
		 function cmUpdateOpen(rno){
	            window.name = "parentForm";
	            window.open("replyupdate.bizpoll?rno="+rno,
	                        "updateForm", "width=570, height=350, resizable = no, scrollbars = no");
	        }

		
		function comment_list(){
			$.ajax({
				type: "post",
				url: "commentlist.bizpoll",
				data: "bno=${blogview.bno}",
				success: function(result){
					$("#commentList").html(result);
				}
			});
		}
		
		
		
		
		
		$(document).on("click", "#del_btn", function(){
			var rno = $(this).attr("data_num");
			var bno =${blogview.bno};
			$.ajax({
				type: "post",
				url:"replyDelet.bizpoll", 
				data: "rno="+rno+"&bno="+bno,/* 데이터 보내기  */
				success: function(result){
					alert("succese");
					comment_list();
				},
				error: function(){
					alert("System error");
				}
				
			});
		});
		
		
		
		
		/*  ================추천======= */
		$(document).on("click", "#goodbutton", function(){
			
			var bno =${blogview.bno};
			alert(bno);
			$.ajax({
				type: "post",
				url:"bloggoodcnt.bizpoll", 
				data: "bno="+bno,/* 데이터 보내기  */
				success: function(result){
					alert("succese");
					comment_list();
				},
				error: function(){
					alert("System error");
				}
				
			});
		});
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		$(document).on("click", "#btn_input3", function(){
			var keyword = $("#keywordInput").val();
           
            
			if(keyword == ""){
				alert("댓글을 입력해주세요");
				$("#keywordInput").focus();
				$("#err").css("dlsplay","block");
				return false;
			}else{
				var bno =${blogview.bno};
				$("#bno").val(bno);
	            
			}
				$.ajax({
					type:"POST",
					url:"replyinsert.bizpoll",
					data: $("#frm_reply").serialize(),
					/*  FROM태그의 직렬화*/
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success: function(result){
						
						comment_list();
						 $("#keywordInput").val("");
						
					},
					error: function(){
						alert("System error");
					}
					
				});
		});
		
		
		

</script>


</head>
<body>
	<div id="gallery"> 
	
		<div id="infor">
			<div id="user_box">
				<div id="user"><p>${blogview.writer}</p></div>
				<div id="title"><p>${blogview.title}</p></div>
				
			</div>
			
			
				<div id="content">
					<div  id=content_div>
						<p>${blogview.content}<p>
					</div>
						<div id="file">
							<a href="download.bizpoll?file=${blogview.filename}">${blogview.filename}
							(<fmt:formatNumber type="number" pattern="0.0" value="${blogview.filesize /12}"/>)kb</a>
						</div>
					
					<div id="war">
						<div id="lookup">
							<span>조회수 : ${blogview.viewcnt}</span>
						</div>
						<div id="good">
							<button id="goodbutton"><i class ="fa fa-hand-o-up"></i>  ${blogview.goodcnt}</button>
						</div>
			
					</div>
				</div>
			
			
			
			
			
			
			<div id="reply_war">
			
				<div id="commentList">
				</div>
				
		
		
	</div>	
			
		<div id="lingk">
		<%-- 	<c:if test="${sessionScope.loginUser.id == blogview.writer}"> --%>
			<!-- 	<button class="btn4">삭제</button> -->
				<button  id="blogupdate">수정</button>
						<!-- Button to Open the Modal -->
						<button type="button" class="btn btn-primary btn4" data-toggle="modal"
							data-target="#myModal" style="padding: 0px 0px 0px 0px;">삭제</button>

						<!-- The Modal -->
						<div class="modal fade" id="myModal">
							<div class="modal-dialog modal-sm">
								<div class="modal-content">

									<!-- Modal Header -->
									<div class="modal-header">
										<h4 class="modal-title">게시글 삭제</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
				
									<!-- Modal body -->
									<div class="modal-body">게시글을 삭제하시겠습니까?</div>

									<!-- Modal footer -->
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal" style="background-color: blue" id="modal_btn">삭제</button>
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal" >취소</button>
									</div>

								</div>
							</div>
						</div>

					
			<%-- 	</c:if> --%>
			<button class="btn4">답변</button>
			<button class="btn4" id="blog_list">목록</button>
		</div>
			
		</div>
		
		<div id="photo_border">
			<img src="img/${blogview.filename}" id="photo">
		</div>
		
		
	</div>
	
</body>
</html>