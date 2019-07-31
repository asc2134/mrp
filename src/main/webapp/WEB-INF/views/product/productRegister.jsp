<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">

function chk_file_type(obj) {
	alert('11111'); 
	var file_kind = obj.value.lastIndexOf('.');
	var file_name = obj.value.substring(file_kind+1,obj.length);
	var file_type = file_name.toLowerCase();
 	var check_file_type=new Array();​
	check_file_type=['jpg','gif','png','jpeg','bmp'];
	if(check_file_type.indexOf(file_type)==-1){
	 alert('이미지 파일만 선택할 수 있습니다.');
	 var parent_Obj=obj.parentNode
	 var node=parent_Obj.replaceChild(obj.cloneNode(true),obj);
	 return false;
	}
}
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
							      <th scope="row">납품처</th>
						   	      <td>
									<input class="form-control form-control-sm" type="text" placeholder="납품처" id="inputSmall">
								  </td>
							    </tr>
							    <tr>
							      <th scope="row">디자인번호</th>
							      <td>
							      	<input class="form-control form-control-sm" type="text" placeholder="디자인번호" id="inputSmall">
							      </td>
							    </tr>
							    <tr>
							      <th scope="row">소재</th>
							      <td>
							      	<input class="form-control form-control-sm" type="text" placeholder="소재" id="inputSmall">
							      </td>
							    </tr>
							    <tr>
							      <th scope="row">남/여</th>
							      <td>
							      	<input class="form-control form-control-sm" type="text" placeholder="남화 & 여화" id="inputSmall">
							      </td>
							    </tr>
							    <tr>
							      <td colspan="2">
								    <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp" accept="image/*" onchange="chk_file_type(this)">
								    <small id="fileHelp" class="form-text text-muted">사진파일만 등록가능</small>
							      </td>
							    </tr>
							  </tbody>
							</table>
							<div style="border: 1px solid black; width: 300px; height:300px; margin-left:315px;">
								<img src=""/>
							</div>
							
							<table class="table table-bordered" style="margin-top: 20px;">
							  <thead>
							    <tr>
							      <th scope="col">구분</th>
							      <th scope="col" colspan="2">품목</th>
							      <th scope="col">규격</th>
							      <th scope="col">소요량</th>
							      <th scope="col">단가</th>
							      <th scope="col">금액</th>
							    </tr>
							  </thead>
							  <tbody>
							    <tr>
							      <th scope="row" rowspan="4">원자재</th>
							      <td>외피 A</td>
							      <td></td>
							      <td></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>외피 B</td>
							      <td></td>
							      <td></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>내피</td>
							      <td></td>
							      <td></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>갑보</td>
							      <td></td>
							      <td></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td><1></td>
							      <td scope="row" colspan="5">원자재 계</td>
							      <td scope="row" >1000</td>
							    </tr>
							    <tr>
							      <td scope="row" rowspan="14">부자재</td>
							      <td>창</td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>창가공</td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>굽</td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>중창</td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>월형</td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>선심</td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>까래</td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>쿠션</td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>기타소모재</td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td>장식</td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td></td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td></td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td></td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td></td>
							      <td colspan="2"></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td><2></td>
							      <td scope="row" colspan="5">부자재 계</td>
							      <td scope="row" >1000</td>
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
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td colspan="3">일반 관리비</td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td colspan="3">간접 인건비</td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td colspan="3">제조경비</td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td><3></td>
							      <td>인권비</td>
							      <td>관리비</td>
							      <td></td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td><4></td>
							      <td>생산원가</td>
							      <td></td>
							      <td><1> + <2> + <3> </td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							    <tr>
							      <td><5></td>
							      <td>마진</td>
							      <td></td>
							      <td>10%</td>
							      <td></td>
							      <td></td>
							      <td></td>
							    </tr>
							   	<tr>
							   		<td colspan="4" style="text-align: center;">총계</td>
							   		<td></td>
							   		<td></td>
							   		<td></td>
							   	</tr>
							  </tbody>
							</table>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</section>