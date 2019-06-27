<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="/static/css/zerogrid.css">
	<link rel="stylesheet" href="/static/css/style.css">
	<link rel="stylesheet" href="/static/css/menu.css">
	<link rel="stylesheet" href="/static/css/responsiveslides.css">
	<script src="/static/js/jquery-latest.min.js"></script>
	<script src="/static/js/script.js"></script>
    <script src="/static/js/jquery183.min.js"></script>
    <script src="/static/js/responsiveslides.min.js"></script>
    
<style type="text/css">
.view-center{
	position: absolute;
    top: 35%;
    left: 50%;
    width: 100px;
    height: 100px;
    margin: -50px 0 0 -50px;
}
</style>
<script type="text/javascript">


function login(){
	var data = {};
	data["id"] = $('#id').val();
	data["pw"] = $('#pw').val();
	data["compNum"] = $('#compNum').val();
	
	$.ajax({
		type : "POST",
		url : "/checkLogin.do",
		data : JSON.stringify(data),
		dataType: "json",
		contentType:"application/json;charset=UTF-8",
		success : function(data){
			if(data){
				location.href="loginOk.do"
			}else{
				alert('회사코드/아이디/비밀번호가 틀렸습니다.');
			}
		},
		error:function(request,status,error){
	        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       
	    }
	});
}



</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ys MRP</title>
</head>
<body>
	<div class="view-center">
		<h2>Ys MRP</h2>
		  <div class="form-group">
		    <label for="inputComCode3" class="col-sm-2 control-label">회사코드</label>
		    <div class="col-sm-10">
		      <input type="comCode" name="compNum" class="form-control" id="compNum" placeholder="회사코드" value="1">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputId3" class="col-sm-2 control-label">아이디</label>
		    <div class="col-sm-10">
		      <input type="id" name="id" class="form-control" id="id" placeholder="아이디" value="asc2134">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
		    <div class="col-sm-10">
		      <input type="password"  name="pw" class="form-control" id="pw" placeholder="비밀번호" value="1234">
		    </div>
		  </div>
		  <div class="form-group" style="margin-top: 10px">
		    <div class="col-sm-offset-2 col-sm-10" style="width: 180px">
		      <button onclick="login()" type="submit" class="btn btn-default">로그인</button>
              </span> <a style="font-size: 2px;cursor: pointer;">비밀번호찾기</a>
		    </div>
		  </div>
	</div>

</body>
</html>