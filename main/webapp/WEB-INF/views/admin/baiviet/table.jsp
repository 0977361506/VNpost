<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<h2> Bảng Bài viết</h2>

<table class="table table-hover">
  <thead>
     <tr>
      <th> mã bài viết</th>
      <th> Tên bài viết</th>
      <th>bài viết đặc biệt</th>
      
 
        <th></th>
     </tr>
  </thead>
  <tbody>
  <c:forEach var="e" items="${list}">
  <tr>
   <td>${e.id}</td>
   <td>${e.tenBV}</td>
    <td>${e.baivietdb?'yes':'no'}</td>

   <td> <a class="btn btn-sm btn-info" href="/admin/baiviet/edit/${e.id}">Edit</a>
      <a class="btn btn-sm btn-info" href="/admin/baiviet/delete/${e.id}">Delete</a>
   </td>
    
   </tr>
   </c:forEach>
   
   
   <c:forEach var="e1" items="${list1}">
  <tr>
   <td>${e1.id}</td>
   <td>${e1.tenBV}</td>
    <td>${e1.baivietdb?'yes':'no'}</td>

   <td> <a class="btn btn-sm btn-info" href="/admin/baiviet/edit/${e1.id}">Edit</a>
      <a class="btn btn-sm btn-info" href="/admin/baiviet/delete/${e1.id}">Delete</a>
   </td>
    
   </tr>
   </c:forEach>
  </tbody>
</table>
<ul class="pager">
  <li><a href="#"><span class="	glyphicon glyphicon-hand-up"></span></a></li>
  <li><a href="#"><span class="	glyphicon glyphicon-hand-left"></span></a></li>
   <li><a href="#">5/15</a></li>
    <li><a href="#"><span class="glyphicon glyphicon-hand-right"></span></a></li>
     <li><a href="#"><span class="glyphicon glyphicon-hand-down"></span></a></li>
</ul>
<script>
  $(function(){
	  var pageno=0;
	  var pagecount=0;
	  var pagesize=2;
	  $.ajax({
		  url:"/baiviet/phantrang/soluong",
		  success:function(response){
			  pagecount=response;
		  }
	  })
	  
	  $(".pager a:eq(0)").click(function(){
		  pageno=0;
		 
		  $.ajax({
			  url:"/baiviet/phantrang/trang/"+pageno,
			  success:function(response){
				if(response){
			        alert("happy");
					window.location.href="http://localhost:8888/home/index";
			  }
		   })
		
	  });
	  });
	  
	  $(".pager a:eq(1)").click(function(){
		  pageno--;
	  });
	  $(".pager a:eq(3)").click(function(){
		  pageno++
	  });
	  $(".pager a:eq(4)").click(function(){
		  pageno=pagecount-1;
	  });
  })
</script>