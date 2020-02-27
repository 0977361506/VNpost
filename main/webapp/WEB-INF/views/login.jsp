<%@ page language="java" pageEncoding="utf-8"%>
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
	</style>
</head>
<body>
	<!-- Navigation -->
	<nav  class="navbar navbar-expand-md navbar-light bg-light sticky-top vip2" >
		<div class="container-fluid">
			<div class="row">
				<div class="col col-sm-3 col-left" style="padding-left: 100px;">
					<span class="glyphicon glyphicon-earphone"></span>
					<i class="hotline">Giới Thiệu</i>&nbsp;
					<strong class="hotnumber">1900 54 54 81</strong>
				</div>
				<div class="col col-sm-9 col-right" style="padding-right: 200px;">
					<ul class="list-unstyled list-inline" style="float: right">
						<li><a href="/tintuc/vn" title=""></a>Giới Thiệu</li>
						<li><a href="/tintuc/vn" title=""></a>Hỏi Đáp</li>
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
				<a href="" title="">
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

									<li><a href="/tintuc/vn" id="dnn_ctl11_rptService_hplMenu_0"><span>Bưu chính chuyển</span>&nbsp;<span>phát</span></a></li>

									<li><a href="http://www.vnpost.vn/dich-vu/nhom/id/104/key/tai-chinh-buu-chinh" id="dnn_ctl11_rptService_hplMenu_1"><span>Tài Chính Bưu</span>&nbsp;<span>Chính</span></a></li>

									<li><a href="http://www.vnpost.vn/dich-vu/nhom/id/107/key/phan-phoi-truyen-thong" id="dnn_ctl11_rptService_hplMenu_2"><span>Phân Phối - Truyền</span>&nbsp;<span>Thông</span></a></li>

									<li><a href="/tintuc/vn" id="dnn_ctl11_rptService_hplMenu_3">Tin tức</a></li>



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
		<!-- slider -->
		<div class="rowss" style="width: 100%; height: 100%;">

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="/img/90-nam-Dang.jpg" alt="Los Angeles" style="width:100%;">
					</div>

					<div class="item">
						<img src="/img/BANNER POSTMART 02.jpg" alt="Chicago" style="width:100%;">
					</div>

					<div class="item">
						<img src="/img/90-nam-Dang.jpg" alt="New york" style="width:100%;">
					</div>

				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>

<div class="row" style="height: 560px; background-color: #FFFAD5;">
		<div class="container">
			<div class="panel panel-default hello" style="height: 400px; width: 380px; margin: 40px 400px ; margin-bottom: 100px;">
				<div class="panel-body" >
					<div>
						<form action="/login/home" method="post" accept-charset="utf-8">
						<p>${mes}</p>
							<div class="form-group">
								<label>Ten tai khoan</label>
								<input  name="id" class="form-control" style="margin-left: 80px; width: 60%;"  >
							</div>
							<div class="form-group">
								<label>Mat khau</label>
								<input  name="pw"  class="form-control" style="margin-left: 80px; width: 60%;"  >
							</div>
					
                                    <div class="form-group">
 <div class="form-control" style="margin-left: 80px; width: 60%;" >
  <input type="checkbox" name="rm">
  <label>Remember PassWord </label>
 </div>
  
</div>
							
							<div class="form-group" style="margin-left: 80px; margin-top: 40px; ">
								<button class="btn btn-sm btn-success">
									Dang Nhap
								</button>
								<button class="btn btn-sm btn-success">
									Thoat
								</button>
							</div>
							
							<div>
							   <a href="/account/register" title="">Quên mật khẩu</a>
							</div>
							<div>
							   <a href="/login/email" title="">Email</a>
							</div>
						</form>
					</div>
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
				</div>
			</div>
		</div>
