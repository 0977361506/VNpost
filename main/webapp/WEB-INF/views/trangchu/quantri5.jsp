<%@ page     pageEncoding="utf-8"%>
 <div style="padding: 30px; margin: 10px; 20px;">
    <h3>Quản lý danh mục ứng dụng</h3>  
  </div>
  <form action="" method="get" >
    
     <strong >Điều kiện tìm kiếm</strong>
    <div style="display: block; margin-top:20px;">
      <label>Tên ứng dụng : </label>
      <input type="select" role="combobox" name="" placeholder="Tất cả" style="width:30%;">

      <label style=" margin-left: 5px;">Mã ứng dụng : </label>
      <input type="select" name="" placeholder="Tất cả" style="width:30%;">
      
    </div>
  

    <div style="border-bottom:1px solid gray; width: 92%; margin-top: 40px;" ></div>


    <div class="container" style="margin-left:78%; margin-top: 5px;">
      
      <button type="button" class="btn btn-primary ">Tìm kiếm</button>
      
      
    </div>
    <div style="border-bottom:1px solid gray; width: 92%; margin-top: 5px;" ></div>
  </form>


  <div style="width: 100%;">
    <p>Danh sách danh mục ứng dụng</p>
    <p class="text-right" style="margin-right: 80px;">tổng số bản ghi:</p>

    <table class="table table-bordered">
      <thead>
        <tr>
          <th style="width: 10px;">STT</th>
          <th style="width: 30px;">Mã ứng dụng</th>
          <th style="width: 55%;">Tên bảng</th>
          
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
