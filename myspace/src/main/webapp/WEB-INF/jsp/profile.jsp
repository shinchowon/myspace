<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content=="IE=edge"/>
<meta name="google" value="notranslate"/>
<%@ include file="/WEB-INF/jsp/include/includecss.jsp"%>
<%@ include file="/WEB-INF/jsp/include/includejs.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>"/>
<script src="<c:url value="/resources/js/main.js" />"></script>
<title>profile</title>
</head>
<body>
<div class="gateContainer" >
    <div class="centeredDiv">
        <div class="listProfiles">
            <div class="titleText">CWEND PORTFOLIO </div>
            <ul class="chooseProfile">
                <li class="profile">
                	<a class="profileLink" href="<c:url value='port/portMain.do'/>">
                    	<div class="avatarWapper">
                        	<div class="profileIcon"style="background-image:url(<c:url value="/resources/img/profile/profile1.png" />)">
                            </div>
                        </div>
                    	<span class="profileName">GUEST</span>
                    </a>
                	<div class="profile-children"></div>
                </li>
                <li class="profile">
                	<a class="profileLink" href="<c:url value='login/loginform.do'/>">
                    	<div class="avatarWapper">
                        	<div class="profileIcon" style="background-image:url(<c:url value="/resources/img/profile/profile2.png" />)"> 
                                </div>
                        </div>
                        <span class="profileName">LOGIN</span>
                    </a>
                    <div class="profile-children"></div>
                </li>
                <li class="profile">
                    <a class="profileLink" href="">
                    	<div class="avatarWapper">
                        	<div class="profileIcon" style="background-image:url(<c:url value="/resources/img/profile/profile3.png" />);">
                        	</div>
                        </div>
                    	<span class="profileName">SIGN-UP</span>
                    </a>
                	<div class="profile-children"></div>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>















