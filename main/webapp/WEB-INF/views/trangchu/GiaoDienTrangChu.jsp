<%@ page pageEncoding="utf-8"%>
<div style="padding: 30px; margin: 10px; 20px;">
		<h3>Danh mục mã bưu chính quốc gia</h3>	
	</div>
	<form action="/timkiem/mabc" method="get" >
		<label>Tên danh mục bưu chính : </label>
		<input id="timkiem" type="text" name="timkiem" placeholder="Hãy nhập tên danh mục bưu chính ..." style="width:70%;">
		<button class="btn btn-primary" type="submit" style="margin-left: 78%; margin-top: 30px;">Tìm kiếm</button>
	</form>
	</div>
<script>


	$("#timkiem").autocomplete({
	 source: "/timkiem/mabc1"
			 
	});  
		

	
</script>