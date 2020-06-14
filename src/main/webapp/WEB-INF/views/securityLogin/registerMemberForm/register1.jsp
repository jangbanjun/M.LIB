<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- csrf토큰 -->
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!--font-->
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<link rel="stylesheet" href="css/header.css">
<script src="js/viewjs/header.js" type="text/javascript"></script>

<script type="text/javascript">
	/////////////////////이메일 수정 선택 가능 셀렉터 드롭박스////////////////////////////

	$(function() {

		$('#sbox').change(function() {
			$("#sbox option:selected").each(function() {
				if ($(this).val() == '1') {
					$("#em2").val('');
					$("#em2").attr("readonly", false);
				} else {
					$("#em2").val($(this).val());
					$("#em2").attr("readonly", true);
				}
			});
		});

	});
	//-------------------------------------------------------------------------
</script>
<style>
#mainWrapper {
	width: 1200px;
	margin: auto;
	display: flex;
}

.all_contents {
	width: 880px;
	padding: 20px 0;
	margin-left: 50px;
	word-break: keep-all;
}

* {
	margin: 0;
	padding: 0;
}

div {
	margin-top: 10px;
}

body {
	font-family: 'Noto Sans', '나눔고딕', 'Nanum Gothic', 'Helvetica',
		sans-serif;
	font-size: 20px;
}

h1, h2, h3, h4, h5, p, div, span, ul, li, ol, img, a, a:visited {
	margin: 0px;
	padding: 0px;
}

.terms {
	top: 0;
	left: 0;
	width: 880px;
	position: relative;
	margin: 0 auto;
}

.btnfield {
	margin-top: 80px;
	text-align: center;
}

#agree {
	border-radius: 0px;
	background: #46B7D9;
	border-color: #46B7D9;
}

.title {
	font-size: 36px;
	margin: 40px 0 20px;
}

#noagree {
	border-radius: 0px;
	background: rgb(19, 97, 121);
	border-color: #46B7D9;
}

#active {
	background: #46B7D9;
	border-color: #46B7D9;
}

ul li {
	float: left;
	/* 	margin-left: 6px; */
	/* 	margin-right: 6px; */
	/* padding-left : 10px; */
	border-radius: 10px;
}

.list-group {
	/* padding-left: 50px; */
	
}

.agree {
	margin-top: 10px;
}

.joinStep {
	overflow: hidden;
	margin-bottom: 40px;
	padding-left: 150px;
	/* 	height: 50px; */
}

.dot-list {
	padding: 20px;
}

.joinStep li {
	margin-left: 80px;
}

.checkmail {
	margin-top: 200px;
	position: relative;
}

.temp {
	margin-top: 100px;
	position: relative;
}

.wrap {
	width: 100%;
	margin: auto;
}

.contentcore {
	width: 880px;
}

#container {
	margin: 0;
	padding: 0;
	border: 0;
}
</style>
<body>
	<%@include file="../../header.jsp"%>
	<div id="mainWrapper">
		<%@include file="../../sideBar.jsp"%>
		<div class="all_contents">
			<%@include file="../../contentTitle.jsp"%>


			<div id="wrap" class="wrap">
				<div id="container" class="sub">
					<div class="contentGroup">
						<div class="terms">
							<div class="contentcore">
								
								<div class="joinStep">
									<ul class="list-group list-group-horizontal">
										<!-- 								<li class="list-group-item">가입확인</li> -->
										<li class="list-group-item active" id="active">본인확인</li>
										<li class="list-group-item">약관동의</li>
										<li class="list-group-item">정보입력</li>
									</ul>
								</div>
								<div>
									<div class="title">도서관 가입 안내</div>
									<ul class="dot-list">
										<li>홈페이지에서 회원가입을 하시면 준회원으로 등록됩니다.
											<ul clss="dash-list">
												<li>준회원은 문화행사 신청 및 조회, 열린소리함 등의 홈페이지 서비스를 이용하실 수 있습니다.</li>
											</ul>
										</li>
										<li>회원가입 후 도서관에서 회원증을 발급받으면 정회원으로서 다음 서비스를 이용하실 수 있습니다.
											<ul>
												<li>도서대출, 상호대차 신청, 희망도서 신청, 대출예약 등 정회원만을 위한 다양한 서비스를
													제공합니다.</li>
											</ul>
										</li>
									</ul>
								</div>

								<!-- <div class="checkmail" style="border: 4px inset  #46B7D9 "> 아래에 아이디로 주기. 보더 속성 변경때문에-->
								<div class="certifyBox">

									<div class="temp">
										<form action="auth.do" method="post">
											<h3>메일 인증</h3>
											<div class="fieldText">E-mail :</div>
											<div class="form-inline">
												<input type="text" name="em1" id="em1" size="10"class="form-control" value="${em1 }"> @ 
												<input type="text" name="em2" id="em2" size="10" value="${em2 }" class="form-control"> 
												<select name="sbox"	class="form-control" id="sbox">
													<option value="1">직접입력</option>
													<option value="naver.com">네이버</option>
													<option value="daum.com">다음</option>
													<option value="gmail.com">구글</option>
												</select> <input type="submit" value="인증코드요청" name="submit" /> 
												<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
												<div>${sendKey }</div>
											</div>
										</form>
									</div>
									<div class="code">
										<div class="fieldText">인증코드 :</div>
										<form action="join_injeung.do" method="post">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />											
											<input type="text" name="email_injeung" id="chCo" size="10" />										
											<div class="keyCh">${keych }</div>
											<div class="btnfield">
												<button type="submit" id="agree" class="btn btn-primary" name="submit">본인확인</button>
												<button type="button" id="noagree" class="btn btn-warning" onclick="location.href='../../jhta/'">취소</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../../footer.jsp"%>

</body>
</html>