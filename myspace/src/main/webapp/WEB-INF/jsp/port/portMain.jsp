<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content=="IE=edge"/>
<meta name="google" value="notranslate"/>
<title>portMain</title>
<%@ include file="/WEB-INF/jsp/include/includecss.jsp"%>
<%@ include file="/WEB-INF/jsp/include/includejs.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/portpolio/port.css"/>"/>
<script src="<c:url value="/resources/js/portpolio/port.js" />"></script>
</head>
</body>
<div class="demo-cont">
    <!-- slider start -->
    <div class="fnc-slider example-slider">
      <div class="fnc-slider__slides">
        <!-- slide start -->
        <div class="fnc-slide m--blend-dark m--active-slide">
          <div class="fnc-slide__inner">
            <div class="fnc-slide__mask">
              <div class="fnc-slide__mask-inner"></div>
            </div>
            <div class="fnc-slide__content">
              <h2 class="fnc-slide__heading">
                <div class="fnc-slide__heading-line">
                  <span>portpolio</span>
                </div>
              </h2>
              <button type="button" class="fnc-slide__action-btn">
                Move
                <span data-text="Move">Move</span>
              </button>
            </div>
          </div>
        </div>
        <!-- slide end -->
        <!-- slide start -->
        <div class="fnc-slide m--blend-dark">
          <div class="fnc-slide__inner">
            <div class="fnc-slide__mask">
              <div class="fnc-slide__mask-inner"></div>
            </div>
            <div class="fnc-slide__content">
              <h2 class="fnc-slide__heading">
                <div class="fnc-slide__heading-line">
                  <span>Contact</span>
                </div>
              </h2>
              <button type="button" class="fnc-slide__action-btn">
                Move
                <span data-text="Move">Move</span>
              </button>
            </div>
          </div>
        </div>
        <!-- slide end -->
      </div>
      <nav class="fnc-nav">
        <div class="fnc-nav__bgs">
          <div class="fnc-nav__bg m--navbg-dark m--active-nav-bg"></div>
          <div class="fnc-nav__bg m--navbg-dark"></div>
        </div>
        <div class="fnc-nav__controls">
          <button class="fnc-nav__control">
            Portpolio
            <span class="fnc-nav__control-progress"></span>
          </button>
          <button class="fnc-nav__control">
            Contact
            <span class="fnc-nav__control-progress"></span>
          </button>
        </div>
      </nav>
    </div>
    <!-- slider end -->
  </div>
</body>
</html>















