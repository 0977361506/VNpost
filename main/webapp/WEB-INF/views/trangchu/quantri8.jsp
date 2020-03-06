<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>

	<title>Admin</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<link rel="stylesheet" type="text/css" href="style.css">

	<style type="text/css">
		
		div.a{
			display: inline-block;
			width: 70%;
		}
		div.b{
			display: inline;
			width: 30px;
			margin-left:80px;
		}
		div.d{
			display: inline;
			width: 30px;
			margin-left:80px;
		}
		div.collapse ul{
			list-style: none;
			box-shadow: 0 0.3em 0.3em -0.3em #0c0d0e inset, 0 -0.3em 0.3em -0.3em #0c0d0e inset;
			-webkit-box-shadow: 0 0.3em 0.3em -0.3em #0c0d0e inset, 0 -0.3em 0.3em -0.3em #0c0d0e inset;
			transition: padding .3s;
			-webkit-transition: padding .3s;
			background: rgba(255,255,255,.05);
		}
		div.collapse ul > li{
			margin-bottom: 20px;
		}
		.bb{
			margin-bottom:20px;
		}
		a{
			color:black;
		}
	</style>
</head>
<body>


	<div style="padding: 30px; margin: 10px; 20px;">
		<h3>Quản lý danh mục chức năng</h3>	
	</div>
	<h2>Điều kiện tìm kiếm</h2>
	<form action="" method="get" >
		
		<div style="display: block;">
			<label>Mã nhân viên: </label>
			<input type="select" role="combobox" name="" placeholder="Tất cả" style="width:30%;">

			<label style=" margin-left: 5px;">Tên nhân viên : </label>
			<input type="select" name="" placeholder="Tất cả" style="width:30%;">
			
		</div>
		<div style="margin-top: 40px;">
			<label>Tên tài khoản: </label>
			<input type="select" name=""  style="width:30%; margin-left: 30px;">

			<label style=" margin-left: 5px;">Đơn vị : </label>
			<input type="select" name=""  style="width:30%; margin-left: 115px;">
		</div>




		<div style="border-bottom:1px solid gray; width: 92%; margin-top: 40px;" ></div>


		<div class="container" style="margin-left:50%; margin-top: 5px;">
			
			<button type="button" class="btn btn-primary ">Tìm kiếm</button>
			<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#myModal">Thêm mới</button>
			<button type="button" class="btn btn-primary ">Import</button>
			<button type="button" class="btn btn-primary ">Export</button>
			<button type="button" class="btn btn-primary ">Reset</button>
			
			
		</div>
		<div style="border-bottom:1px solid gray; width: 92%; margin-top: 5px;" ></div>
	</form>


	<div style="width: 100%;">
		<p>Danh sách người dùng</p>
		<p class="text-right" style="margin-right: 80px;">tổng số bản ghi:</p>

		<table class="table table-bordered">
			<thead>
				<tr>
					<th style="width: 10px;">STT</th>
					<th style="width: 30px;">Mã nhân viên</th>
					<th style="width: 45%;">Tên đăng nhập</th>
					<th style="width: 30px;">Phạm vi hệ thống</th>
					<th style="width: 60px;">Trạng thái</th>
					<th style="width: 100px;">Thao tác</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>BN001</td>
					<td>lehieu</td>
					<td>MCAS_USER</td>
					<td>Không hiệu lực</td>
					<td>
						<button type="button">them</button>
						<button type="button">2</button>
						<button type="button">3</button>
						<button type="button">4</button>
					</td>

					
				</tr>

			</tbody>
		</table>
		
	</div>



  

	<!-- The Modal vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv -->
	<!-- The Modal -->
	
	
	
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content" style="width: 800px; margin-left: -220px;">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Thêm người dùng</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form:form action="/quantri/ha" modelAttribute="kkkk">
           <div class="form-group">
           	  <div class="row">
           	  	  <div class="col-sm-6">
           	  	  	 <label for="">Mã nhân viên</label>
           	  	  	  <form:input path="maNV"  type="text" readonly="true" class="form-control"/>
           	  	  </div>
           	  	   <div class="col-sm-6">
           	  	  	 <label for="">Trạng thái NV</label>
           	  	  	  <form:input path="trangthai" type="text"  class="form-control"/> 
           	  	  </div>
           	  </div>
           	  <div class="row">
           	  	  <div class="col-sm-6">
           	  	  	 <label for="">Họ và tên</label>
           	  	  	  <form:input type="text" path="tennv" class="form-control"/>
           	  	  </div>
           	  	   <div class="col-sm-6">
           	  	  	 <label for="">Ngày sinh</label>
           	  	  	  <form:input type="text" path="ngaysinh" class="form-control"/> 
           	  	  </div>
           	  </div>
           	  <div class="row">
           	  	  <div class="col-sm-6">
           	  	  	 <label for="">Loại CMTND</label>
           	  	  	  <form:input type="text" path="loaiCMT" class="form-control"/>
           	  	  </div>
           	  	   <div class="col-sm-6">
           	  	  	 <label for="">Ten tai khoan</label>
           	  	  	  <form:input type="text" path="tentk" class="form-control"/> 
           	  	  </div>
           	  </div>
           	  <div class="row">
           	  	  <div class="col-sm-6">
           	  	  	 <label for="">Email</label>
           	  	  	  <form:input type="text" path="email" class="form-control"/>
           	  	  </div>
           	  	   <div class="col-sm-6">
           	  	  	 <label for="">Số điện thoại</label>
           	  	  	  <form:input type="text" path="sdt" class="form-control"/> 
           	  	  </div>
           	  </div>
           	  <div class="row">
           	  	  <div class="col-sm-12">
           	  	  	 <label for="">Phạm vi hệ thống</label>
           	  	  	  <form:input type="text" readonly="true" path="diachi" class="form-control"/>
           	  	  </div>
           	  	 
           	  </div>
           	   <div class="row">
           	  	  <div class="col-sm-12">
           	  	  	 <label for="">Ứng dụng được đồng bộ</label>
           	  	  	  <form:input type="text" readonly="true"  path="tenchucdanh" class="form-control"/>
           	  	  </div>
           	  	 
           	  </div>
           	   <div class="row">
           	  	  <div class="col-sm-12">
           	  	  	 <label for="">Nhóm người dùng</label>
           	  	  	  <form:input type="text" path="donvi" class="form-control"/>
           	  	  </div>
           	  	 
           	  </div>
           	   <div class="row">
           	  	  <div class="col-sm-12">
           	  	  	 <label for="">Mô tả</label>
           	  	  	  <form:input type="textarea" readonly="true" path="gioitinh" class="form-control"/>
           	  	  </div>
           	  	 
           	  </div>
           </div>

          
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Save</button>
         <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
  </form:form>
    </div>
  </div>
</div>


	
</div>
</div>
</body>
</html>