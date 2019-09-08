<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">

$(document).ready(function(){
	
});


function autoCal(){


	//Number($('#').val())
	  
	$('#EPSum').val(Number($('#upperEP ').val()) + Number($('#shoesEP').val()));
	$('#expenseSum').val(Number($('#EPSum').val())  +  Number($('#administrativeExpense ').val()) + Number($('#indirectEmploymentExpense ').val()) + Number($('#factoryExpense').val()));
	$('#costSum').val(Number($('#leatherMaterialSum').val()) + Number($('#subsidiarySum').val()) + Number($('#expenseSum').val()));
	$('#margin').val(Number($('#costSum').val()) * Number( '0.'+ $('#percentMargin').val()));
	$('#allSum').val(Number($('#costSum').val()) + Number($('#margin').val()));
}


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
									<input class="form-control form-control-sm" type="text" placeholder="납품회사" id="supplier">
								  </td>
							    </tr>
							    <tr>
							      <th scope="row">디자인번호</th>
							      <td>
							      	<input class="form-control form-control-sm" type="text" placeholder="디자인번호" id="designNum">
							      </td>
							    </tr>
							    <tr>
							      <th scope="row">소재</th>
							      <td>
							      	<input class="form-control form-control-sm" type="text" placeholder="소재" id="leather">
							      </td>
							    </tr>
							    <tr>
							      <th scope="row">남/여</th>
							      <td>
							      	<span>남</span><input type="radio" name="sh_type" value="M" style="margin-right: 10px">
							      	<span>여</span><input type="radio" name="sh_type" value="F">
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
								<img id="blah" src=""/>
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
							  <tbody>
							    <tr>
							      <th scope="row" rowspan="3">원자재</th>
							      <td>외피 A</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="number" id="outLeatherSum1"></td>
							    </tr>
							    <tr>
							      <td>외피 B</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="number" id="outLeatherSum2"></td>
							    </tr>
							    <tr>
							      <td>내피</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="number" id="inLeatherSum"></td>
							    </tr>
							    <tr>
							      <td><1></td>
							      <td scope="row" colspan="5">원자재 계</td>
							      <td scope="row" ><input class="form-control form-control-sm" type="text" id="leatherMaterialSum" readonly="readonly" value="0"></td>
							    </tr>
							    <tr>
							      <td scope="row" rowspan="15">부자재</td>
							      <td>창</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td>창가공</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td>굽</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td>중창</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td>월형</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td>선심</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td>까래</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td>쿠션</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							     <tr>
							      <td>갑보</td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td>기타소모재</td>
							      <td></td>
							      <td></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
							    </tr>
							    <tr>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td><input class="form-control form-control-sm" type="text" id="sum"></td>
							      <td></td>
							      <td></td>
							      <td><input class="form-control form-control-sm" type="number" id="sum"></td>
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
							<button style="margin: 0px auto" type="submit" class="btn btn-secondary my-2 my-sm-0">등록하기</button>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</section>