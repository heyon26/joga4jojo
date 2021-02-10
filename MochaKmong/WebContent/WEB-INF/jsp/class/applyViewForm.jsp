<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>클래스 등록</title>

    <!-- Icons font CSS-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="assets/apply/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="assets/apply/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="assets/apply/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="assets/apply/css/main.css" rel="stylesheet" media="all">
    
 <style>
 *{font-family: 'Noto Sans KR', sans-serif;}
 </style>
</head>
	<jsp:include page="/WEB-INF/jsp/main/topmenu.jsp" />
<body>
    <div class="page-wrapper p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h4 class="title">클래스 등록 신청</h4>
                </div>
                <div class="card-body">
                    <form name="payFrm" id="payFrm" method="POST" action="payClass.do">
                    <input type="hidden" name="cCode" id="cCode" value="${classCode }">
                    <input type="hidden"name="tCode" id="tCode" value="${timeCode }">
                        <div class="form-row m-b-55">
                            <div class="name">신청클래스</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc" style="width:300px;">
                                            <input class="input--style-5" type="text" name="cName" id="cName" value="${className }" style="border:0px;" readonly>
                                            <label class="label--desc">클래스명</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc" style="width:130px;">
                                            <input type="text" name="sTime" id="sTime" value="${startTime }" style="border:0px;" readonly>
                                            <label class="label--desc">신청날짜</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">아이디</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="userId" id="userId" value="${id }" style="border:0px;" readonly>
                                </div>
                            </div>
                        </div>

                        <div class="form-row m-b-55">
                            <div class="name">결제정보</div>
                            <div class="value">
                                <div class="row row-refine">
                                    <div class="col-3">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="rNumber" id="rNumber" value="${registerNumber }" style="border:0px;" readonly>
                                            <label class="label--desc">신청 인원</label>
                                        </div>
                                    </div>
                                    <div class="col-9">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="tPrice" id="tPrice" value="${totalPrice }" style="border:0px;" readonly>
                                            <label class="label--desc">결제 금액</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <button class="button rounded primary-bg text-white w-100 btn_1 boxed-btn" type="submit" style="border-radius:25px;">결제하기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="assets/apply/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="assets/apply/vendor/datepicker/moment.min.js"></script>
    <script src="assets/apply/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="assets/apply/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->