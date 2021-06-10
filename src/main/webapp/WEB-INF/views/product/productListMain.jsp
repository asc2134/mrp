<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.menu{text-align: center;}
	.menu li{display: inline-block;}
</style>
<script type="text/javascript">
$( document ).ready( function() {
});

function showProduct(designNum){
	var form = document.createElement('form');
	var objs;
	objs = document.createElement('input');
	objs.setAttribute('type', 'hidden');	
	objs.setAttribute('name', 'designNum');
	objs.setAttribute('value', designNum);
	form.appendChild(objs);
	form.setAttribute('method', 'post');
	form.setAttribute('action', "/showProduct.do");
	document.body.appendChild(form);
	form.submit();
};

</script>
<section id="container" class="home-page">
	<div class="wrap-container clearfix">
		<div id="main-content">
			<section class="content-box box-1 box-style-1"><!--Start Box-->
				<div class="wrap-box">
					<div class="zerogrid">
						<div class="row">
							<div style="width: 100%; height: 50px; margin-bottom: 10px;">
								   <form class="form-inline my-2 my-lg-0" style="float: right;">
								     <input class="form-control mr-sm-2" type="text" placeholder="검색">
								     <button class="btn btn-secondary my-2 my-sm-0" type="submit">검색</button>
								   </form>
								   <select class="custom-select" style="width: 120px; float: right;">
								     <option selected="">디자인번호</option>
								     <option value="comp">납품회사</option>
								     <option value="sex">남/여</option>
								     <option value="material">소재</option>
								   </select>
							</div>
							<table class="table table-hover">
							  <thead>
							    <tr>
							      <th scope="col">디자인 번호</th>
							      <th scope="col">납품 회사</th>
							      <th scope="col">남/여</th>
							      <th scope="col">가격</th>
							    </tr>
							  </thead>
							  <tbody>
							  	<c:if test="${empty productList}">
									<tr class="trCompany"  style="">
										<td class="notData" colspan="4">데이터가 없습니다.</td>
									</tr>
								</c:if>
							    <c:if test="${!empty productList}">
									<c:forEach var="productList" items="${productList}"> 
									    <tr class="trCompany" onclick="showProduct(${productList.designNum})">
									      <td>${productList.designNum}</td>
									      <td>${productList.supplier}</td>
									      <td>${productList.gender}</td>
									      <td>${productList.allSum}</td>
									    </tr>
									</c:forEach>
								</c:if>
							  </tbody>
							</table>
															<!-- 기타자제 페이징  -->
							<div id="productPaging" class="trProductOther" style="margin: 0px auto;">
							  <ul class="pagination pagination-sm menu">
							  	<c:if test="${productDto.startPage != 1 }">
			                        <li class="page-item">
								    	<a class="page-link" href="/productListMain.do?productNowPage=${productDto.startPage - 1 }&productCntPerPage=${productDto.cntPerPage}">&laquo;</a>
								    </li>
							  	</c:if>
			                    <c:forEach begin="${productDto.startPage }" end="${productDto.endPage }" var="p">
			                        <c:choose>
										<c:when test="${p == productDto.nowPage }">
											<li class="page-item disable">
										    	<a class="page-link" href="#">${p }</a>
										    </li>
										</c:when>
										<c:when test="${p != productDto.nowPage }">
											<li class="page-item">
										    	<a class="page-link"  href="/productListMain.do?productNowPage=${productDto.startPage - 1 }&productCntPerPage=${productDto.cntPerPage}">${p }</a>
										    </li> 
										</c:when>
									</c:choose>
			                    </c:forEach>
			                    <c:if test="${productDto.endPage != productDto.lastPage}">
			                        <li class="page-item">
								      <a class="page-link"  href="/productListMain.do?productNowPage=${productDto.startPage - 1 }&productCntPerPage=${productDto.cntPerPage}">&raquo;</a>
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