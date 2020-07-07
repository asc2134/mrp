<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.menu{text-align: center;}
	.menu li{display: inline-block;}
	.notData{
		border: 1px solid #dee2e6;
	    height: 470px;
	    text-align: center;
	    font-weight: bold;
	    vertical-align: middle !important;
	}
</style>

<script>
$( document ).ready( function() {
	
	var materialType = '${materialType}';
	$("#${materialType}").click();
	
	
	
	$("#regist").click(function(){
		var type =  $(".nav-link.active").attr("id");
		
		var form = document.createElement('form');
		var objs;
		objs = document.createElement('input');
		objs.setAttribute('type', 'hidden');
		objs.setAttribute('name', 'type');
		objs.setAttribute('value', type);
		form.appendChild(objs);
		form.setAttribute('method', 'post');
		form.setAttribute('action', "/createMaterial.do");
		document.body.appendChild(form);
		form.submit();
	});
	
});

function searchMaterial(){
	var status =  $(".nav-link.active").attr("id");
	
	
	
	
}

function showCompany(compNum){
	var form = document.createElement('form');
	var objs;
	objs = document.createElement('input');
	objs.setAttribute('type', 'hidden');	
	objs.setAttribute('name', 'compNum');
	objs.setAttribute('value', compNum);
	form.appendChild(objs);
	form.setAttribute('method', 'post');
	form.setAttribute('action', "/showCompany.do");
	document.body.appendChild(form);
	form.submit();	
}

function showMaterial(num, type){
	var form = document.createElement('form');
	
	var obj1;
	var obj2;
	obj1 = document.createElement('input');
	obj1.setAttribute('type', 'hidden');	
	obj1.setAttribute('name', 'num');
	obj1.setAttribute('value', num);
	
	obj2 = document.createElement('input');
	obj2.setAttribute('type', 'hidden');	
	obj2.setAttribute('name', 'type');
	obj2.setAttribute('value', type);
	
	
	form.appendChild(obj1);
	form.appendChild(obj2);
	form.setAttribute('method', 'post');
	form.setAttribute('action', "/showMaterial.do");
	document.body.appendChild(form);
	form.submit();
	
}



function changeMenu(obj){
	
	
	if(obj == 'company'){
		$(".trLeather").hide();
		$(".trSubsidiary").hide();
		$(".trAccessory").hide();
		$(".trMaterialOther").hide();
		$("#searchLeather").hide();
		$("#searchSubsidiary").hide();
		$("#searchAccessory").hide();
		$("#searchMaterialOther").hide();
		$("#searchCompany").show();
		$(".trCompany").show();
	}else if(obj == 'leather'){
		$(".trCompany").hide();
		$(".trSubsidiary").hide();
		$(".trAccessory").hide();
		$(".trMaterialOther").hide();
		$("#searchCompany").hide();
		$("#searchSubsidiary").hide();
		$("#searchAccessory").hide();
		$("#searchMaterialOther").hide();
		$("#searchLeather").show();
		$(".trLeather").show();
	}else if(obj == 'subsidiary'){
		$(".trCompany").hide();
		$(".trLeather").hide();
		$(".trAccessory").hide();
		$(".trMaterialOther").hide();
		$("#searchCompany").hide();
		$("#searchLeather").hide();
		$("#searchAccessory").hide();
		$("#searchMaterialOther").hide();
		$("#searchSubsidiary").show();
		$(".trSubsidiary").show();
	}else if(obj == 'accessory'){
		$(".trCompany").hide();
		$(".trLeather").hide();
		$(".trMaterialOther").hide();
		$(".trSubsidiary").hide();
		$("#searchCompany").hide();
		$("#searchLeather").hide();
		$("#searchSubsidiary").hide();
		$("#searchMaterialOther").hide();
		$("#searchAccessory").show();
		$(".trAccessory").show();
	}else if(obj == 'materialOther'){
		$(".trCompany").hide();
		$(".trSubsidiary").hide();
		$(".trAccessory").hide();
		$(".trLeather").hide();
		$("#searchCompany").hide();
		$("#searchLeather").hide();
		$("#searchSubsidiary").hide();
		$("#searchAccessory").hide();
		$("#searchMaterialOther").show();
		$(".trMaterialOther").show();
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
							<div style="width: 100%; height: 50px; margin-bottom: 10px;">
							   <ul id="list" class="nav nav-tabs" style="position: absolute;"><!-- id값을 대문자로한것은 아이디값으로 등록페이지가 설정됨  -->
								  <li class="nav-item">
								    <a id="company" class="nav-link active" data-toggle="tab" href="#" onclick="changeMenu(this.id)">회사</a>
								  </li>
								  <li class="nav-item">
								    <a id="leather" class="nav-link" data-toggle="tab" href="#" onclick="changeMenu(this.id)">가죽</a>
								  </li>
								  <li class="nav-item">
								    <a id="subsidiary" class="nav-link" data-toggle="tab" href="#" onclick="changeMenu(this.id)">부자재</a>
								  </li>
								  <li class="nav-item">
								    <a id="accessory" class="nav-link" data-toggle="tab" href="#" onclick="changeMenu(this.id)">장식</a>
								  </li>
								  <li class="nav-item">
								    <a id="materialOther" class="nav-link" data-toggle="tab" href="#" onclick="changeMenu(this.id)">기타</a>
								  </li>
								</ul>
							   <form class="form-inline my-2 my-lg-0" style="float: right;">
							     <input class="form-control mr-sm-2" type="text" placeholder="검색">
							     <button class="btn btn-secondary my-2 my-sm-0" type="button" onclick="searchMaterial()">검색</button>
							   </form>
							   <select id="searchCompany" class="custom-select" style="width: 120px; float: right;">
							     <option value="compName">회사명</option>
							     <option value="compNum">회사번호</option>
							     <option value="address">주소</option>
							   </select>
							   <select id="searchLeather" class="custom-select" style="width: 120px; float: right; display: none;">
							     <option value="compName">자제명</option>
							     <option value="leatherType">자제타입</option>
							     <option value="compName">회사이름</option>
							   </select>
							   <select id="searchSubsidiary" class="custom-select " style="width: 120px; float: right; display: none;">
							     <option value="compName">자제명</option>
							     <option value="subsidiaryType">자제타입</option>
							     <option value="compName">회사이름</option>
							   </select>
							   <select id="searchAccessory" class="custom-select " style="width: 120px; float: right; display: none;">
							     <option value="accessoryName">자제명</option>
							     <option value="compName">회사이름</option>
							   </select>
							   <select id="searchMaterialOther" class="custom-select " style="width: 120px; float: right; display: none;">
							     <option value="materialOtherName">자제명</option>
							     <option value="compName">회사이름</option>
							   </select>
							</div>
							<table class="table table-hover">
							  <thead>
							    <tr class="trCompany">
							      <th scope="col">회사명</th>
							      <th scope="col">회사팩스번호</th>
							      <th scope="col">회사번호</th>
							      <th scope="col">주소</th>
							    </tr>
							    <tr class="trLeather" style="display: none;">
							      <th scope="col">자제명</th>
							      <th scope="col">자제 타입</th>
							      <th scope="col">보유량</th>
							      <th scope="col">가격</th>
							      <th scope="col">회사이름</th>
							    </tr>
							    <tr class="trSubsidiary" style="display: none;">
							      <th scope="col">자제명</th>
							      <th scope="col">자제 타입</th>
							      <th scope="col">보유량</th>
							      <th scope="col">가격</th>
							      <th scope="col">회사이름</th>
							    </tr>
							    <tr class="trAccessory" style="display: none;">
							      <th scope="col">자제명</th>
							      <th scope="col">보유량</th>
							      <th scope="col">가격</th>
							      <th scope="col">회사이름</th>
							    </tr>
							    <tr class="trMaterialOther" style="display: none;">
							      <th scope="col">자제명</th>
							      <th scope="col">보유량</th>
							      <th scope="col">가격</th>
							      <th scope="col">회사이름</th>
							    </tr>
							  </thead>
							  <tbody>
								<c:if test="${empty companyList}">
									<tr class="trCompany"  style="display: none;">
										<td class="notData" colspan="4">데이터가 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${!empty companyList}">
									<c:forEach var="companyList" items="${companyList}"> 
									    <tr class="trCompany" onclick="showCompany(${companyList.compnum})">
									      <td>${companyList.compname}</td>
									      <td>${companyList.faxnum}</td>
									      <td>${companyList.compphone}</td>
									      <td>${companyList.address}</td>
									    </tr>
									</c:forEach>
								</c:if>
								<c:if test="${empty leatherList}">
									<tr class="trLeather"  style="display: none;">
										<td class="notData" colspan="5">데이터가 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${!empty leatherList}">
									<c:forEach var="leatherList" items="${leatherList}">
										<tr class="trLeather"  style="display: none;" onclick="showMaterial(${leatherList.leathernum}, 'l')">
											<td>${leatherList.leathername}</td>
											<td>${leatherList.leathertype}</td>
											<td>${leatherList.amount}</td>
											<td>${leatherList.price}</td>
											<td>${leatherList.compname}</td>
										</tr>
									</c:forEach>
								</c:if>
								
								<c:if test="${empty subsidiaryList}">
									<tr class="trSubsidiary"  style="display: none;">
										<td class="notData" colspan="5">데이터가 없습니다.</td>
									</tr>
								</c:if>
								
								<c:if test="${!empty subsidiaryList}">
									<c:forEach var="subsidiaryList" items="${subsidiaryList}">
										<tr class="trSubsidiary"  style="display: none;" onclick="showMaterial(${subsidiaryList.subsidiarynum}, 's')">
											<td>${subsidiaryList.subsidiaryname}</td>
											<td>${subsidiaryList.subsidiarytype}</td>
											<td>${subsidiaryList.amount}</td>
											<td>${subsidiaryList.price}</td>
											<td>${subsidiaryList.compname}</td>
										</tr>
									</c:forEach>
								</c:if>
								
								<c:if test="${empty accessoryList}">
									<tr class="trAccessory"  style="display: none;">
										<td class="notData" colspan="4">데이터가 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${!empty accessoryList}">
									<c:forEach var="accessoryList" items="${accessoryList}">
										<tr class="trAccessory"  style="display: none;" onclick="showMaterial(${accessoryList.accessorynum}, 'a')">
											<td>${accessoryList.accessoryname}</td>
											<td>${accessoryList.amount}</td>
											<td>${accessoryList.price}</td>
											<td>${accessoryList.compname}</td>
										</tr>
									</c:forEach>
								</c:if>
								
								<c:if test="${empty materialOtherList}">
									<tr class="trMaterialOther"  style="display: none;">
										<td class="notData" colspan="4">데이터가 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${!empty materialOtherList}">
									<c:forEach var="materialOtherList" items="${materialOtherList}">
										<tr class="trMaterialOther"  style="display: none;" onclick="showMaterial(${materialOtherList.materialothernum}, 'm')">
											<td>${materialOtherList.materialothername}</td>
											<td>${materialOtherList.amount}</td>
											<td>${materialOtherList.price}</td>
											<td>${materialOtherList.compname}</td>
										</tr>
									</c:forEach>
								</c:if>
							  </tbody>
							</table>
							<div style="width: 100%">
								<button id="regist" style="float: right;" type="button" class="btn btn-secondary">등록하기</button>
							</div>
							
							<div id="companyPaging" class="trCompany" style="margin: 0px auto;">
							  <ul class="pagination pagination-sm menu">
							  	<c:if test="${companyDto.startPage != 1 }">
			                        <li class="page-item">
								    	<a class="page-link" href="/materialMain.do?materialType=company&companyNowPage=${companyDto.startPage - 1 }&companyCntPerPage=${companyDto.cntPerPage}")">&laquo;</a>
								    </li>
							  	</c:if>
			                    <c:forEach begin="${companyDto.startPage }" end="${companyDto.endPage }" var="p">
			                        <c:choose>
										<c:when test="${p == companyDto.nowPage }">
											<li class="page-item disable">
										    	<a class="page-link" href="#">${p }</a>
										    </li>
										</c:when>
										<c:when test="${p != companyDto.nowPage }">
											<li class="page-item">
										    	<a class="page-link"  href="/materialMain.do?materialType=company&companyNowPage=${p}&companyCntPerPage=${companyDto.cntPerPage}">${p }</a>
										    </li> 
										</c:when>
									</c:choose>
			                    </c:forEach>
			                    <c:if test="${companyDto.endPage != companyDto.lastPage}">
			                        <li class="page-item">
								      <a class="page-link"  href="/materialMain.do?materialType=company&companyNowPage=${companyDto.endPage+1 }&companyCntPerPage=${companyDto.cntPerPage}">&raquo;</a>
								    </li> 
			                    </c:if>
							  </ul>
							</div>
							
							<!-- 가죽 페이징 -->
							<div id="leatherPaging" class="trLeather" style="margin: 0px auto; display: none;">
							  <ul class="pagination pagination-sm menu">
							  	<c:if test="${leatherDto.startPage != 1 }">
			                        <li class="page-item">
								    	<a class="page-link" href="/materialMain.do?materialType=company&leatherNowPage=${leatherDto.startPage - 1 }&leatherCntPerPage=${leatherDto.cntPerPage}")">&laquo;</a>
								    </li>
							  	</c:if>
			                    <c:forEach begin="${leatherDto.startPage }" end="${leatherDto.endPage }" var="p">
			                        <c:choose>
										<c:when test="${p == leatherDto.nowPage }">
											<li class="page-item disable">
										    	<a class="page-link" href="#">${p }</a>
										    </li>
										</c:when>
										<c:when test="${p != leatherDto.nowPage }">
											<li class="page-item">
										    	<a class="page-link"  href="/materialMain.do?materialType=leather&leatherNowPage=${p }&leatherCntPerPage=${leatherDto.cntPerPage}">${p }</a>
										    </li> 
										</c:when>
									</c:choose>
			                    </c:forEach>
			                    <c:if test="${leatherDto.endPage != leatherDto.lastPage}">
			                        <li class="page-item">
								      <a class="page-link"  href="/materialMain.do?materialType=leather&leatherNowPage=${leatherDto.endPage+1 }&leatherCntPerPage=${leatherDto.cntPerPage}">&raquo;</a>
								    </li> 
			                    </c:if>
							  </ul>
							</div>
							
							<!-- 부자재 페이징 -->
							<div id="subsidiaryPaging" class="trSubsidiary" style="margin: 0px auto; display: none;">
							  <ul class="pagination pagination-sm menu">
							  	<c:if test="${subsidiaryDto.startPage != 1 }">
			                        <li class="page-item">
								    	<a class="page-link" href="/materialMain.do?materialType=subsidiary&subsidiaryNowPage=${subsidiaryDto.startPage - 1 }&subsidiaryCntPerPage=${companyDto.cntPerPage}")">&laquo;</a>
								    </li>
							  	</c:if>
			                    <c:forEach begin="${subsidiaryDto.startPage }" end="${subsidiaryDto.endPage }" var="p">
			                        <c:choose>
										<c:when test="${p == subsidiaryDto.nowPage }">
											<li class="page-item disable">
										    	<a class="page-link" href="#">${p }</a>
										    </li>
										</c:when>
										<c:when test="${p != subsidiaryDto.nowPage }">
											<li class="page-item">
										    	<a class="page-link"  href="/materialMain.do?materialType=subsidiary&subsidiaryNowPage=${p }&subsidiaryCntPerPage=${subsidiaryDto.cntPerPage}">${p }</a>
										    </li> 
										</c:when>
									</c:choose>
			                    </c:forEach>
			                    <c:if test="${subsidiaryDto.endPage != subsidiaryDto.lastPage}">
			                        <li class="page-item">
								      <a class="page-link"  href="/materialMain.do?materialType=subsidiary&subsidiaryNowPage=${subsidiaryDto.endPage+1 }&subsidiaryCntPerPage=${subsidiaryDto.cntPerPage}">&raquo;</a>
								    </li> 
			                    </c:if>
							  </ul>
							</div>
							
							<!-- 장식페이징 -->
							<div id="accessoryPaging" class="trAccessory" style="margin: 0px auto; display: none;">
							  <ul class="pagination pagination-sm menu">
							  	<c:if test="${accessoryDto.startPage != 1 }">
			                        <li class="page-item">
								    	<a class="page-link" href="/materialMain.do?materialType=accessory&accessoryNowPage=${accessoryDto.startPage - 1 }&accessoryCntPerPage=${accessoryDto.cntPerPage}")">&laquo;</a>
								    </li>
							  	</c:if>
			                    <c:forEach begin="${accessoryDto.startPage }" end="${accessoryDto.endPage }" var="p">
			                        <c:choose>
										<c:when test="${p == accessoryDto.nowPage }">
											<li class="page-item disable">
										    	<a class="page-link" href="#">${p }</a>
										    </li>
										</c:when>
										<c:when test="${p != accessoryDto.nowPage }">
											<li class="page-item">
										    	<a class="page-link"  href="/materialMain.do?materialType=accessory&accessoryNowPage=${p }&accessoryCntPerPage=${accessoryDto.cntPerPage}&material">${p }</a>
										    </li> 
										</c:when>
									</c:choose>
			                    </c:forEach>
			                    <c:if test="${accessoryDto.endPage != accessoryDto.lastPage}">
			                        <li class="page-item">
								      <a class="page-link"  href="/materialMain.do?materialType=accessory&accessoryNowPage=${accessoryDto.endPage+1 }&accessoryCntPerPage=${accessoryDto.cntPerPage}">&raquo;</a>
								    </li> 
			                    </c:if>
							  </ul>
							</div>
							
							<!-- 기타자제 페이징  -->
							<div id="materialOtherPaging" class="trMaterialOther" style="margin: 0px auto; display: none;">
							  <ul class="pagination pagination-sm menu">
							  	<c:if test="${materialOtherDto.startPage != 1 }">
			                        <li class="page-item">
								    	<a class="page-link" href="/materialMain.do?materialType=materialOther&materialOtherNowPage=${materialOtherDto.startPage - 1 }&materialOtherCntPerPage=${materialOtherDto.cntPerPage}")">&laquo;</a>
								    </li>
							  	</c:if>
			                    <c:forEach begin="${materialOtherDto.startPage }" end="${materialOtherDto.endPage }" var="p">
			                        <c:choose>
										<c:when test="${p == materialOtherDto.nowPage }">
											<li class="page-item disable">
										    	<a class="page-link" href="#">${p }</a>
										    </li>
										</c:when>
										<c:when test="${p != materialOtherDto.nowPage }">
											<li class="page-item">
										    	<a class="page-link"  href="/materialMain.do?materialType=materialOther&materialOtherNowPage=${p }&materialOtherCntPerPage=${materialOtherDto.cntPerPage}">${p }</a>
										    </li> 
										</c:when>
									</c:choose>
			                    </c:forEach>
			                    <c:if test="${materialOtherDto.endPage != materialOtherDto.lastPage}">
			                        <li class="page-item">
								      <a class="page-link"  href="/materialMain.do?materialType=materialOther&materialOtherNowPage=${materialOtherDto.endPage+1 }&materialOtherCntPerPage=${materialOtherDto.cntPerPage}">&raquo;</a>
								    </li> 
			                    </c:if>
							  </ul>
							</div>
							
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</section>