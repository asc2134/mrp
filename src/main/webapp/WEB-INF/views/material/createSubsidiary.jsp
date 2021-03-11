<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<link rel="stylesheet" href="/static/css/select2.css">
    <script src="/static/js/select2.js"></script>
    
<style>
.form-control{
width: 350px;
}
</style>



<script>

$( document ).ready( function() {
	$('#compNum').select2();
	$("#confirm").click(function() {

	var data = {};
	
	data["subsidiaryName"] = $("#subsidiaryName").val();
	data["subsidiaryType"] = $("#subsidiaryType").val();
	data["amount"] = $("#amount").val();
	data["price"] = $("#price").val();
	data["compNum"] = $("#compNum").val();
	
	$.ajax({
			type : "POST",
			url : "/registSubsidiary.do",
			data : JSON.stringify(data),
			dataType: "json",
			contentType:"application/json;charset=UTF-8",
			success : function(data){
				if(data){
					location.href="materialMain.do";
				}else{
					alert('등록이 실패하였습니다.');
				}
			},
			error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       
		    }
		});
	});
});
	
</script>

<section id="container" class="home-page">
	<div class="wrap-container clearfix">
		<div id="main-content">
			<section class="content-box box-1 box-style-1"><!--Start Box-->
				<div class="wrap-box">
					<div class="zerogrid">
						<div class="row">
							   <div style="margin: 0px auto; ">
								   <div class="form-group">
								  <label class="col-form-label col-form-label-lg" for="inputLarge">부자제명</label>
								  <input class="form-control " type="text" placeholder="부자제명" id="subsidiaryName" required="required">
								</div>
						   </div>
						</div>
						<div class="row">
							<div style="margin: 0px auto; ">
							   <div class="form-group">
								  <label class="col-form-label col-form-label-lg" for="inputLarge">타입</label>
								  <select class="form-control" id="subsidiaryType">
				                      <option>창</option>
				                      <option>굽</option>
				                      <option>중창</option>
				                      <option>월형</option>
				                      <option>선심</option>
				                      <option>까래</option>
				                      <option>쿠션</option>
				                      <option>갑보</option>
			                   	  </select>
								</div>
						   </div>
						</div>
						<div class="row">
				   		  <div style="margin: 0px auto; ">
							   <div class="form-group">
								  <label class="col-form-label col-form-label-lg" for="inputLarge">보유량</label>
								  <input class="form-control" type="number" placeholder="수량" id="amount" required="required">
								</div>
						   </div>
						</div>
						<div class="row">
				   		  <div style="margin: 0px auto; ">
							   <div class="form-group">
								  <label class="col-form-label col-form-label-lg" for="inputLarge">가격</label>
								  <input class="form-control" type="number" placeholder="가격" id="price" required="required">
								</div>
						   </div>
						</div>
						<div class="row">
				   		  <div style="margin: 0px auto; ">
							   <div class="form-group">
								  <label class="col-form-label col-form-label-lg" for="inputLarge">회사이름</label>
								</div>
								<select id="compNum" class="form-control" >
								    <c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    	<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
									</c:forEach>
								</select>
						   </div>
						</div>
						<div style="margin-top: 50px" class="row">
							<button style="margin: 0px auto" type="submit" id="confirm" class="btn btn-secondary my-2 my-sm-0">등록하기</button>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</section>