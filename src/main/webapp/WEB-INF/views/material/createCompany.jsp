<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
.form-control{
width: 350px;
}


</style>


<script>

$( document ).ready( function() {
	
	
	$("#confirm").click(function() {

	var data = {};
	var checkNum = [0,1,2,3];
	data["compName"] = $("#compName").val();
	data["address"] = $("#address").val();
	data["compPhone"] = $("#compPhone").val();
	data["faxNum"] = $("#faxNum").val();
	
	var result = validation(data, checkNum);
	if(result){
		 $.ajax({
				type : "POST",
				url : "/registCompany.do",
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
						<div class="row">
							   <div style="margin: 0px auto; ">
								   <div class="form-group">
								  <label class="col-form-label col-form-label-lg" for="inputLarge">회사명</label>
								  <input class="form-control " type="text" id="compName" required="required">
								</div>
						   </div>
						</div>
						<div class="row">
							<div style="margin: 0px auto; ">
							   <div class="form-group">
								  <label class="col-form-label col-form-label-lg" for="inputLarge">회사주소</label>
								  <input class="form-control " type="text" id="address" required="required">
								</div>
						   </div>
						</div>
						<div class="row">
				   		  <div style="margin: 0px auto; ">
							   <div class="form-group">
								  <label class="col-form-label col-form-label-lg" for="inputLarge">회사번호</label>
								  <input class="form-control" type="tel" placeholder="02-xxx-xxxx" id="compPhone" required="required">
								</div>
						   </div>
						</div>
						<div class="row">
				   		  <div style="margin: 0px auto; ">
							   <div class="form-group">
								  <label class="col-form-label col-form-label-lg" for="inputLarge">회사팩스번호</label>
								  <input class="form-control " type="tel" placeholder="xx-xxx-xxxx" id="faxNum" required="required">
								</div>
						   </div>
						</div>
						<div style="margin-top: 50px" class="row">
							<div style="margin: 0px auto">
								<button  onclick="historyBack()" type="submit" id="back" class="btn btn-secondary my-2 my-sm-0">돌아가기</button>
								<button  type="button" id="confirm" class="btn btn-secondary my-2 my-sm-0">등록하기</button>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</section>