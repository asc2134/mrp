<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ys MRP</title>
</head>
<body>
	<div class="view-center">
		<h2>Ys MRP</h2>
		<form action="/checkLogin.do" method="post" class="form-horizontal">
		  <div class="form-group">
		    <label for="inputComCode3" class="col-sm-2 control-label">회사코드</label>
		    <div class="col-sm-10">
		      <input type="comCode" name="compNo" class="form-control" id="compNo" placeholder="회사코드" value="10000">
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
		      <input type="password"  name="pwd" class="form-control" id="pwd" placeholder="비밀번호" value="1234">
		    </div>
		  </div>
		  <div class="form-group" style="margin-top: 10px">
		    <div class="col-sm-offset-2 col-sm-10" style="width: 180px">
		      <button type="submit" class="btn btn-default">로그인</button>
              <a style="font-size: 2px;cursor: pointer;">회원가입</a> <span style="font-size: 2px;">/</span> <a style="font-size: 2px;cursor: pointer;">비밀번호찾기</a>
		    </div>
		  </div>
		</form>	
	</div>

</body>
</html>