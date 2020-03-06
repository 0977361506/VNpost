<%@ page pageEncoding="utf-8"%>
<div style="padding: 30px; margin: 10px 20px;">
		<h3>Quản lý cán bộ công nhân viên</h3>	
	</div>
  <div class="row" id="hieu">
    <div class="col col-sm-3"><p>Chọn danh mục tổ chức</p></div>
    <div class="col col-sm-9">
      <form action="" method="get" >
		
        <div style="display: block;">
          <label>Mã nhân viên : </label>
          <input type="select" role="combobox" name="" style="width:30%;">
    
          <label style=" margin-left: 5px;">Tên  nhân viên : </label>
          <input type="select" name="" placeholder="Tất cả" style="width:30%;">
          
        </div>
        <div id="meo0" style="margin-top: 40px;">
          <label>Trạng thái : </label>
          <input type="select" name=""  style="width:30%; margin-left: 30px; margin-right: 30px;">
          <div style="float: right; display: inline;  margin-right: 30px; position: fixed;"> 

            <button type="button" class="ca"  data-toggle="collapse" data-target="#demo" style="border: none;">Tìm kiếm nâng cao</button>
  
            <div id="demo" class="collapse">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit,
              sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
              quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
            </div>
          </div>
          
        </div>
    
        <div style="border-bottom:1px solid gray; width: 92%; margin-top: 30px;" ></div>
    
    
        <div class="container" style="margin-left:78%; margin-top: 5px;">
          
         <div style="margin-left:-200px; margin-bottom: 15px;">
          <button type="button" class="btn btn-primary ">Tìm kiếm</button>
          <button type="button" class="btn btn-primary ">Thêm mới</button>
          <button type="button" class="btn btn-danger ">Xóa</button>
         </div>
         <div style="margin-left:-110px;">
          <button type="button" class="btn btn-primary ">import</button>
          <button type="button" class="btn btn-primary ">Export</button>
         </div>

          
          
        </div>
        <div style="border-bottom:1px solid gray; width: 92%; margin-top: 5px;" ></div>
      </form>
    </div>
  </div>


	<div style="width: 100%;">
		<p>Danh sách đồng bộ dữ liệu</p>
		<p class="text-right" style="margin-right: 80px;">tổng số bản ghi:</p>

		<table class="table table-bordered">
			<thead>
				<tr>
					<th style="width: 10px;">STT</th>
					<th style="width: 30px;">Mã ứng dụng</th>
					<th style="width: 55%;">Tên bảng</th>
					<th style="width: 30px;">Trạng thái</th>
					<th style="width: 60px;">Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>PRS</td>
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
	
</div>