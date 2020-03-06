<%@ page  pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<div style="padding: 30px; margin: 10px 20px;">
<h3>Quản lý nhóm người dùng</h3>  
</div>


<form action="/timkiem/ungdung" method="post" >

<strong >Điều kiện tìm kiếm</strong>
<div style="display: block; margin-top:20px;">
<label>Tên ứng dụng : </label>
<input type="select" role="combobox" name="tkud" placeholder="Tất cả" style="width:30%;">

<label style=" margin-left: 5px;">Mã ứng dụng : </label>
<input type="select" name="tkma" placeholder="Tất cả" style="width:30%;">

</div>
<div style="margin-top: 50px;">
<label style=" margin-left: 3px;">Phạm vi ứng dụng : </label>
<input readonly type="select" name="" placeholder="Hệ thống quản trị trung tâm" style="width:68%;">
</div>

<div style="border-bottom:1px solid gray; width: 92%; margin-top: 40px;" ></div>


<div class="container" style="margin-left:78%; margin-top: 5px;">

<button type="submit" class="btn btn-primary ">Tìm kiếm</button>
<button type="submit" class="btn btn-primary " data-toggle="modal" data-target="#mailam">Thêm mới</button>


</div>
<div style="border-bottom:1px solid gray; width: 92%; margin-top: 5px;" ></div>
</form>



<div style="width: 100%;">
<p>Danh sách danh mục ứng dụng</p>
<p>${mes}</p>
<p class="text-right" style="margin-right: 80px;">tổng số bản ghi:</p>

<table class="table table-bordered">
<thead>
<tr>
<th style="width: 10px;">STT</th>
<th style="width: 30px;">Mã nhóm</th>
<th style="width: 55%;">Tên nhóm</th>
<th style="width: 30px;">Phạm vi ứng dụng</th>
<th style="width: 60px;">Thao tác</th>
</tr>
</thead>
<tbody>


<!-- day la list tim kiem -->
<c:forEach var="b3" items="${tk}">
<tr>

<td>${b3.stt1}</td>
<td>${b3.ma}</td>
<td>${b3.tennhom}</td>
<td>${b3.mota}</td>
<td>
<c:forEach var="cn" items="${cn}">
 <c:if test="${cn.kihieu=='Add'||cn.kihieu=='Del'||cn.kihieu=='Share'}">
<button type="button" data-toggle="modal" data-target="#myModal">${cn.kihieu}</button>
</c:if>
</c:forEach>
</td>


</tr>
</c:forEach>


</tbody>
</table>

</div>