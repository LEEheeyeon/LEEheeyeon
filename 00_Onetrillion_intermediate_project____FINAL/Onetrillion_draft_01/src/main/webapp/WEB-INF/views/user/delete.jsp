<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
      <script src="//code.jquery.com/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<h1>삭제를 위해서 비밀번호를 다시 입력해주세요</h1>


아이디 <input id="u_id" value="${member.u_id }" type="text">
<input id="u_pwd_ori" value="${member.u_pwd }" type="hidden">

<form action="delete.do"  method="post" id="form">
비밀번호 <input id="u_pwd"  type="password">
<button type="button" id="submitbtn">회원 탈퇴</button>
</form>


<script type="text/javascript">


var u_pwd_ori=$("#u_pwd_ori").val(); //원래 비밀면호
console.log("u_pwd_ori > "+u_pwd_ori);

var u_pwd=document.getElementById('u_pwd').value; //적은 비밀번호
console.log("u_pwd > "+u_pwd);

	
	
		
		window.onload = function() {		
	    document.getElementById('submitbtn').onclick = function() {
    		var u_pwd=document.getElementById('u_pwd').value; //적은 비밀번호
    		console.log("u_pwd > "+u_pwd);
    		
	    	if(u_pwd != u_pwd_ori){
	    		console.log("u_pwd > "+u_pwd);
		    	alert("비밀번호가 다릅니다!");
	    	}else{
	    		var delete_user = confirm('정말정말루 탈퇴 할끄야??????ㅜㅜ');
	        	
	        	if(!delete_user){
	        		return false;
	        	}else{
	    		
		    	alert("탈퇴 되었습니다. 안녕히가세요ㅜㅜ");
		        document.getElementById('form').submit();
		        return false;
	        	}
	        
	        
	    	}
	        
	        
	   	 };
		};
	    
</script>

</body>
</html>