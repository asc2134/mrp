<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
.form-control{
width: 350px;

}


</style>


<script>

$( document ).ready( function() {

	$("#delete").click(function(){
		var data ={};
		data["compNum"] = $("#compNum").val();
		
		if(confirm("삭제하시겠습니까?")){
			 $.ajax({
					type : "POST",
					url : "/deleteCompany.do",
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
									  <label class="col-form-label col-form-label-lg" for="inputLarge">회사명</label>
									  <input class="form-control " type="text" name="compName" readonly="readonly" value="${company.compname}">
									  <input class="form-control " type="hidden" id="compNum" name="compNum" value="${company.compnum}">
									  
									</div>
							   </div>
							</div>
							<div class="row">
								<div style="margin: 0px auto; ">
								   <div class="form-group">
									  <label class="col-form-label col-form-label-lg" for="inputLarge">회사주소</label>
									  <input class="form-control " type="text" name="address" readonly="readonly" value="${company.address}">
									</div>
							   </div>
							</div>
							<div class="row">
					   		  <div style="margin: 0px auto; ">
								   <div class="form-group">
									  <label class="col-form-label col-form-label-lg" for="inputLarge">회사번호</label>
									  <input class="form-control" type="tel"  name="compPhone" readonly="readonly" value="${company.compphone}">
									</div>
							   </div>
							</div>
							<div class="row">
					   		  <div style="margin: 0px auto; ">
								   <div class="form-group">
									  <label class="col-form-label col-form-label-lg" for="inputLarge">회사팩스번호</label>
									  <input class="form-control " type="tel" name="faxNum" readonly="readonly" value="${company.faxnum}">
									  <input type="hidden" name="type" value="Company">
									</div>
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