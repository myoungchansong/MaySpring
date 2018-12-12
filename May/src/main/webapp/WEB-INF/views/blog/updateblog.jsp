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
* body{
	margin: 0px;
	padding: 0px;
	font-family: Quicksand;
	list-style-type: none;
}

a {
	text-decoration: none;
}


#gallery {
	width: 1650px;
	height: 900px;
	margin: 0px auto;
	margin-top: 120px;
	box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.2), 0px 4px 10px 0
		rgba(0, 0, 0, 0.10);
}

#imgbox {
	width: 850px;
	height: 900px;
	display: inline-block;
}

#imgbox img {
	width: 850px;
	height: 846px;
	margin: 0px;
	padding: 0px;
}

#conbox {
	width: 800px;
	height: 900px;
	
	display: inline-block;
	position: absolute;
}

#file {
	width:850px;
	height: 50px;
	
	position: relative;
}
#btn-1{
	width: 100px;
	height: 50px;
	float: right;
	color: white;
	border: none;
	background-color: #2ecc71;
	font-weight: bold;
}
#filename{
	border: none;
	width: 750px;
	height: 50px;
}
#title{
	width: 700px;
	height: 20px;
	display:block;
	margin-left: 25px;
	border: 1px solid gray;
}
#con{
	width: 750px;
	height: 600px;
	display:block;
	margin: 10px auto;
	border: 1px solid gray;
}
.contitle{
	padding: 10px;
	font-weight: bold;
	padding: 20px
}
#conwar{
	margin-top: 75px;
	width: 800px;
	height: 750px;
	
}
#btn-2{
	width: 200px;
	height: 50px;
	border: none;
	color: white;
	font-size: 20px;
	font-weight: blod;
	display: block;
	margin: 0px auto;
	background-color:  #2ecc71;
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
	
	.btn-file{
		height: 35px;
		width: 80px;
		background-color: #2ecc71;
		border: none;
		border-radius: 6px;
		margin: 20px 5px;
		color: white;
	}
</style>

<script type="text/javascript" src="<%=path%>/SmartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

	$(document).on("click", "#btn-2", function(elClickedObj){
		var title = $("#title").val();
		
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		
		if(title ==""){
			$("#title").focus();
			$("#err_check").css("display", "block");
			return false;
		}
		var nowfile = $("#file-name").text();
		$("#now-file-name").val(nowfile);
		$("#frm_bin").submit();
	});

	$(document).on("click", ".btn-file", function(){
		$("#uploadfile").click();
		
	});
	
	
 	$(document).on("change", "#uploadfile", function(){
		var filesize= $(this)[0].files;
		alert(filesize);
		if(filesize.length < 1){
			$("#file-name").text("선택된 파일 없음");
			$("#close_btn").css("display", "block");
		} else{
			/*  첨부파일이 있다면 첨부파일의 이름과 사이즈를 불러옴 */
			var filename =this.files[0].name;
			var size =this.files[0].size;
			
		/* 	var size = this.files[0].size; */
			var maxSize = 10 * 1024 *1024;
		}
		
		if(size > maxSize){
			alert("첨부파일 사이즈는 10mb 이내로 등록 가능합니다");
			$("#file-name").text("선택된 파일 없음");
			/* 화명단에서는 input type="file"용량 제한하는 코드없음
			그래서 경고창은 뜨지만 실제 10mb 넘는파일이 들어가 있음
			반드시 초기화를 시켜서 지워줄 것!! 안그러면 action단에서 에러 발생*/
			$("#uploadfile").val("");
			$("#now-file-size").val(0);
		} else { /* 첨부 가능  */
			$("#now-file-size").val(size);
			$("#file-name").text(filename);
			$("#close_btn").css("display", "block");
		}
		
		
	});
 	
 	
	 $(document).on("click", "#close_btn", function(){
		$("#uploadfile").replaceWith($("#uploadfile").clone(true));
		$("#uploadfile").val("");
		$("#file-name").text("선택된 파일 없음");
		$("#close_btn").css("display", "none");
	}); 
	
	 
	
</script>
</head>
<body>
	<div id="gallery">
		<div id="imgbox">
				<img src="<%=path%>/img/${blogview.filename}">
		</div>
		
		
		
		<div id="conbox">
			<div id="conwar">
				<form action="${path}/blog/modify" method="post" name="frm_bin" id="frm_bin" enctype="multipart/form-data">
					<p class="contitle">제목</p>
					<input type="text" name="title" id="title" value="${blogview.title}">
					
					<div id="err_check">
						<span id="err_check_msg">
							제목을 입력해주세요
						</span>
					</div>
					
					<p class="contitle">내용</p>
					<textarea name="content" id="content"id="con" rows="10" cols="100">${blogview.content}</textarea>
					
					<p class="contitle">작성자</p>
					<input type="text" name="writer" id="title" value="${sessionScope.loginUser.id}">
					
					
						<div>
							<input type="file" name="uploadfile" id="uploadfile" style="display: none">
							<input type="button" class="btn btn-file" value="파일 선택">
						<!--	<span class="files" id="file-name" style="height: 29px; border: none;">선택된 파일 없음</span>  -->
						
							<c:choose>
									<c:when test="${blogview.filename==null}">
										<span class="files" id="file-name" style="height: 29px; border: none;">선택된 파일 없음</span>
									</c:when>
									<c:otherwise>
										<span class="files" id="file-name" style="height: 29px; border: none;">${blogview.filename}</span>
										<i class="fa fa-close" id="close_btn"></i>
									</c:otherwise>
							</c:choose>
							
							
							<input type="hidden" id="bno" name="bno" value="${blogview.bno}">
						<%-- 	<input type="hidden" id="post-file-name" name="post-file-name" value="${blogview.filename}">
							<input type="hidden" id="post-file-size" name="post-file-size" value="${blogview.filesize}"> --%>
								<input type="hidden" name="now-file-name" id="now-file-name">
								<input type="hidden" name="now-file-size" id="now-file-size">
						</div>
				
					<button id="btn-2">수정하기</button>
				</form>
			</div>
		</div>

	
	
	</div>
	
	
	<script type="text/javascript">

		var oEditors = [];

		nhn.husky.EZCreator.createInIFrame({

  		oAppRef: oEditors,

   		elPlaceHolder: "content",

   		sSkinURI: "<%=path%>/SmartEditor/SmartEditor2Skin.html",

    	fCreator: "createSEditor2"

});

</script>
	
	
</body>


</html>