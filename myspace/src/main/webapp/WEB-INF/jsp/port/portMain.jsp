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
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/portpolio/slick.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/portpolio/slick-theme.css"/>"/>
<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/portpolio/port.css"/>"/>

<script src="<c:url value="/resources/js/portpolio/slick.js" />"></script>
<script src="<c:url value="/resources/js/portpolio/slick.min.js" />"></script>
<script src="<c:url value="/resources/js/portpolio/lettering.min.js" />"></script>
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
  <section class="sec secSlide">
    <div class="slideLfBox">
    	<span class="sec2Tit">project</span>
    	<span class="sec2Tit2">list</span>
    </div>
    <div class="slideBox" data-aos="fade-up">
        <div class="slider-item">
          <div class="slideDim"></div>
          <div class="prjNum">01</div>  
          <div class="img-box">
            <img src="<c:url value="/resources/img/portpolio/pgj6.png" />" alt="690x386">
          </div>
          <div class="prjBox">
            <div class="prjDate prjDate2">2022.04 ~ 2022.07</div>
            <div class="prjTit">한국투자증권 / 토스 연계 발행어음</div>
              <a href="" target="_blank">
                  <div class="prjView">More View</div>
              </a>
          </div>
        </div>
        <div class="slider-item">  
            <div class="slideDim"></div>
          <div class="prjNum">02</div>  
          <div class="img-box">
            <img src="<c:url value="/resources/img/portpolio/pgj5.png" />" alt="690x386">
          </div>
          <div class="prjBox">
            <div class="prjDate prjDate2">2022.03.22 ~ 2022.09.8</div>
            <div class="prjTit">한국투자증권 홈페이지 리뉴얼</div>
              <a href="" target="_blank">
                  <div class="prjView">More View</div>
              </a>
          </div>
        </div>
        <div class="slider-item">
            <div class="slideDim"></div>
          <div class="prjNum">03</div>  
          <div class="img-box">
            <img src="<c:url value="/resources/img/portpolio/pgj4.png" />" alt="690x386">
          </div>
          <div class="prjBox">
            <div class="prjDate prjDate2">2021.06.15~ 2022.01.11</div>
            <div class="prjTit">대신증권 마이데이터 시스템 구축</div>
              <a href="" target="_blank">
                  <div class="prjView">More View</div>
              </a>
          </div>
        </div>
        <div class="slider-item">
            <div class="slideDim"></div>
          <div class="prjNum">04</div>  
          <div class="img-box">
            <img src="<c:url value="/resources/img/portpolio/pgj3.png" />" alt="690x386">
          </div>
          <div class="prjBox">
            <div class="prjDate prjDate3">2021.1.11 ~ 2021.6.14</div>
            <div class="prjTit">한화투자증권 WEB(API)용 비대면 계좌개설</div>
              <a href="" target="_blank">
                  <div class="prjView">More View</div>
              </a>
          </div>
        </div>
        <div class="slider-item">
            <div class="slideDim"></div>
          <div class="prjNum">05</div>  
          <div class="img-box">
            <img src="<c:url value="/resources/img/portpolio/pgj2.png" />" alt="690x386">
          </div>
          <div class="prjBox">
            <div class="prjDate prjDate1">2021.10.26 ~ 2021.01.10</div>
            <div class="prjTit">투자심의사이트 고도화</div>
              <a href="" target="_blank">
                  <div class="prjView">More View</div>
              </a>
          </div>
        </div>
        <div class="slider-item">
            <div class="slideDim"></div>
          <div class="prjNum">06</div>  
          <div class="img-box">
            <img src="<c:url value="/resources/img/portpolio/pgj1.png" />" alt="690x386">
          </div>
          <div class="prjBox">
            <div class="prjDate prjDate1">2021.6.8 ~ 2021.8.13</div>
            <div class="prjTit">하나원큐플러스</div>
              <a href="" target="_blank">
                  <div class="prjView">More View</div>
              </a>
          </div>
        </div>
    </div>
  </section>
  <section class="sec secContact">
	  <div class="maileBox">
		  <div class="maileBoxTit">
		  	<span class="contactTit">CONTACT US</span>
		  </div>	
			<!-- START HERE -->
			  <form id="portMailForm" class="gform pure-form pure-form-stacked" method="POST" data-email="scw3999@gmail.com"
			  action="https://script.google.com/macros/s/AKfycbwIXxkdD_z03dGE_PXuZzeDwyRmggf69e-tGeB1J3uPd4FbRIPdlPdxtaJww5mEzq8geg/exec">
			    <!-- change the form action to your script url -->
			
			   <div class="form-elements">
			    <fieldset class="pure-group">
			    	<label for="name">Name </label>
			        <input id="name" name="name" placeholder="Name" />
			    </fieldset>
				<fieldset class="pure-group">
			        <label for="email">Email</label>
			        <input id="email" name="email" type="email" value="" required placeholder="your.name@email.com"/>
			     </fieldset>
			     <fieldset class="pure-group madieField">
			        <label for="message">Message </label>
			        <textarea id="message" name="message" rows="10"
			        placeholder="message"></textarea>
			     </fieldset>
			      			
			      <button class="button-success pure-button button-xlarge">
			        <i class="fa fa-paper-plane"></i>&nbsp;Send</button>
			    </div>
			  </form>
			
			  <!-- Submit the Form to Google Using "AJAX" -->
			  <script data-cfasync="false" src="<c:url value="/resources/js/portpolio/form-submission-handler.js" />"></script>
	  
	  </div>
  </section>
</body>
</html>















