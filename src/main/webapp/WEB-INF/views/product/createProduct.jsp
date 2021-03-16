<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/static/css/select2.css">
<link rel="stylesheet" href="/static/css/select2-bootstrap.css">
<script src="/static/js/select2.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.selCustom').select2();
	
	$("#confirm").click(function() {
		var productCost = new Object();
		var materialList = new Object();
		var leatherMaterial = new Object();
		var subsidiarMaterial = new Object();
		var expense = new Object();
		var outLeatherCnt = $('#materialList').children().children("[id^='outLeather']").length;
		var intLeatherCnt = $('#materialList').children().children("[id^='inLeather']").length;
		
		
		
		
		for(var i=1 ; i<= outLeatherCnt; i++){
			leatherMaterial['outLeather' + i]  = $("#outLeather" + i).val();
			leatherMaterial['outLeatherCode' + i] = $("#outLeatherCode" + i).val();
			leatherMaterial['outLeatherComp' + i] = $("#outLeatherComp" + i).val();
			leatherMaterial['outLeatherRequirement' + i] = $("#outLeatherRequirement" + i).val();
			leatherMaterial['outLeatherCost' + i] = $("#outLeatherCost" + i).val();
			leatherMaterial['outLeatherPrice' + i] = $("#outLeatherPrice" + i).val();
		}
		for(var i=1 ; i<= intLeatherCnt; i++){
			leatherMaterial['inLeather' + i]  = $("#inLeather" + i).val();
			leatherMaterial['inLeatherCode' + i] = $("#inLeatherCode" + i).val();
			leatherMaterial['inLeatherComp' + i] = $("#inLeatherComp" + i).val();
			leatherMaterial['inLeatherRequirement' + i] = $("#inLeatherRequirement" + i).val();
			leatherMaterial['inLeatherCost' + i] = $("#inLeatherCost" + i).val();
			leatherMaterial['inLeatherPrice' + i] = $("#inLeatherPrice" + i).val();
		}
		
		materialList.supplier = $("#supplier").val();
		materialList.designNum = $("#designNum").val();
		materialList.leather = $("#leather").val();
		materialList.gender = $("#gender").val();
		materialList.upload_file = $("#upload_file").val();
		materialList.costSum = $("#costSum").val();
		materialList.percentMargin = $("#percentMargin").val();
		materialList.margin = $("#margin").val();
		materialList.allSum = $("#allSum").val();
		
		subsidiarMaterial.soleCode = $("#soleCode").val();
		subsidiarMaterial.soleComp = $("#soleComp").val();
		subsidiarMaterial.solePrice = $("#solePrice").val();
		subsidiarMaterial.soleProCode = $("#soleProCode").val();
		subsidiarMaterial.soleProComp = $("#soleProComp").val();
		subsidiarMaterial.soleProPrice = $("#soleProPrice").val();
		subsidiarMaterial.heelCode = $("#heelCode").val();
		subsidiarMaterial.heelComp = $("#heelComp").val();
		subsidiarMaterial.heelPrice = $("#heelPrice").val();
		subsidiarMaterial.midSoleCode = $("#midSoleCode").val();
		subsidiarMaterial.midSoleComp = $("#midSoleComp").val();
		subsidiarMaterial.midSolePrice = $("#midSolePrice").val();
		subsidiarMaterial.counterCode = $("#counterCode").val();
		subsidiarMaterial.counterComp = $("#counterComp").val();
		subsidiarMaterial.counterPrice = $("#counterPrice").val();
		subsidiarMaterial.insoleCode = $("#insoleCode").val();
		subsidiarMaterial.insoleComp = $("#insoleComp").val();
		subsidiarMaterial.insolePrice = $("#insolePrice").val();
		subsidiarMaterial.sockLiningCode = $("#sockLiningCode").val();
		subsidiarMaterial.sockLiningComp = $("#sockLiningComp").val();
		subsidiarMaterial.sockLiningPrice = $("#sockLiningPrice").val();
		subsidiarMaterial.cushionCode = $("#cushionCode").val();
		subsidiarMaterial.cushionComp = $("#cushionComp").val();
		subsidiarMaterial.cushionPrice = $("#cushionPrice").val();
		subsidiarMaterial.sockLiningPrice = $("#sockLiningPrice").val();
		subsidiarMaterial.heelPadCode = $("#heelPadCode").val();
		subsidiarMaterial.heelPadComp = $("#heelPadComp").val();
		subsidiarMaterial.heelPadPrice = $("#heelPadPrice").val();
		subsidiarMaterial.otherPrice = $("#otherPrice").val();
		subsidiarMaterial.decoCode1 = $("#decoCode1").val();
		subsidiarMaterial.decoComp1 = $("#decoComp1").val();
		subsidiarMaterial.decoRequirement1 = $("#decoRequirement1").val();
		subsidiarMaterial.decoCost1 = $("#decoCost1").val();
		subsidiarMaterial.decoPrice1 = $("#decoPrice1").val();
		subsidiarMaterial.decoCode2 = $("#decoCode2").val();
		subsidiarMaterial.decoComp2 = $("#decoComp2").val();
		subsidiarMaterial.decoRequirement2 = $("#decoRequirement2").val();
		subsidiarMaterial.decoCost2 = $("#decoCost2").val();
		subsidiarMaterial.decoPrice2 = $("#decoPrice2").val();
		subsidiarMaterial.decoCode3 = $("#decoCode3").val();
		subsidiarMaterial.decoComp3 = $("#decoComp3").val();
		subsidiarMaterial.decoRequirement3 = $("#decoRequirement3").val();
		subsidiarMaterial.decoCost3 = $("#decoCost3").val();
		subsidiarMaterial.decoPrice3 = $("#decoPrice3").val();
		subsidiarMaterial.decoCode4 = $("#decoCode4").val();
		subsidiarMaterial.decoComp4 = $("#decoComp4").val();
		subsidiarMaterial.decoRequirement4 = $("#decoRequirement4").val();
		subsidiarMaterial.decoCost4 = $("#decoCost4").val();
		subsidiarMaterial.decoPrice4 = $("#decoPrice4").val();
		subsidiarMaterial.decoCode5 = $("#decoCode5").val();
		subsidiarMaterial.decoComp5 = $("#decoComp5").val();
		subsidiarMaterial.decoRequirement5 = $("#decoRequirement5").val();
		subsidiarMaterial.decoCost5 = $("#decoCost5").val();
		subsidiarMaterial.decoPrice5 = $("#decoPrice5").val();
		
		
		expense.upperEP = $("#upperEP").val();
		expense.shoesEP = $("#shoesEP").val();
		expense.EPSum = $("#EPSum").val();
		expense.administrativeExpense = $("#administrativeExpense").val();
		expense.factoryExpense = $("#factoryExpense").val();
		expense.expenseSum = $("#expenseSum").val();
		
		
		
		productCost.materialList = materialList;
		productCost.leatherMaterial = leatherMaterial;
		productCost.subsidiarMaterial = subsidiarMaterial;
		productCost.expense = expense;
		
		
		
		$.ajax({
				type : "POST",
				url : "/registProduct.do",
				data : JSON.stringify(productCost),
				dataType: "json",
				contentType:"application/json;charset=UTF-8",
				success : function(data){
					if(data){
						location.href="costingMain.do"
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


//원가 자동계산 
function autoCal(){
	var outLeatherCnt = $('#materialList').children().children("[id^='outLeather']").length;
	var inLeatherCnt = $('#materialList').children().children("[id^='inLeather']").length;
	var sum = 0;
	
	for(var i=1; i<=outLeatherCnt; i++){
		var temp = Number($("#outLeatherRequirement" + i).val() *  $("#outLeatherCost" + i).val());
		$("#outLeatherPrice" + i).val(temp.toFixed());
		sum = sum + temp
	}
	
	for(var i=1; i<=inLeatherCnt; i++){
		var temp = Number($("#inLeatherRequirement" + i).val() *  $("#inLeatherCost" + i).val());
		$("#inLeatherPrice" + i).val(temp.toFixed());
		sum = sum + temp
	}
	
	
	$('#leatherMaterialSum').val(sum.toFixed());
	
	//$('#leatherMaterialSum').val(Number($('#outLeatherSum1').val())  +  Number($('#outLeatherSum2').val()) + Number($('#outLeatherSum3').val()) + Number($('#inLeatherSum').val()));
	$('#subsidiarySum').val(Number($('#solePrice').val())  +  Number($('#soleProPrice').val()) + Number($('#heelPrice').val()) + Number($('#midSolePrice').val()) + Number($('#counterPrice').val()) + Number($('#insolePrice').val()) + Number($('#sockLiningPrice').val())+ Number($('#cushionPrice').val())+ Number($('#heelPadPrice').val())+ Number($('#otherPrice').val())+ Number($('#decoPrice1').val())+ Number($('#decoPrice2').val())+ Number($('#decoPrice3').val())+ Number($('#decoPrice4').val())+ Number($('#decoPrice5').val()));
	$('#EPSum').val(Number($('#upperEP ').val()) + Number($('#shoesEP').val()));
	$('#expenseSum').val(Number($('#EPSum').val())  +  Number($('#administrativeExpense ').val()) + Number($('#indirectEmploymentExpense ').val()) + Number($('#factoryExpense').val()));
	$('#costSum').val(Number($('#leatherMaterialSum').val()) + Number($('#subsidiarySum').val()) + Number($('#expenseSum').val()));
	$('#margin').val(Number($('#costSum').val()) * Number( '0.'+ $('#percentMargin').val()));
	$('#allSum').val(Number($('#costSum').val()) + Number($('#margin').val()));
}
//원자제 추가,삭제 rowspan 계산
function calLine(data){
	
	var line = $('#leatherMaterial').attr('rowspan');
	
	if(data == 'add'){
		line = Number(line) + 1 ;
	}else if(data == 'del'){
		line = Number(line) - 1 ;
	}
	$('#leatherMaterial').attr('rowspan',line);
}

//원자제 추가
function addLeather(data){
	calLine('add');
	var outLeatherCnt = 0;
	var intLeatherCnt = 0;
	var addNode;
	var outNode;
	var inNode;
	var cNode;
	var lastNodeID;
	var lList = new Array();
	var cList = new Array();
	
	//JSTL을 이용하여 가져온 데이터를 JSON형식으로 변경 후  array로 만든다 (형식이달라서 이런식으로 밖에 못함)
	//
	<c:forEach var="allLeatherList" items="${allLeatherList}">
		var json = new Object();
		json.leathernum = "${allLeatherList.leathernum}";
		json.compnum = "${allLeatherList.compnum}";
		json.leathername = "${allLeatherList.leathername}";
		json.amount = "${allLeatherList.amount}";
		json.price = "${allLeatherList.price}";
		json.leathertype = "${allLeatherList.leathertype}";
		lList.push(json);
	</c:forEach>
		
	<c:forEach var="allCompanyList" items="${allCompanyList}"> 
		var json = new Object();	
		json.compnum = "${allCompanyList.compnum}";
		json.address = "${allCompanyList.address}";
		json.faxnum = "${allCompanyList.faxnum}";
		json.compphone = "${allCompanyList.compphone}";
		json.compname =  "${allCompanyList.compname}";
		cList.push(json);
	</c:forEach>
	
	
	
	
	for(var i=0; i<lList.length; i++){
		if(lList[i].leathertype =="외피"){
			outNode += "<option value='"+ lList[i].leathernum + "'>" +lList[i].leathername + " </option>";					
		}else{
			inNode += "<option value='"+ lList[i].leathernum + "'>" +lList[i].leathername + " </option>";
		}
	}
	
	for(var i=0; i<cList.length;i++){
		cNode += "<option value='" + cList[i].compnum + "'> "+ cList[i].compname +" </option>";
	}
	
	if(data == 'out'){
		outLeatherCnt = $('#materialList').children().children("[id^='outLeather']").length;
		
		

		addNode = "<tr>";
		addNode += "<td id=	'outLeather" + Number(outLeatherCnt + 1 )  + "'>외피 "+ Number(outLeatherCnt + 1 ) + "</td>";
		addNode += "<td><select class='form-control selCustom' style='width: 100%;' id = 'outLeatherCode"+Number(outLeatherCnt + 1 )+"' ><option></option>"+outNode+"</select></td>";
		addNode += "<td><select class='form-control selCustom' style='width: 100%;' id = 'outLeatherComp"+Number(outLeatherCnt + 1 )+"' ><option></option>"+cNode+"</select></td>";
		addNode += "<td><input class='form-control form-control-sm' type='number' onkeyup='autoCal();' id='outLeatherRequirement"+Number(outLeatherCnt + 1 )+"'></td>";
		addNode += "<td><input class='form-control form-control-sm' type='number' onkeyup='autoCal();' id='outLeatherCost"+Number(outLeatherCnt + 1 )+"'></td>";
		addNode += "<td><input class='form-control form-control-sm' type='number' onkeyup='autoCal();' id='outLeatherPrice"+Number(outLeatherCnt + 1 )+"' readonly='readonly'></td>";
		addNode += "</tr>";
		
		lastNodeID = $('#materialList').children().children("[id^='outLeather']").eq(outLeatherCnt -1).attr('id');
		$('#' + lastNodeID).parent().after(addNode);
		
	}else if(data == 'in'){
		intLeatherCnt = $('#materialList').children().children("[id^='inLeather']").length;

		addNode = "<tr>";
		addNode += "<td id=	'inLeather" + Number(intLeatherCnt + 1 )  + "'>내피 "+ Number(intLeatherCnt + 1 ) + "</td>";
		addNode += "<td><select class='form-control selCustom' style='width: 100%;' id = 'inLeatherCode"+Number(intLeatherCnt + 1 )+"' ><option></option>"+inNode+"</select></td>";
		addNode += "<td><select class='form-control selCustom' style='width: 100%;' id = 'inLeatherComp"+Number(intLeatherCnt + 1 )+"' ><option></option>"+cNode+"</select></td>";
		addNode += "<td><input class='form-control form-control-sm' type='number' onkeyup='autoCal();' id='inLeatherRequirement"+ Number(intLeatherCnt + 1 ) + "'></td>";
		addNode += "<td><input class='form-control form-control-sm' type='number' onkeyup='autoCal();' id='inLeatherCost"+ Number(intLeatherCnt + 1 ) + "'></td>";
		addNode += "<td><input class='form-control form-control-sm' type='number' onkeyup='autoCal();' id='inLeatherPrice"+ Number(intLeatherCnt + 1 ) + "'  readonly = 'readonly'></td>";
		addNode += "</tr>";
		
		
		lastNodeID = $('#materialList').children().children("[id^='inLeather']").eq(intLeatherCnt -1).attr('id');
		$('#' + lastNodeID).parent().after(addNode);
		
	}
	$('.selCustom').select2({
	});
}

//원자제 삭제
function delLeather(data){
	var outLeatherCnt = $('#materialList').children().children("[id^='outLeather']").length;
	var intLeatherCnt = $('#materialList').children().children("[id^='inLeather']").length;
	var addNode;
	var lastNodeID;
	
	//외피 내피 1은 냄겨놔야됨 추후 업무프로세스 확인
	if(data == 'out' && outLeatherCnt > 1){
		calLine('del');
		outLeatherCnt = $('#materialList').children().children("[id^='outLeather']").length;
		lastNodeID = $('#materialList').children().children("[id^='outLeather']").eq(outLeatherCnt -1).attr('id');
		$('#' + lastNodeID).parent().remove();
		
	}else if(data == 'in' && intLeatherCnt > 1){
		calLine('del');
		intLeatherCnt = $('#materialList').children().children("[id^='inLeather']").length;
		lastNodeID = $('#materialList').children().children("[id^='inLeather']").eq(intLeatherCnt -1).attr('id');
		$('#' + lastNodeID).parent().remove();
		
	}else{
		alert('내피 외피는 최소 한가지 이상 입력해야 합니다.');
	}
	autoCal();	
}

//사진 미리보기
$(function() {
    $("#upload_file").on('change', function(){
    	readURL(this);
    });
    function readURL(input) {
        if (input.files && input.files[0]) {
        var reader = new FileReader(); 

        reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }
          reader.readAsDataURL(input.files[0]);
        }
    }
});

</script>
<style type="text/css">
.select2-selection__rendered {
    height: 31px !important;
    font-size: 14px !important;
}
.select2-container--default .select2-selection--single{
    height: 33px !important;
}
.select2-container--default .select2-selection--single .select2-selection__arrow{
    height: 34px !important;
}
</style>
<form>
<section id="container" class="home-page">
	<div class="wrap-container clearfix">
		<div id="main-content">
			<section class="content-box box-1 box-style-1"><!--Start Box-->
				<div class="wrap-box">
					<div class="zerogrid">
						<div class="row">
							<table class="table" style="width: 50%">
							  <tbody>
							    <tr>
							      <th scope="row">납품회사</th>
						   	      <td>
									<input class="form-control form-control-sm" type="text" placeholder="납품회사" id="supplier" required="required">
								  </td>
							    </tr>
							    <tr>
							      <th scope="row">디자인번호</th>
							      <td>
							      	<input class="form-control form-control-sm" type="text" placeholder="디자인번호" id="designNum" required="required">
							      </td>
							    </tr>
							    <tr>
							      <th scope="row">소재</th>
							      <td>
							      	<option></option>
							      	<select class="form-control selCustom" style="width: 100%;" >
							      		<option></option>
							      	</select>
			
							      </td>
							    </tr>
							    <tr>
							      <th scope="row">남/여</th>
							      <td>
							      	<span>남</span><input type="radio" name="gender" value="M" style="margin-right: 10px">
							      	<span>여</span><input type="radio" name="gender" value="F">
							      </td>
							    </tr>
							    <tr>
							      <td colspan="2">
								    <input type="file" class="form-control-file" id="upload_file" name="upload_file" aria-describedby="fileHelp" accept="image/*">
								    <small id="fileHelp" class="form-text text-muted">사진파일만 등록가능</small>
							      </td>
							    </tr>
							  </tbody>
							</table>
							<div style=" width: 300px; height:300px; margin-left:315px;">
								<img id="blah"  src="" style="height: 300px; width: 300px" />
							</div> 
							
							<div style=" width: 100%;">
								<button class="btn btn-outline-info" style="float: right;" onclick="delLeather('in')">내피제거</button>
								<button class="btn btn-outline-info adle" style="float: right; margin-right: 4px" onclick="addLeather('in')">내피추가</button>
								<button class="btn btn-outline-info adle" style="" onclick="addLeather('out')">외피추가</button>
								<button class="btn btn-outline-info" style="" onclick="delLeather('out')">외피제거</button>
							</div>
							<table class="table table-bordered" style="margin-top: 20px;">
							  <thead>
							    <tr>
							      <th scope="col">구분</th>
							      <th scope="col" colspan="2">품목</th>
							      <th scope="col">회사</th>
							      <th scope="col">소요량</th>
							      <th scope="col">단가</th>
							      <th scope="col">금액</th>
							    </tr>
							  </thead>
							  <tbody id="materialList">
							    <tr>
							      <th id="leatherMaterial" scope="row" rowspan="4">원자재</th>
							      <td id="outLeather1">외피 1</td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="outLeatherCode1" >
							      		<option></option>
							      		<c:forEach var="allLeatherList" items="${allLeatherList}">
							      			<c:if test="${allLeatherList.leathertype eq '외피'}"> 
								    			<option value="${allLeatherList.leathernum}">${allLeatherList.leathername}</option>
											</c:if>								    			
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="outLeatherComp1">
							      		<option></option>
							      		
										<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="outLeatherRequirement1"></td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="outLeatherCost1"></td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="outLeatherPrice1" readonly="readonly"></td>
							    </tr>
							    <tr>
							      <td id="outLeather2">외피 2</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="outLeatherCode2"></td>
							      <td><input class="form-control form-control-sm" type="text" id="outLeatherComp2"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="outLeatherCode2">
							      		<option></option>
							      		<c:forEach var="allLeatherList" items="${allLeatherList}"> 
								    		<c:if test="${allLeatherList.leathertype eq '외피'}"> 
								    			<option value="${allLeatherList.leathernum}">${allLeatherList.leathername}</option>
											</c:if>	
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="outLeatherComp2" >
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="outLeatherRequirement2"></td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="outLeatherCost2"></td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="outLeatherPrice2" readonly="readonly"></td>
							    </tr>
							    <tr>
							      <td id="outLeather3">외피 3</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="outLeatherCode3"></td>
							      <td><input class="form-control form-control-sm" type="text" id="outLeatherComp3"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="outLeatherCode3">
							      		<option></option>
							      		<c:forEach var="allLeatherList" items="${allLeatherList}"> 
								    		<c:if test="${allLeatherList.leathertype eq '외피'}"> 
								    			<option value="${allLeatherList.leathernum}">${allLeatherList.leathername}</option>
											</c:if>	
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="outLeatherComp3">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="outLeatherRequirement3"></td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="outLeatherCost3"></td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="outLeatherPrice3" readonly="readonly"></td>
							    </tr>
							    <tr>
							      <td id="inLeather1">내피</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="inLeatherCode1"></td>
							      <td><input class="form-control form-control-sm" type="text" id="inLeatherComp1"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="inLeatherCode1">
							      		<option></option>
							      		<c:forEach var="allLeatherList" items="${allLeatherList}"> 
								    		<c:if test="${allLeatherList.leathertype eq '내피'}"> 
								    			<option value="${allLeatherList.leathernum}">${allLeatherList.leathername}</option>
											</c:if>	
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="inLeatherComp1">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="inLeatherRequirement1"></td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="inLeatherCost1"></td>
							      <td><input class="form-control form-control-sm" onkeyup="autoCal();" type="number" id="inLeatherPrice1" readonly="readonly"></td>
							    </tr>
							    <tr>
							      <td><1></td>
							      <td scope="row" colspan="5">원자재 계</td>
							      <td scope="row" ><input class="form-control form-control-sm" type="text" id="leatherMaterialSum" readonly="readonly" value="0"></td>
							    </tr>
							    <tr>
							      <td scope="row" rowspan="15">부자재</td>
							      <td>창</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="soleCode"></td>
							      <td><input class="form-control form-control-sm" type="text" id="soleComp"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="soleCode">
							      		<option></option>
							      		<c:forEach var="allSubsidiaryList" items="${allSubsidiaryList}"> 
								    		<c:if test="${allSubsidiaryList.subsidiarytype eq '창'}">
											    <option value="${allSubsidiaryList.subsidiarynum}">${allSubsidiaryList.subsidiaryname}</option>
											</c:if>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="soleComp">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="solePrice"></td>
							    </tr>
							    <tr>
							      <td>창가공</td>
							      <td><input class="form-control form-control-sm" type="text" id="soleProCode"></td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="soleProComp"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="soleProComp">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="soleProPrice"></td>
							    </tr>
							    <tr>
							      <td>굽</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="heelCode"></td>
							      <td><input class="form-control form-control-sm" type="text" id="heelComp"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="heelCode">
							      		<option></option>
							      		<c:forEach var="allSubsidiaryList" items="${allSubsidiaryList}"> 
								    		<c:if test="${allSubsidiaryList.subsidiarytype eq '굽'}">
											    <option value="${allSubsidiaryList.subsidiarynum}">${allSubsidiaryList.subsidiaryname}</option>
											</c:if>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="heelComp">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="heelPrice"></td>
							    </tr>
							    <tr>
							      <td>중창</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="midSoleCode"></td>
							      <td><input class="form-control form-control-sm" type="text" id="midSoleComp"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="midSoleCode">
							      		<option></option>
							      		<c:forEach var="allSubsidiaryList" items="${allSubsidiaryList}"> 
								    		<c:if test="${allSubsidiaryList.subsidiarytype eq '중창'}">
											    <option value="${allSubsidiaryList.subsidiarynum}">${allSubsidiaryList.subsidiaryname}</option>
											</c:if>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="midSoleComp" >
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="midSolePrice"></td>
							    </tr>
							    <tr>
							      <td>월형</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="counterCode"></td>
							      <td><input class="form-control form-control-sm" type="text" id="counterComp"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="counterCode">
							      		<option></option>
							      		<c:forEach var="allSubsidiaryList" items="${allSubsidiaryList}"> 
								    		<c:if test="${allSubsidiaryList.subsidiarytype eq '월형'}">
											    <option value="${allSubsidiaryList.subsidiarynum}">${allSubsidiaryList.subsidiaryname}</option>
											</c:if>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="counterComp">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="counterPrice"></td>
							    </tr>
							    <tr>
							      <td>선심</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="insoleCode"></td>
							      <td><input class="form-control form-control-sm" type="text" id="insoleComp"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="insoleCode">
							      		<option></option>
							      		<c:forEach var="allSubsidiaryList" items="${allSubsidiaryList}"> 
								    		<c:if test="${allSubsidiaryList.subsidiarytype eq '선심'}">
											    <option value="${allSubsidiaryList.subsidiarynum}">${allSubsidiaryList.subsidiaryname}</option>
											</c:if>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="insoleComp">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="insolePrice"></td>
							    </tr>
							    <tr>
							      <td>까래</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="sockLiningCode"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sockLiningComp"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="sockLiningCode">
							      		<option></option>
							      		<c:forEach var="allSubsidiaryList" items="${allSubsidiaryList}"> 
								    		<c:if test="${allSubsidiaryList.subsidiarytype eq '까래'}">
											    <option value="${allSubsidiaryList.subsidiarynum}">${allSubsidiaryList.subsidiaryname}</option>
											</c:if>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="sockLiningComp" >
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="sockLiningPrice"></td>
							    </tr>
							    <tr>
							      <td>쿠션</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="cushionCode"></td>
							      <td><input class="form-control form-control-sm" type="text" id="cushionComp"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="cushionCode">
							      		<option></option>
							      		<c:forEach var="allSubsidiaryList" items="${allSubsidiaryList}"> 
								    		<c:if test="${allSubsidiaryList.subsidiarytype eq '쿠션'}">
											    <option value="${allSubsidiaryList.subsidiarynum}">${allSubsidiaryList.subsidiaryname}</option>
											</c:if>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="cushionComp">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="cushionPrice"></td>
							    </tr>
							     <tr>
							      <td>갑보</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="heelPadCode"></td>
							      <td><input class="form-control form-control-sm" type="text" id="heelPadComp"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="heelPadCode">
							      		<option></option>
							      		<c:forEach var="allSubsidiaryList" items="${allSubsidiaryList}"> 
								    		<c:if test="${allSubsidiaryList.subsidiarytype eq '갑보'}">
											    <option value="${allSubsidiaryList.subsidiarynum}">${allSubsidiaryList.subsidiaryname}</option>
											</c:if>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="heelPadComp">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="heelPadPrice"></td>
							    </tr>
							    <tr>
							      <td>기타소모재</td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" >
							      		<option></option>
										<c:forEach var="allMaterialOtherList" items="${allMaterialOtherList}"> 
								    		<option value="${allMaterialOtherList.materialothernum}">${allMaterialOtherList.materialothername}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" >
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="otherPrice"></td>
							    </tr>
							    <tr>
							      <td>장식</td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="decoCode1"></td>
							      <td><input class="form-control form-control-sm" type="text" id="decoComp1"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="decoCode1">
							      		<option></option>
							      		<c:forEach var="allAccessoryList" items="${allAccessoryList}"> 
								    		<option value="${allAccessoryList.accessorynum}">${allAccessoryList.accessoryname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="decoComp1">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td><input class="form-control form-control-sm" type="number" id="decoRequirement1"></td>
							      <td><input class="form-control form-control-sm" type="number" id="decoCost1"></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="decoPrice1"></td>
							    </tr>
							    <tr>
							      <td></td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="decoCode2"></td>
							      <td><input class="form-control form-control-sm" type="text" id="decoComp2"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" >
							      		<option></option>
							      		<c:forEach var="allAccessoryList" items="${allAccessoryList}"> 
								    		<option value="${allAccessoryList.accessorynum}">${allAccessoryList.accessoryname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" >
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td><input class="form-control form-control-sm" type="number" id="decoRequirement2"></td>
							      <td><input class="form-control form-control-sm" type="number" id="decoCost2"></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="decoPrice2"></td>
							    </tr>
							    <tr>
							      <td></td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="decoCode3"></td>
							      <td><input class="form-control form-control-sm" type="text" id="decoComp3"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="decoCode3">
							      		<option></option>
							      		<c:forEach var="allAccessoryList" items="${allAccessoryList}"> 
								    		<option value="${allAccessoryList.accessorynum}">${allAccessoryList.accessoryname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="decoComp3">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td><input class="form-control form-control-sm" type="number" id="decoRequirement3"></td>
							      <td><input class="form-control form-control-sm" type="number" id="decoCost3"></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="decoPrice3"></td>
							    </tr>
							    <tr>
							      <td></td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="decoCode4"></td>
							      <td><input class="form-control form-control-sm" type="text" id="decoComp4"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="decoCode4">
							      		<option></option>
							      		<c:forEach var="allAccessoryList" items="${allAccessoryList}"> 
								    		<option value="${allAccessoryList.accessorynum}">${allAccessoryList.accessoryname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="decoComp4">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td><input class="form-control form-control-sm" type="number" id="decoRequirement4"></td>
							      <td><input class="form-control form-control-sm" type="number" id="decoCost4"></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="decoPrice4"></td>
							    </tr>
							    <tr>
							      <td></td>
							      <!-- <td><input class="form-control form-control-sm" type="text" id="decoCode5"></td>
							      <td><input class="form-control form-control-sm" type="text" id="decoComp5"></td> -->
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="decoCode5">
							      		<option></option>
							      		<c:forEach var="allAccessoryList" items="${allAccessoryList}"> 
								    		<option value="${allAccessoryList.accessorynum}">${allAccessoryList.accessoryname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td>
							      	<select class="form-control selCustom" style="width: 100%;" id="decoComp5">
							      		<option></option>
							      		<c:forEach var="allCompanyList" items="${allCompanyList}"> 
								    		<option value="${allCompanyList.compnum}">${allCompanyList.compname}</option>
										</c:forEach>
							      	</select>
							      </td>
							      <td><input class="form-control form-control-sm" type="number" id="decoRequirement5"></td>
							      <td><input class="form-control form-control-sm" type="number" id="decoCost5"></td>
							      <td><input class="form-control form-control-sm" type="number" onkeyup="autoCal();" id="decoPrice5"></td>
							    </tr>
							    <tr>
							      <td><2></td>
							      <td scope="row" colspan="5">부자재 계</td>
							      <td scope="row" ><input class="form-control form-control-sm" type="text" id="subsidiarySum" readonly="readonly" value="0"></td>
							    </tr>
							    <tr>
							      <td colspan="4"></td>
							      <td>제갑</td>
							      <td>저부</td>
							      <td>계</td>
							    </tr>
							    <tr>
							      <td rowspan="4">인건비<br />관리비</td>
							      <td colspan="3">직접 인건비</td>
							      <td><input class="form-control form-control-sm" type="number" id="upperEP" required="required" onkeyup="autoCal();" value="0"></td>
							      <td><input class="form-control form-control-sm" type="number" id="shoesEP" required="required" onkeyup="autoCal();" value="0"></td>
							      <td><input class="form-control form-control-sm" type="number" id="EPSum" readonly="readonly" onkeyup="autoCal();" value="0"></td>
							    </tr>
							    <tr>
							      <td colspan="3">일반 관리비</td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="administrativeExpense" required="required" value="0" onkeyup="autoCal();"></td>
							    </tr>
							    <tr>
							      <td colspan="3">간접 인건비</td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="indirectEmploymentExpense" required="required" value="0" onkeyup="autoCal();"></td>
							    </tr>
							    <tr>
							      <td colspan="3">제조경비</td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="factoryExpense" required="required" value="0" onkeyup="autoCal();"></td>
							    </tr>
							    <tr>
							      <td><3></td>
							      <td colspan="2">인권비,관리비 계</td>
							      <td></td> 
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="expenseSum" readonly="readonly" value="0"></td>
							    </tr>
							    <tr>
							      <td><4></td>
							      <td colspan="2">생산원가</td>
							      <td><1> + <2> + <3> </td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="costSum" readonly="readonly" value="0"></td>
							    </tr>
							    <tr>
							      <td><5></td>
							      <td colspan="2">마진</td>
							      <td><input style="display: inline-block; width: 50%" class="form-control form-control-sm" type="number" id="percentMargin" required="required" onkeyup="autoCal();" > %</td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="margin" readonly="readonly" value="0"></td>
							    </tr>
							   	<tr>
							   		<td colspan="4" style="text-align: center;">총계</td>
							   		<td></td>
							   		<td></td>
							   		<td><input class="form-control form-control-sm" type="number" id="allSum" readonly="readonly" value="0"></td>
							   	</tr>
							  </tbody>
							</table>
							<button style="margin: 0px auto" type="submit" id="confirm" class="btn btn-secondary my-2 my-sm-0">등록하기</button>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</section>
</form>