<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content=="IE=edge"/>
<meta name="google" value="notranslate"/>
<title>Login</title>
<%@ include file="/WEB-INF/jsp/include/includecss.jsp"%>
<%@ include file="/WEB-INF/jsp/include/includejs.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/login.css"/>"/>
</head>
<body class="loginBody">
    <div class="login-box">
        <h2>Login</h2>
        <form id="loginData">
          <div class="user-box">
            <input type="text" name="user" required />
            <label>Username</label>
          </div>
          <div class="user-box">
            <input type="password" name="pass" autocomplete="off" required />
            <label>Password</label>
          </div>
          <a class="guest floatl" href="#">Guest</a>
          <a class="submit floatr" href="#">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Submit
          </a>
        </form>
      </div>
     <script>
        $(".submit").click(function(){
            if($("input[name=user]").val() == ""){
                alertMsg($("input[name=user]").val(), "Username 없음");
            }else if($("input[name=pass]").val() == ""){
                alertMsg($("input[name=pass]").val(), "Password 없음");
            }else {
            	let formData = $("#loginData").serialize;
            	$.ajax({ 
        			url : 'login.do',
        			type: "POST",
        	    	data : {name:$("input[name=user]").val(), pass:$("input[name=pass]").val()},
        	    	//dataType : "json",
        	    	success:function(result) {
        				console.log(result);
        	    		if (result == "f") {
        					alert("EMAIL또는 PASS를 확인해주세요.");
        				 }
        				else {
        					alert("로그인되었습니다.");
        					//location.href="/petmee/main.do"
        				}
        			},error : function (jqXHR, textStatus, errorThrown){
                    	console.log(jqXHR);  //응답 메시지
                    	console.log(textStatus); //"error"로 고정인듯함
                    	console.log(errorThrown);
                    }
        		});    	
            }
        });
    </script>
</body>
</html>















