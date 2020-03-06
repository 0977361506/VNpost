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
  <tbody id="tbody">
 
   
   
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
   <li><a href="#"><span id= "info">5/15</span></a></li>
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
			  $(".pager a:eq(0)").click();
		  }
	  })
	  
	  $(".pager a:eq(0)").click(function(){
		  pageno=0;
		  
          $.ajax({
			  
			  url:"/baiviet/phantrang/trang/"+pageno,
		      type:"GET",
			  success:function(response){
				if(response){
					
					$("#tbody").html("");
					
					$(response).each(function(index,user){
						var tr=$("<tr></tr>");
						$("<td/>").html(user.id).appendTo(tr);
						$("<td/>").html(user.tenBV).appendTo(tr);
						$("<td/>").html(user.baivietdb?'true':'false').appendTo(tr);
						var s= `<td> <a class="btn btn-sm btn-info" href="/admin/baiviet/edit/`+user.id+`">Edit</a>
						      <a class="btn btn-sm btn-info" href="/admin/baiviet/delete/${e1.id}">Delete</a>
							   </td>`;
						$("<td/>").html(s).appendTo(tr);
						tr.appendTo("#tbody");
						$("#info").html((pageno+1)+"/"+pagecount);
					})
				}
			  }
          ,error:function(response){
				 
			        alert("error");
			        }
         
		
	  });
	  });
	  
	  
	  $(".pager a:eq(1)").click(function(){
		 if(pageno > 0){
			 pageno--;
			 $.ajax({
				  
				  url:"/baiviet/phantrang/trang/"+pageno,
			      type:"GET",
				  success:function(response){
					if(response){
						
						$("#tbody").html("");
						
						$(response).each(function(index,user){
							var tr=$("<tr></tr>");
							$("<td/>").html(user.id).appendTo(tr);
							$("<td/>").html(user.tenBV).appendTo(tr);
							$("<td/>").html(user.baivietdb?'true':'false').appendTo(tr);
							var s= `<td> <a class="btn btn-sm btn-info" href="/admin/baiviet/edit/`+user.id+`">Edit</a>
							      <a class="btn btn-sm btn-info" href="/admin/baiviet/delete/${e1.id}">Delete</a>
								   </td>`;
							$("<td/>").html(s).appendTo(tr);
							tr.appendTo("#tbody");
							$("#info").html((pageno+1)+"/"+pagecount);
						})
					}
				  }
	          ,error:function(response){
					 
				        alert("error");
				        }
	         
			
		  });
		 }

	  });
	  $(".pager a:eq(3)").click(function(){
		  if(pageno < pagecount-1){
			  pageno++;
			  $.ajax({
				  
				  url:"/baiviet/phantrang/trang/"+pageno,
			      type:"GET",
				  success:function(response){
					if(response){
						
						$("#tbody").html("");
						
						$(response).each(function(index,user){
							var tr=$("<tr></tr>");
							$("<td/>").html(user.id).appendTo(tr);
							$("<td/>").html(user.tenBV).appendTo(tr);
							$("<td/>").html(user.baivietdb?'true':'false').appendTo(tr);
							var s= `<td> <a class="btn btn-sm btn-info" href="/admin/baiviet/edit/`+user.id+`">Edit</a>
							      <a class="btn btn-sm btn-info" href="/admin/baiviet/delete/${e1.id}">Delete</a>
								   </td>`;
							$("<td/>").html(s).appendTo(tr);
							tr.appendTo("#tbody");
							$("#info").html((pageno+1)+"/"+pagecount);
						})
					}
				  }
	          ,error:function(response){
					 
				        alert("error");
				        }
	         
			
		  });
		  }
		 
 
	  });
	  $(".pager a:eq(4)").click(function(){
		  pageno=pagecount-1;
 $.ajax({
			  
			  url:"/baiviet/phantrang/trang/"+pageno,
		      type:"GET",
			  success:function(response){
				if(response){
					
					$("#tbody").html("");
					
					$(response).each(function(index,user){
						var tr=$("<tr></tr>");
						$("<td/>").html(user.id).appendTo(tr);
						$("<td/>").html(user.tenBV).appendTo(tr);
						$("<td/>").html(user.baivietdb?'true':'false').appendTo(tr);
						var s= `<td> <a class="btn btn-sm btn-info" href="/admin/baiviet/edit/`+user.id+`">Edit</a>
						      <a class="btn btn-sm btn-info" href="/admin/baiviet/delete/${e1.id}">Delete</a>
							   </td>`;
						$("<td/>").html(s).appendTo(tr);
						tr.appendTo("#tbody");
						$("#info").html((pageno+1)+"/"+pagecount);
					})
				}
			  }
          ,error:function(response){
				 
			        alert("error");
			        }
         
		
	  });
	  });
  });
</script>