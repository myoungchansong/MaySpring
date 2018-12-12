<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">


	#upe{
	position:relative;
	left: 330px;
	top: -44px;
	font-size: 11px;
	color: black;
	}
	#del_btn{
		border: none;
		background: white;
	}
</style>
</head>
<body>

		<%-- 	<span>댓글 ${replyList.size()}</span> --%>
			<c:if test="${replyList.size()} == 0">
				등록된 댓글이 없습니다 
			</c:if>
				<div id ="reply_div">
			<c:forEach items="${replyList}" var="replyview">
					<div id="rad">
						<img src="img/011.jpg" id="rad_img">
						<span id="name">${replyview.writer}</span> 
						<span id="time">작성일:<fmt:formatDate pattern="HH:mm:ss" value="${replyview.regdate}"/></span>
						<span id="reply">${replyview.content}</span>
						
						<c:if test="${sessionScope.loginUser.id == replyview.writer}">
							<div id="del"><button id="del_btn" data_num="${replyview.rno}">삭제</button></div>
							<%-- <div id="update"><button id="update_btn" data_num="${replyview.rno}">수정</button></div> --%>
							<a href="#" onclick="cmUpdateOpen(${replyview.rno})"id="upe">수정</a><br> 
							
						</c:if>
					</div>
			</c:forEach>
				</div>
				
				<c:choose>
			<c:when test="${empty sessionScope.loginUser}">
				<!-- 로그인 안됐을때  -->
				<input type="text" name="keyword" id="keywordInput" readonly="readonly">
				<span id="er">로그인 후 사용 가능합니다 </span>
			</c:when>
			<c:otherwise>
				<!--로그인 됬을때  -->
		<div id="serch_war">
			<div id="reply_insert">
			
			<form method="post" name="frm_reply" id="frm_reply">
				<!-- blogviewcnt.bizpoll 으로 가는 이유 sessionscope가 잘못된거같음  -->
				<input type="hidden" name="user" id="user" value="${sessionScope.loginUser.id}">
				<input type="text" name="keywordInput" id="keywordInput" value="${cri.keyword}" >
				<div id="err" style="display: none; color: red; font-size: 10px;">내용을 입력해주세요</div>
				<input type="hidden" name="bno" id="bno">
				<button id="btn_input3">댓글달기</button>
				
			</form>	
			
			</div>	
		</div>
			</c:otherwise>
		</c:choose>
</body>
</html>