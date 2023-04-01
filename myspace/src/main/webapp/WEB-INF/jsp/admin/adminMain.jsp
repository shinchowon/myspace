<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="google" value="notranslate"/>
<title>adminMain</title>
<%@ include file="/WEB-INF/jsp/include/includecss.jsp"%>
<%@ include file="/WEB-INF/jsp/include/includejs.jsp"%>
<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/admin/admin.css"/>"/>

<script src="<c:url value="/resources/js/admin/admin.js" />"></script>

</head>
<style>
	.fileBtn {width:100px; height:20px; color:#000; backgroud:#ccc; border:1px solid red;} 
</style>
<script>
$(document).ready(function($){	
	$(".aaa").click(function(){	
		console.log($("input[name=file]").val());
		$.ajax({ 
			url : 'upload.do',
			type: "POST",
			data : {file:$("input[name=file]").val()},
			//dataType : "json",
			success:function(result) {
				
			},error : function (jqXHR, textStatus, errorThrown){
		    	console.log(jqXHR);  //응답 메시지
		    	console.log(textStatus); //"error"로 고정인듯함
		    	console.log(errorThrown);
		    }
		});
	});
});
let formData = $("#fileForm").serialize;

</script>
</body>
	<h2>관리자페이지</h2>
	<form id="fileForm">
		<input type="file" name="file" multiple />
		<button class="fileBtn">파일 업로드</button>
	</form>
	<div class="aaa">adsf</div>
</body>
</html>















