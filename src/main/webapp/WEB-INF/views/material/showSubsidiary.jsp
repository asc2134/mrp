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
	$("#delete").click(function(){
		var data ={};
		data["subsidiaryNum"] = $("#subsidiaryNum").val();
		
		if(confirm("삭제하시겠습니까?")){
			 $.ajax({
					type : "POST",
					url : "/deleteSubsidiary.do",
					data : JSON.stringify(data),
					dataType: "json",
					contentType:"application/json;charset=UTF-8",
					success : function(data){
						if(data){
							window.location.replace('materialMain.do');
						}else{
							alert('등록이 실패하였습니다.');
						}
					},
					error:function(request,status,error){
				        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				       
				    }
				});
		
		
		}else{
			return false;
		}
		
	});
});
	
</script>

<section id="container" class="home-page">
	<div class="wrap-container clearfix">
		<div id="main-content">
			<section class="content-box box-1 box-style-1"><!--Start Box-->
				<div class="wrap-box">
					<div class="zerogrid">
						<form action="/goUpdate.do" method="post">
							<div class="row">
								   <div style="margin: 0px auto; ">
									   <div class="form-group">
									  <label class="col-form-label col-form-label-lg" for="inputLarge">자제명</label>
									  <input class="form-control " type="text" id="subsidiaryName" name="subsidiaryName" value="${subsidiary.subsidiaryname}" readonly="readonly">
									  <input class="form-control " type="hidden" id="subsidiaryNum" name="subsidiaryNum" value="${subsidiary.subsidiarynum}">
									  <input class="form-control " type="hidden" id="compNum" name="compNum" value="${subsidiary.compnum}">
									</div>
							   </div>
							</div>
							<div class="row">
								<div style="margin: 0px auto; ">
								   <div class="form-group">
									  <label class="col-form-label col-form-label-lg" for="inputLarge">타입</label>
									  <select class="form-control" id="subsidiaryType" name="subsidiaryType" readonly="readonly">
					                      <option value="${subsidiary.subsidiarytype}">${subsidiary.subsidiarytype}</option>
				                   	  </select>
									</div>
							   </div>
							</div>
							<div class="row">
					   		  <div style="margin: 0px auto; ">
								   <div class="form-group">
									  <label class="col-form-label col-form-label-lg" for="inputLarge">보유량</label>
									  <input class="form-control" type="number" placeholder="수량" id="amount" name="amount" value="${subsidiary.amount}"  readonly="readonly">
									  <input type="hidden" name="type" value="Subsidiary">
									</div>
							   </div>
							</div>
							<div class="row">
					   		  <div style="margin: 0px auto; ">
								   <div class="form-group">
									  <label class="col-form-label col-form-label-lg" for="inputLarge">가격</label>
									  <input class="form-control" type="number" placeholder="가격" name="price" id="price" value="${subsidiary.price}" readonly="readonly">
									</div>
							   </div>
							</div>
							<div class="row">
					   		  <div style="margin: 0px auto; ">
								   <div class="form-group">
									  <label class="col-form-label col-form-label-lg" for="inputLarge">회사이름</label>
									</div>
									<select id="compName" name="compName" class="form-control" readonly="readonly">
										<option value="${subsidiary.compname}">${subsidiary.compname}</option>
									</select>
							   </div>
							</div>
							<div style="margin-top: 50px" class="row">
								<div style="margin: 0px auto">
									<button type="button" id="delete" class="btn btn-secondary my-2 my-sm-0">삭제하기</button>
									<button type="submit" id="updatePage" class="btn btn-secondary my-2 my-sm-0">수정하기</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
	</div>
</section>