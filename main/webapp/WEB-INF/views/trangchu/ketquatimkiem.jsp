<%@ page   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div style="padding: 30px; margin: 10px; 20px;">
		<h3>Danh mục mã bưu chính quốc gia</h3>	
	</div>
	<form action="/timkiem/mabc" method="get" >
		<label>Tên danh mục bưu chính : </label>
		<input id="timkiem" type="text" name="timkiem" placeholder="Hãy nhập tên danh mục bưu chính ..." style="width:70%;">
		<button class="btn btn-primary" type="submit" style="margin-left: 78%; margin-top: 30px;">Tìm kiếm</button>
	</form>
	</div>
	<div>
      <ul class="list-group" style="width: 600px;; margin-top: 50px; margin-left: 500px; ">
      <c:forEach var="cc" items="${kq}">
      	 <li class="list-group-item"><i style="font-size: 30px; ">${cc}</i></li>
      	 </c:forEach>
    <li class="list-group-item"><i class="fas fa-phone"></i>Đang cập nhật</li>
    <li class="list-group-item"><i class="fas fa-map-marker"></i>Đang cập nhật</li>
    <li class="list-group-item"><i class="fas fa-envelope-open-text"></i>Đang cập nhật</li>
      </ul>
	</div>