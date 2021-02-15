<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.3.1.min.js" type="application/javascript" ></script>
</head>
	<jsp:include page="/WEB-INF/jsp/main/topmenu.jsp" />
<body>
<script>
		BootPay.request({
			price: '${tPrice}', //실제 결제되는 가격
			application_id: "60291bd85b2948002751fd63",
			name: '${cName}', //결제창에서 보여질 이름
			pg: 'danal',
			method: 'card', //결제수단, 입력하지 않으면 결제수단 선택부터 화면이 시작합니다.
			show_agree_window: 0, // 부트페이 정보 동의 창 보이기 여부
			order_id: 'mkmong', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
		}).error(function (data) {
			//결제 진행시 에러가 발생하면 수행됩니다.
			console.log(data);
		}).cancel(function (data) {
			//결제가 취소되면 수행됩니다.
			alert('결제 취소.');
			window.close();
			location.href="classViewForm.do?classCode="+${cCode };				
			console.log(data);
		}).close(function (data) {
		    // 결제창이 닫힐때 수행됩니다. (성공,실패,취소에 상관없이 모두 수행됨)
		    console.log(data);
		}).done(function (data) {
			//결제가 정상적으로 완료되면 수행됩니다
			payFrm.submit();			
			alert('결제완료!');
			window.close();
			console.log(data);
		});
</script>
<form action="payResultInsert.do" method="post" name="payFrm" id="payFrm">
	<input type="hidden" name="totalPrice" id="totalPrice" value="${tPrice }">
	<input type="hidden" name="classCode" id="classCode" value="${cCode }">
	<input type="hidden" name="registerNumber" id="registerNumber" value="${rNumber }">
	<input type="hidden" name="startTime" id="startTime" value="${sTime }">
</form>
</body>
</html>