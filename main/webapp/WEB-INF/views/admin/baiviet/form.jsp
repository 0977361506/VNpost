<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h2>Quản Lí bài viết</h2>
<h2> ${message} ${param.message}</h2>
<form:form action="/admin/baiviet/index" modelAttribute="baiviet" enctype="multipart/form-data">
<div class="row">

 <div class="form-group col-sm-6">
  <label>Id</label>
  <form:input path="id"  class="form-control" readonly="true"/>
</div>

 <div class="form-group col-sm-6">
  <label>Tên Bài Viết</label>
  <form:input path="tenBV"  class="form-control" />
</div>
 </div>

<div class="row">

 <div class="form-group col-sm-6">
  <label>tiêu đề bức ảnh</label>
  <form:input path="chitietphoto"  class="form-control" />
</div>

 <div class="form-group col-sm-6">
  <label>Thời gian đăng bài</label>
  <form:input path="me"  class="form-control" />
</div>
 </div>

<div class="row">

 <div class="form-group col-sm-12">
  <label>Tóm tắt nội dung</label>
  <form:textarea path="tomtat" rows="3" class="form-control" />
</div>

 </div>


<div class="row">

 <div class="form-group col-sm-6">
  <label>số bài viết</label>
  <form:input path="sobaiviet"  class="form-control" />
</div>

 <div class="form-group col-sm-6">
  <label>mã chuyên mục</label>
  <form:select path="chuyenMuc.maCM"  class="form-control" >
   <c:forEach var="c" items="${list2}">
     <form:option value="${c.maCM}"></form:option>
   </c:forEach>
  </form:select>
</div>
 </div>
 


<div class="row">

 <div class="form-group col-sm-6">
  <label>Bài viết đặc biệt</label>
  <div class="form-control">
    <form:radiobutton path="baivietdb"  value="true" label="special"/>
  <form:radiobutton path="baivietdb"  value="false" label="ko đặc biệt"/>
</div>
</div>

 <div class="form-group col-sm-6">
  <label>mã danh mục</label>
  
    <form:select path="danhmuc.id"  class="form-control" >
   <c:forEach var="cc" items="${list3}">
     <form:option value="${cc.id}"></form:option>
   </c:forEach>
  </form:select>
   
  
</div>
 </div>
 
 
<div class="form-group">
  <label>photo</label>
  <input type="file" name="photo_file" class="form-control">
  
  <form:hidden path="photo"   />
</div>
<div class="row">
  
 <div class="form-group col-sm-12">
  <label>Nội dung</label>
     
  <form:textarea rows="10" path="noidung"  class="form-control" id="hieu"/>
</div>
</div>

<div class="form-group">
   <button class="btn btn-sm btn-success" formaction="/admin/baiviet/create">
        Create
         </button>
            <button class="btn btn-sm btn-primary" formaction="/admin/baiviet/update">
        Update
         </button>
            <button class="btn btn-sm btn-danger" formaction="/admin/baiviet/delete">
        delete
         </button>
         
            <a class="btn btn-sm btn-success" href="/admin/baiviet/index">Reset</a>
     
</div>
</form:form>
<script>

$(function(){

	CKEDITOR.replace('hieu');

});

</script>
