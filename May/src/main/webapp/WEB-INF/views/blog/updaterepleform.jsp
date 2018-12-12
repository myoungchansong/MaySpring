<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 댓글 답변 </title>
    
    <style type="text/css">
        #wrap {
            width: 550px;
            margin: 0 auto 0 auto;
            text-align :center;
        }
    
        #commentUpdateForm{
            text-align :center;
        }
    </style>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
    
    $(document).on("click", "#update", function(){
    	var form = $("#updateInfo");
    	var content =$("#comment_content").val();
    	if(content == ""){
    		alert("값을 입력해주세요 ");
    		return false;
    	} else {
    		form.submit();
    	}
    	


    });
    
    </script>
    
    
    
</head>
<body>
<div id="wrap">
    <br>
    <b><font size="5" color="gray">댓글수정</font></b>
    <hr size="1" width="550">
    <br>
 
    <div id="commentUpdateForm">
        <form action="replyupdateform.bizpoll" method="post" name="updateInfo" id="updateInfo">   
        	<input type="hidden" id="rno" name="rno"value="${replyList.rno}" >
        	<div>작성자 : ${replyList.writer}</div>
            <textarea rows="7" cols="70" name="comment_content" id="comment_content">${replyList.content}</textarea>
            <br><br>
            <input type="button" value="수정하기" id="update">
            <input type="button" value="창닫기">
        </form>
    </div>
</div>    



</body>
</html>