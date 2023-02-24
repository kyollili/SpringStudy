<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
	margin-top: 250px;
}
.row{
	margin: 0px auto;
	width:1200px;
}
</style>
</head>
<body>
	<div class="container">
	  <div class="row">
	     <div class="col-md-4">
		    <div class="thumbnail">
		      <a href="../food/category.do">
		        <img src="../images/food.jpg" alt="Lights" style="width:380px;height:250px">
		        <div class="caption">
		          <p class="text-center">맛집 여행</p>
		        </div>
		      </a>
		    </div>
		  </div>
		   <div class="col-md-4">
		    <div class="thumbnail">
		      <a href="../seoul/list.do">
		        <img src="../images/seoul.jpg" alt="Lights" style="width:380px;height:250px">
		        <div class="caption">
		          <p class="text-center">서울 여행</p>
		        </div>
		      </a>
		    </div>
		  </div>
		   <div class="col-md-4">
		    <div class="thumbnail">
		      <a href="../jeju/list.do">
		        <img src="../images/jeju.jpg" alt="Lights" style="width:380px;height:250px">
		        <div class="caption">
		          <p class="text-center">제주 여행</p>
		        </div>
		      </a>
		    </div>
		  </div>
	  </div>
	</div>
</body>
</html>