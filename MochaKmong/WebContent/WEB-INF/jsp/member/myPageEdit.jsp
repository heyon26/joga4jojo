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
	#userImage{
		cursor:pointer;
	}
</style>

<script>


	function uploadImage() { // 프로필 이미지 수정
		var url = "uploadImageForm.do";
		window.open(url, "이미지 수정", "width=500, height=450");
	}

	function insertImage() { // 프로필 이미지 삽입
		var url = "insertImageForm.do";
		window.open(url, "프로필 이미지 삽입", "width=500, height=450");
	}

	function updateAlert() { // 프로필 수정
		if (updateForm.userName.value != "") {
			confirm("이름을 수정하시겠습니까?");
			updateForm.action = "updateName.do";
			updateForm.submit();
		}if(updateForm.userTel.value != ""){
			confirm("전화번호를 수정하시겠습니까?");
			updateForm.action = "updateTel.do";
			updateForm.submit();
		}if(updateForm.userEmail.value != ""){
			confirm("이메일을 수정하시겠습니까?");
			updateForm.action = "updateEmail.do";
			updateForm.submit();
		}if(updateForm.userAddress.value != ""){
			confirm("주소를 수정하시겠습니까?");
			updateForm.action = "updateAddr.do";
			updateForm.submit();
		}
	}
	
	function deleteImage(){
		var msg = confirm("프로필 이미지를 삭제하시겠습니까?");
		if(msg){
			updateForm.action = "profileDelete.do";
			updateForm.submit();
		}
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
                    <a href="myPage.do" data-target="#profile" data-toggle="pill" class="nav-link"><i class="icon-user"></i> <span class="hidden-xs">신청한 클래스</span></a>
                </li>
                <li class="nav-item">
                    <a href="myPageClass.do" data-target="#messages" data-toggle="pill" class="nav-link"><i class="icon-envelope-open"></i> <span class="hidden-xs">찜한 클래스</span></a>
                </li>
                <li class="nav-item">
                    <a href="myPageEdit.do" data-target="#edit" data-toggle="pill" class="nav-link active show"><i class="icon-note"></i> <span class="hidden-xs">프로필 수정</span></a>
                </li>
            </ul>
            <div class="tab-content p-3">
                <div class="tab-pane" id="profile">
                    <h5 class="mb-3">User Profile</h5>
                    <div class="row">
                        <div class="col-md-6">
                            <h6>About</h6>
                            <p>
                                Web Designer, UI/UX Engineer
                            </p>
                            <h6>Hobbies</h6>
                            <p>
                                Indie music, skiing and hiking. I love the great outdoors.
                            </p>
                        </div>
                        <div class="col-md-6">
                            <h6>Recent badges</h6>
                            <a href="javascript:void();" class="badge badge-dark badge-pill">html5</a>
                            <a href="javascript:void();" class="badge badge-dark badge-pill">react</a>
                            <a href="javascript:void();" class="badge badge-dark badge-pill">codeply</a>
                            <a href="javascript:void();" class="badge badge-dark badge-pill">angularjs</a>
                            <a href="javascript:void();" class="badge badge-dark badge-pill">css3</a>
                            <a href="javascript:void();" class="badge badge-dark badge-pill">jquery</a>
                            <a href="javascript:void();" class="badge badge-dark badge-pill">bootstrap</a>
                            <a href="javascript:void();" class="badge badge-dark badge-pill">responsive-design</a>
                            <hr>
                            <span class="badge badge-primary"><i class="fa fa-user"></i> 900 Followers</span>
                            <span class="badge badge-success"><i class="fa fa-cog"></i> 43 Forks</span>
                            <span class="badge badge-danger"><i class="fa fa-eye"></i> 245 Views</span>
                        </div>
                        <div class="col-md-12">
                            <h5 class="mt-2 mb-3"><span class="fa fa-clock-o ion-clock float-right"></span> Recent Activity</h5>
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
                <div class="tab-pane" id="messages">
                    <div class="alert alert-info alert-dismissible" role="alert">
    			   <button type="button" class="close" data-dismiss="alert">×</button>
				    <div class="alert-icon">
					 <i class="icon-info"></i>
				    </div>
				    <div class="alert-message">
				      <span><strong>Info!</strong> Lorem Ipsum is simply dummy text.</span>
				    </div>
                  </div>
                    <table class="table table-hover table-striped">
                        <tbody>                                    
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">3 hrs ago</span> Here is your a link to the latest summary report from the..
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">Yesterday</span> There has been a request on your account since that was..
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">9/10</span> Porttitor vitae ultrices quis, dapibus id dolor. Morbi venenatis lacinia rhoncus. 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">9/4</span> Vestibulum tincidunt ullamcorper eros eget luctus. 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">9/4</span> Maxamillion ais the fix for tibulum tincidunt ullamcorper eros. 
                                </td>
                            </tr>
                        </tbody> 
                    </table>
                </div>
                <div class="tab-pane active show" id="edit">
                    <form name="updateForm">
                    	<div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">이름</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="userName" id="userName" value="${vo.userName }"
                                	onfocus="this.value=''" onblur="if(this.value=='')this.value=''">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">전화번호</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="userTel" value="${vo.userTel }"
                                	onfocus="this.value=''" onblur="if(this.value=='')this.value=''">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">이메일</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="email" name="userEmail" value="${vo.userEmail}"
                                	onfocus="this.value=''" onblur="if(this.value=='')this.value=''">
                            </div>
                        </div>
                        
                        <!-- 프로필 이미지 삽입 버튼 / 프로필 이미지가 없을 때 출력 -->
                        <c:if test="${empty ivo.image }">
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">프로필 이미지 삽입</label>
                            <div class="col-lg-9">
                                <input class="form-control" id="insertImg" name="insertImg" type="button" value="프로필 이미지 삽입(Click!)" onclick="insertImage()">
                            </div>
                        </div>
                        </c:if>
                        <!-- 프로필 이미지 삽입 버튼 / 프로필 이미지가 없을 때 출력 -->
                        
                        <!-- 프로필 이미지 수정 버튼 / 프로필 이미지가 있을 때 출력 -->
                        <c:if test="${not empty ivo.image }">
                        <!-- 함수 이름과 id,name 태그 이름이 동일하면 오류 발생. 주의할 것. -->
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">프로필 이미지 수정</label>
                            <div class="col-lg-9">
                                <input class="form-control" id="uploadImg" name="uploadImg" type="button" value="프로필 이미지 수정(Click!)" onclick="uploadImage()">
                            </div>
                        </div>
                        </c:if>
                        <!-- 프로필 이미지 수정 버튼 / 프로필 이미지가 있을 때 출력 -->
                        
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">주소</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="userAddress" value="${vo.userAddress }"
                                	onfocus="this.value=''" onblur="if(this.value=='')this.value=''">
                            </div>
                        </div>
                       
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
                                <input type="button" class="" onclick="updateAlert()" value="Save Changes">
                                <input type="reset" class="" value="Cancel">
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