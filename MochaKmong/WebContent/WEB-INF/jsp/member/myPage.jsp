<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="assets/css/mypage.css">

 
<title>수강생 마이페이지</title>

<style>

.center {
  text-align: center;
  padding-left: 60px;
}

#pointer {
	cursor: pointer;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>

<script>
	function goPage(page) {
		location.href = '${pageContext.request.contextPath}/paging.do?pageNo='+ page;
	}
</script>

</head>
<jsp:include page="../main/topmenu.jsp" />
<body>

<div class="container">
<div class="row">

<!-- myPageInfo 삽입 -->
<jsp:include page="myPageInfo.jsp" />
<!-- myPageInfo 삽입 -->        
        
        <div class="col-lg-8">
           <div class="card z-depth-3">
            <div class="card-body">
            
           <ul class="navs nav-pills nav-pills-primary nav-justified">
                <li class="nav-item">
                    <a href="myPage.do" data-target="#profile" data-toggle="pill" class="nav-link active show"><i class="icon-user"></i> <span class="hidden-xs">수강생</span></a>
                </li>
                <li class="nav-item">
                    <a href="expertPage.do" data-target="#messages" data-toggle="pill" class="nav-link"><i class="icon-envelope-open"></i> <span class="hidden-xs">강사</span></a>
                </li>
            </ul> 
            
            <ul class="navs nav-pills nav-pills-primary nav-justified">
                <li class="nav-item">
                    <a href="myPage.do" data-target="#profile" data-toggle="pill" class="nav-link active show"><i class="icon-user"></i> <span class="hidden-xs">신청한 클래스</span></a>
                </li>
                <li class="nav-item">
                    <a href="myPageClass.do" data-target="#messages" data-toggle="pill" class="nav-link"><i class="icon-envelope-open"></i> <span class="hidden-xs">찜한 클래스</span></a>
                </li>
                <li class="nav-item">
                    <a href="myPageEdit.do" data-target="#edit" data-toggle="pill" class="nav-link"><i class="icon-note"></i> <span class="hidden-xs">프로필 수정</span></a>
                </li>
            </ul>
            <div class="tab-content p-3">
                <div class="tab-pane" id="profile">
                    <h5 class="mb-3">회원정보</h5>
                    <div class="row">
                        <div class="col-md-6">
                            <h6>가입일</h6>
                            <p>
                                - 가입일 -
                            </p>
                        </div>
                        <div class="col-md-12">
                            <h5 class="mt-2 mb-3"><span class="fa fa-clock-o ion-clock float-right"></span>신청한 클래스</h5>
                            <table class="table table-hover table-striped">
                                <tbody>                                    
                                    <tr>
                                        <td>
                                            <strong>Abby</strong> joined ACME Project Team in <strong>`Collaboration`</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Gary</strong> deleted My Board1 in <strong>`Discussions`</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Kensington</strong> deleted MyBoard3 in <strong>`Discussions`</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>John</strong> deleted My Board1 in <strong>`Discussions`</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Skell</strong> deleted his post Look at Why this is.. in <strong>`Discussions`</strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--/row-->
                </div>
                <div class="tab-pane active show" id="messages">
                    <div class="alert alert-info alert-dismissible" role="alert" >
				    <div class="alert-icon">
					 <i class="icon-info"></i>
				    </div>
				    <div class="alert-message">
				      <span><strong>신청한 클래스 목록</strong></span>
				    </div>
                  </div>
                  
                  <!-- myPage.do 호출 -->
                  <%-- <c:forEach var="cvo" items="${list }">
                    <table class="table table-hover table-striped">
                        <tbody> 
                        <!-- 신청한 클래스 출력 -->
                            <tr id="pointer" onclick="location.href='insertFavClass.do?classCode=${cvo.classCode}'">
                                <td>
                                   <span class="float-right font-weight-bold" name="categoryA">${cvo.cateGoryA }</span>
                                   <span name="className">${cvo.className }</span>
                                </td>
                            </tr>
                        
                        <!-- 신청한 클래스 출력 -->
                        </tbody> 
                    </table>
                    </c:forEach> --%>
                     <!-- myPage.do 호출 -->
                     
                    <!-- paging.do 호출 -->
                    <c:forEach var="vo" items="${list }">
                    <table class="table table-hover table-striped">
                        <tbody> 
                        <!-- 신청한 클래스 출력 -->
                            <tr id="pointer" onclick="location.href='insertFavClass.do?classCode=${vo.classCode}'">
                                <td>
                                   <span class="float-right font-weight-bold" name="categoryA">${vo.cateGoryA }</span>
                                   <span name="className">${vo.className }</span>
                                </td>
                            </tr>
                        
                        <!-- 신청한 클래스 출력 -->
                        </tbody> 
                    </table>
                    </c:forEach>
                    <jsp:include page="../main/paging.jsp" />
                    <!-- paging.do 호출 -->
                    
                </div>
                <div class="tab-pane" id="edit">
                    <form>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">First name</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="Mark">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Last name</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="Jhonsan">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Email</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="email" value="mark@example.com">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Change profile</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="file">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Website</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="url" value="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Address</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="" placeholder="Street">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-6">
                                <input class="form-control" type="text" value="" placeholder="City">
                            </div>
                            <div class="col-lg-3">
                                <input class="form-control" type="text" value="" placeholder="State">
                            </div>
                        </div>
                       
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Username</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="jhonsanmark">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Password</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="password" value="11111122333">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Confirm password</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="password" value="11111122333">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
                                <input type="reset" class="btn btn-secondary" value="Cancel">
                                <input type="button" class="btn btn-primary" value="Save Changes">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
      </div>
      </div>
        
    </div>
</div>
</body>
</html>