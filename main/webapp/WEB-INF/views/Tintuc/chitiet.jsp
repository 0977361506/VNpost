<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<style type="text/css" media="screen">
	
		.navbar {
			background-color: #gray !important;
		}
		#vip{
			background-color: red !important;
		}
		.top-toolbar {
			display: flex;
			justify-content: space-evenly;
			flex-direction: row;
			align-items: center;
			width: 100%;
		}

		.nav {
			display: -ms-flexbox;
			display: flex;
			-ms-flex-wrap: wrap;
			flex-wrap: wrap;
			padding-left: 0;
			margin-bottom: 0;
			list-style: none;
		}
		.footer {
			background: #144e8c;
			color: #fff;
			font-size: 12px;
			padding: 15px 0;
		}
		.pre-footer {
			background: #FCB71E;
			color: #222;
			padding: 20px 0 10px 0;
		}


		.quick-access-col .content-col {
			padding: 0px 20px;
			-webkit-border-radius: 5px !important;
			-moz-border-radius: 5px !important;
			border-radius: 5px !important;
			border: 1px solid #ddd;
			margin-bottom: 40px;
		}
		.index-main-col .content-col {
			background: #f7f7f7;
			padding: 20px 10px;
			-webkit-border-radius: 5px !important;
			-moz-border-radius: 5px !important;
			border-radius: 5px !important;
		}
		.vip2 {
			color: #222;
			padding: 6px 0;
			line-height: 1.2;
			font-family: 'Roboto-Regular', sans-serif;
			background: #ececec;
		}

		.rowss{
			display: block;
		}
		.ul-main-menu{

			display: inline-block;
			float: right;
			width: 100%;
			max-width: 100%;
			justify-content: space-around;
			margin-left: 480px;
		}

	}

	div.vip5{
		display: block-inline;
		margin-left: 202px;
	}
	.hello{
		display:block;
		padding-top: 25px;
		background-color: #FFFAD5;
		border: 1px solid #D2CB95;

	}
	.tieude{
		margin: 50px 0 0 0;
		border-top: 1px solid #8198C3;
		background: #EAF6FF;
		border-bottom: 1px solid #D0E4F1;
	}
	ul.vincom, li.vi {
		margin: 10px;
		padding: 0;
		list-style: none;
	}   
	#left-menu{
		margin:0;
		padding: 0;
	}
	
	.leftds{
		background:#FFFAD5;
		width: 260px;
		height: auto;
		float:left;
		padding: 0;
	}
	.rightds{

		height: 1500px;
		width: 800px;
		height: 300px;
		float:left;
		margin-left:60px;
	}
  div.tenbv > h1:hover{
		background: yellow;
		
	}
	div.tenbv > h1{
		font-family: "Roboto-Bold";
		font-weight: 600;
		font-size: 20px;
		color: #333;
		line-height: 28px;
		margin-top:5px;
	}
	div.chitiet > h1{
		text-align: justify;
		font-weight: 600;
		font-size: 14px;

	}
	#hid figure >img{
	   max-height: 250px;
	 max-width:300px;
	}
</style>

</head>
<body>

	<!-- Navigation -->
	<nav  class="navbar navbar-expand-md navbar-light bg-light sticky-top vip2" >
	<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v5.0"></script>	
		<div class="container-fluid">
			<div class="row">
				<div class="col col-sm-3 col-left" style="padding-left: 100px;">
					<span class="glyphicon glyphicon-earphone"></span>
					<i class="hotline">Giới Thiệu</i>&nbsp;
					<strong class="hotnumber">1900 54 54 81</strong>
				</div>
				<div class="col col-sm-9 col-right" style="padding-right: 200px;">
					<ul class="list-unstyled list-inline" style="float: right">
						<li><a href="" title=""></a>Giới Thiệu</li>
						<li><a href="" title=""></a>Hỏi Đáp</li>
						<li><a href="" title=""></a>Liên Hệ</li>
						<li><a href="" title=""></a>Login</li>
						<li>
							<div class="lang">
								<span class="ngonngu">
									<img src="/img/vi-VN.gif" alt="vi-VN">
								</span>
								<span class="ngonngu1">
									<img src="/img/en-US.gif" alt="us-US">
								</span>
							</div>
						</li>
						<li >

							<input name="search" type="text" id="tk" class="search-form-index" placeholder="Tìm kiếm" style="border: none; border-radius: 15px;">
							<button type="button" class="btn btn-primary" style="height:26px;"><span class="glyphicon glyphicon-search"></span></button>
						</li>
					</div>
				</div>

			</div>
		</nav>
		<div class="row header">
			<div class="col col-sm-7" style="padding-left: 200px;">
				<a href="/home/index" title="">
					<img src="/img/vnpost-logo1.png" alt="BUU DIEN VIER NAM">
				</a>
			</div>
			<div class="col col-sm-5" >
				<ul class="top-toolvar nav" >
					<li>
						<a href="" title="">
							<div>
								<img src="/img/mess.png" alt="khieu nai">
							</div>
							<div>
								<label>Đánh Giá &</label>
								<span>Khiếu nại</span>
							</div>
						</a>
					</li>
					<li>
						<a href="" title="">
							<div>
								<img src="/img/recruitment.png" alt="tin tuyen dung">
							</div>
							<div>
								<label>Tin</label>
								<span>TUYỂN DỤNG</span>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="row1" style="background: #FCB71E;">
			<div class="row container">
				<div class="col col-sm-4 klk">
					
					<div class="dropdown" style="margin-left: 80px; margin-top:10px; margin-bottom: 10px; pading:auto;">
						<button class="btn  dropdown-toggle" type="button" data-toggle="dropdown" style="background-color:#FCB71E !important; "><span style="color: white;">Tra cứu - Định vị</span>
							<span class="caret" style="margin-left: 80px;"></span></button>
							<ul class="dropdown-menu" style="background-color:#ececec;">
								<li style="text-center"><a href="#"><span class="glyphicon glyphicon-map-marker"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span>Định Vị Bưu Gửi</a>
									<div>
										<input type="text" name="input"  placeholder="nhập mã gửi" style="hight:36px; margin-right: 2px;">
										<button type="button" class="btn btn-primary" style="height:36px;"><span class="glyphicon glyphicon-search"></span></button>

									</div>
								</li>
								<li style="text-center"><a href="#"><span class="glyphicon glyphicon-sound-dolby"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span>Mạng lưới bưu cục</a></li>
								<li style="text-center"><a href="#"><span class="	glyphicon glyphicon-th-list"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span>Mạng lưới bưu cục</a></li>
								<li style="text-center"><a href="#"><span class="	glyphicon glyphicon-exclamation-sign"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span>Tra Cứu Hàng Cấm Gửi</a></li>
								<li style="text-center"><a href="#"><span class="glyphicon glyphicon-zoom-in"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span>Tra cứu kì cước KHL</a></li>
								<li style="text-center"><a href="#"><span class="glyphicon glyphicon-duplicate"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span>Mã Địa Chỉ Bưu Chính</a></li>
							</ul>
						</div> 
						
					</div>
					<div class="col col-sm-8">
						<nav class="nav">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
									<i class="fa fa-bars"></i>
								</button>
							</div>
							<div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse vip5">
								<ul class="nav nav-pills nav-justified ul-main-menu" style="margin-top: 8px;">

									<li><a href="http://www.vnpost.vn/dich-vu/buu-chinh-chuyen-phat" id="dnn_ctl11_rptService_hplMenu_0"><span>Bưu chính chuyển</span>&nbsp;<span>phát</span></a></li>

									<li><a href="http://www.vnpost.vn/dich-vu/nhom/id/104/key/tai-chinh-buu-chinh" id="dnn_ctl11_rptService_hplMenu_1"><span>Tài Chính Bưu</span>&nbsp;<span>Chính</span></a></li>

									<li><a href="http://www.vnpost.vn/dich-vu/nhom/id/107/key/phan-phoi-truyen-thong" id="dnn_ctl11_rptService_hplMenu_2"><span>Phân Phối - Truyền</span>&nbsp;<span>Thông</span></a></li>

									<li><a href="http://www.vnpost.vn/tin-tuc" id="dnn_ctl11_rptService_hplMenu_3">Tin tức</a></li>



									<li>
										<a href="https://mail.vnpost.vn/owa">EMAIL</a>
									</li>
								</ul>
							</div>
						</nav>

					</div>
				</div>

			</div>

		</div>
		<!--Danh Muc-->
		<div class="row danhsachtintuc">
			<div class="container" style="height: 1200px; ">

				<div class="leftds" >
					<div id="left-menu" class="navbar-collapse">
					<h2>
						Chuyên mục
					</h2>

					<ul>

						<li>
							<a id="dnn_ctr812_View_uc_rptCategory_hplMainCategory_0" href="/vi-vn/bai-viet/nhom/id/355/key/tin-vietnam-post">Tin Vietnam Post</a>
							<ul id="dnn_ctr812_View_uc_rptCategory_ulSubMenu_0">


								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_0_hplSubCategory_0" href="/vi-vn/bai-viet/nhom/id/356/key/hoat-dong-nganh">Hoạt động ngành</a>
								</li>

								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_0_hplSubCategory_1" href="/vi-vn/bai-viet/nhom/id/154/key/thuong-mai-dien-tu">Thương mại điện tử</a>
								</li>

								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_0_hplSubCategory_2" href="/vi-vn/bai-viet/nhom/id/357/key/hanh-chinh-cong">Hành chính công</a>
								</li>

								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_0_hplSubCategory_3" href="/vi-vn/bai-viet/nhom/id/151/key/chi-tra-luong-huu-bao-tro-xa-hoi">Chi trả lương hưu, bảo trợ xã hội</a>
								</li>


							</ul>
						</li>

						<li>
							<a id="dnn_ctr812_View_uc_rptCategory_hplMainCategory_1" href="/vi-vn/bai-viet/nhom/id/150/key/buu-dien-van-hoa-xa">Bưu điện - Văn hóa xã </a>

						</li>

						<li>
							<a id="dnn_ctr812_View_uc_rptCategory_hplMainCategory_2" href="/vi-vn/bai-viet/nhom/id/358/key/nguoi-buu-dien">Người bưu điện</a>
							<ul id="dnn_ctr812_View_uc_rptCategory_ulSubMenu_2">


								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_2_hplSubCategory_0" href="/vi-vn/bai-viet/nhom/id/143/key/guong-dien-hinh">Gương điển hình</a>
								</li>

								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_2_hplSubCategory_1" href="/vi-vn/bai-viet/nhom/id/142/key/hoat-dong-cong-dong">Hoạt động cộng đồng </a>
								</li>

								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_2_hplSubCategory_2" href="/vi-vn/bai-viet/nhom/id/146/key/viet-thu-upu">Viết thư UPU</a>
								</li>

								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_2_hplSubCategory_3" href="/vi-vn/bai-viet/nhom/id/153/key/tim-hieu-tem-buu-chinh">Tìm hiểu Tem Bưu chính</a>
								</li>


							</ul>
						</li>

						<li>
							<a id="dnn_ctr812_View_uc_rptCategory_hplMainCategory_3" href="/vi-vn/bai-viet/nhom/id/359/key/hoat-dong-dang-doan-the">Hoạt động Đảng - Đoàn thể</a>
							<ul id="dnn_ctr812_View_uc_rptCategory_ulSubMenu_3">


								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_3_hplSubCategory_0" href="/vi-vn/bai-viet/nhom/id/152/key/cong-tac-dang">Công tác Đảng</a>
								</li>

								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_3_hplSubCategory_1" href="/vi-vn/bai-viet/nhom/id/149/key/cong-doan">Công đoàn</a>
								</li>

								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_3_hplSubCategory_2" href="/vi-vn/bai-viet/nhom/id/360/key/doan-thanh-nien">Đoàn thanh niên</a>
								</li>

								<li>
									<a id="dnn_ctr812_View_uc_rptCategory_rptSubCategory_3_hplSubCategory_3" href="/vi-vn/bai-viet/nhom/id/387/key/gop-y-kien-xay-dung-co-che-chinh-sach">Góp ý kiến xây dựng cơ chế - chính sách</a>
								</li>


							</ul>
						</li>

					</ul>

					<div class="hotline-box">
						<label>
							Đường dây nóng hỗ trợ
						</label>
						<h2>
							1900 54 54 81
						</h2>
					</div>
				</div>
				</div>

				
       
				<div class="rightds">
					

					<div class="tenbv" >
						<h1>${baiviet.tenBV}</h1>
					</div>
					<div class="icon" >
						<label class="news-date" >
							${baiviet.me}
						</label>
					</div>
					<div class="chitiet" >
						<h1>Trước lo lắng của nhiều người, Trung tâm kiểm soát và phòng ngừa dịch bệnh (CDC) và Tổ chức Y tế Thế giới (WHO) đã có những giải thích nhằm trấn an người dùng.</h1>
						<img src="/img/${baiviet.photo}" alt="" style="width: 200px; height= 220px; ">
						<h1 id="hid" style="max-height:300px;">
							${baiviet.noidung}
						</h1>
					</div>
					
					<div>
					số lượt xem : ${baiviet.sobaiviet}
					</div>
					<div style="margin-top:0;">
					<h2>
					Comments</h2></div>
					<div>
                 <div class="fb-comments" data-href="http://localhost:8888/chitiet/6" data-width="400" data-numposts="3"  ></div>
                  </div>
					
					
					<div class="chuthic">
						<div class="col-sm-12 cnpost">
							<h2>Các tin khác</h2>
							<ol style="list-style-type:decimal">
							<c:forEach var="m" items="${dsbvtheocm}">
								<li>
									<a  href="/chitiet/${m.id}">${m.tenBV}</a>
									<label class="news-date">
										18/02/2020
										
									</label>
								</li>
								
								</c:forEach>

							</ol>
						</div>
					</div>
					<div class="thongtin">
                   
					</div>


					
				</div>

			</div>
		</div>

		<div class="row pre-footer col-xs-hidden" style="margin-top:0px;">
			<div class="container">
				<!-- BEGIN BOTTOM ABOUT BLOCK -->


				<div class="col-md-4 col-sm-4 col-xs-12 pre-footer-col">
					<h2 class="ellipsisTitle">
						Bưu chính chuyển phát
					</h2>
					<ul>

						<li>
							<a href="http://www.vnpost.vn/dich-vu/nhom/id/108/key/buu-chinh-chuyen-phat" id="dnn_ctl12_rptMainCategory_rptSubCategory_0_linkSubCategory_0" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_0_ltrSubCategory_0" title="Bưu chính chuyển phát Trong nước">Bưu chính chuyển phát Trong nước</span>
							</a>
						</li>

						<li>
							<a href="http://ipostal.vnpost.vn/" id="dnn_ctl12_rptMainCategory_rptSubCategory_0_linkSubCategory_1" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_0_ltrSubCategory_1" title="Bưu chính chuyển phát Quốc tế">Bưu chính chuyển phát Quốc tế</span>
							</a>
						</li>

					</ul>
				</div>

				<div class="col-md-4 col-sm-4 col-xs-12 pre-footer-col">
					<h2 class="ellipsisTitle">
						Tài chính bưu chính
					</h2>
					<ul>

						<li>
							<a href="/vi-vn/dich-vu/chi-tiet/id/116/key/bao-hiem-phi-nhan-tho-pti" id="dnn_ctl12_rptMainCategory_rptSubCategory_1_linkSubCategory_0" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_1_ltrSubCategory_0" title="Bảo hiểm phi nhân thọ PTI">Bảo hiểm phi nhân thọ PTI</span>
							</a>
						</li>

						<li>
							<a href="/vi-vn/dich-vu/chi-tiet/id/118/key/thu-ho-chi-ho" id="dnn_ctl12_rptMainCategory_rptSubCategory_1_linkSubCategory_1" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_1_ltrSubCategory_1" title="Thu hộ - Chi hộ">Thu hộ - Chi hộ</span>
							</a>
						</li>

						<li>
							<a href="/vi-vn/dich-vu/chi-tiet/id/122/key/dai-ly-bao-hiem-nhan-tho-dai-ichi" id="dnn_ctl12_rptMainCategory_rptSubCategory_1_linkSubCategory_2" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_1_ltrSubCategory_2" title="Đại lý Bảo hiểm nhân thọ (Dai-ichi)">Đại lý Bảo hiểm nhân thọ (Dai-ichi)</span>
							</a>
						</li>

						<li>
							<a href="/vi-vn/dich-vu/chi-tiet/id/162/key/dai-ly-ngan-hang" id="dnn_ctl12_rptMainCategory_rptSubCategory_1_linkSubCategory_3" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_1_ltrSubCategory_3" title="Đại lý ngân hàng">Đại lý ngân hàng</span>
							</a>
						</li>

						<li>
							<a href="/vi-vn/dich-vu/chi-tiet/id/161/key/dich-vu-chuyen-tien-trong-nuoc" id="dnn_ctl12_rptMainCategory_rptSubCategory_1_linkSubCategory_4" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_1_ltrSubCategory_4" title="Dịch vụ Chuyển tiền trong nước">Dịch vụ Chuyển tiền trong nước</span>
							</a>
						</li>

					</ul>
				</div>

				<div class="col-md-4 col-sm-4 col-xs-12 pre-footer-col">
					<h2 class="ellipsisTitle">
						Phân phối - Truyền thông
					</h2>
					<ul>

						<li>
							<a href="/vi-vn/dich-vu/chi-tiet/id/139/key/san-thuong-mai-dien-tu-postmart" id="dnn_ctl12_rptMainCategory_rptSubCategory_2_linkSubCategory_0" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_2_ltrSubCategory_0" title="Sàn thương mại điện tử POSTMART">Sàn thương mại điện tử POSTMART</span>
							</a>
						</li>

						<li>
							<a href="/vi-vn/dich-vu/chi-tiet/id/103/key/truyen-thong-quang-cao" id="dnn_ctl12_rptMainCategory_rptSubCategory_2_linkSubCategory_1" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_2_ltrSubCategory_1" title="Truyền thông, quảng cáo">Truyền thông, quảng cáo</span>
							</a>
						</li>

						<li>
							<a href="http://www.vnpost.vn/vi-vn/dich-vu/chi-tiet/id/142/key/phan-phoi-xuat-ban-an-pham" id="dnn_ctl12_rptMainCategory_rptSubCategory_2_linkSubCategory_2" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_2_ltrSubCategory_2" title="Phân phối xuất bản ấn phẩm">Phân phối xuất bản ấn phẩm</span>
							</a>
						</li>

						<li>
							<a href="/vi-vn/dich-vu/chi-tiet/id/127/key/dich-vu-vien-thong-cntt" id="dnn_ctl12_rptMainCategory_rptSubCategory_2_linkSubCategory_3" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_2_ltrSubCategory_3" title="Dịch vụ Viễn thông - CNTT">Dịch vụ Viễn thông - CNTT</span>
							</a>
						</li>

						<li>
							<a href="/vi-vn/dich-vu/chi-tiet/id/128/key/dich-vu-phan-phoi-hang-hoa" id="dnn_ctl12_rptMainCategory_rptSubCategory_2_linkSubCategory_4" class="ellipsisTitle">
								<span id="dnn_ctl12_rptMainCategory_rptSubCategory_2_ltrSubCategory_4" title="Dịch vụ phân phối hàng hoá">Dịch vụ phân phối hàng hoá</span>
							</a>
						</li>

					</ul>
				</div>

			</div>
		</div>

		<div class="row footer">
			<div class="container">
				<div class="col-md-7 col-sm-7 footer-info">
					<label class="copyright">
						Tổng công ty bưu điện việt nam - VIETNAM POST
					</label>
					<span>
						Địa chỉ: Số 05 đường Phạm Hùng - Mỹ Đình 2 - Nam Từ Liêm - Hà Nội - Việt Nam
					</span>
					<span>
						Ghi rõ nguồn "www.vnpost.vn" khi phát hành lại thông tin từ website này
					</span>
				</div>
				<div class="col-md-4 col-sm-4">
					<ul class="social-footer list-unstyled list-inline pull-right"> 
						<li><a href="https://www.facebook.com/vnpost.vn" target="_blank"><i class="fa fa-facebook fa-2x"></i></a>
						</li>
						<li><a href="https://twitter.com/buudienvietnam" target="_blank"><i class="fa fa-twitter fa-2x"></i></a>
						</li> 
						<li><a href="https://www.linkedin.com/in/tt-dvkh-529b25197/" target="_blank"><i class="fa fa-linkedin-square fa-2x"></i></a>
						</li>

						<li><a href="/desktopmodules/vnp_webapi/rssfeed.aspx" target="_blank"><i class="fa fa-rss fa-2x"></i></a></li>
					</ul>
				</div>`
			</div>
			
		</div>
