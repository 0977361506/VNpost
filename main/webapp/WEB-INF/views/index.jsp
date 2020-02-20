<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
					<i class="hotline"><s:message code="gioithieu.gt.vn"></s:message></i>&nbsp;
					<strong class="hotnumber">1900 54 54 81</strong>
				</div>
				<div class="col col-sm-9 col-right" style="padding-right: 200px;">
					<ul class="list-unstyled list-inline" style="float: right">
						<li><a href="" title=""></a><s:message code="hoidap.gt.vn"></s:message></li>
						<li><a href="" title=""></a><s:message code="lienhe.gt.vn"></s:message></li>
						<li><a href="" title=""></a><s:message code="danhgia.gt.vn"></s:message></li>
						<li><a href="/home/login" title="">Login</a></li>
						<li>
							<div class="lang">
								<span class="ngonngu">
								<a href="#" data-lang="vi"><img src="/img/vi-VN.gif"" alt="us-US"></a>
								
								</span>
								<span class="ngonngu1">
								<a href="#" data-lang="en"><img src="/img/en-US.gif" alt="us-US"></a>
									
								</span>
							</div>
						</li>
						<li >
                             <form action="/timkiem/baiviet" method="post">
                              <input name="search" type="text" id="tk1" class="search-form-index" placeholder="Tìm kiếm" style="border: none; border-radius: 15px;">
                              
							   <button type="submit" class="btn btn-primary" style="height:26px;"><span class="glyphicon glyphicon-search"></span></button>
                             </form>
							
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
								<label><s:message code="danhgia.gt.vn"></s:message></label>
								<span><s:message code="tintd.gt.vn"></s:message></span>
							</div>
						</a>
					</li>
					<li>
						<a href="" title="">
							<div>
								<img src="/img/recruitment.png" alt="tin tuyen dung">
							</div>
							<div>
								<label><s:message code="taichinh.gt.vn"></s:message></label>
								<span><s:message code="buuchinh.gt.vn"></s:message></span>
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
							<button class="btn  dropdown-toggle" type="button" data-toggle="dropdown" style="background-color:#FCB71E !important; "><span style="color: white;"><s:message code="danhgia.gt.vn"></s:message></span>
								<span class="caret" style="margin-left: 80px;"></span></button>
								<ul class="dropdown-menu" style="background-color:#ececec;">
									<li style="text-center"><a href="#"><span class="glyphicon glyphicon-map-marker"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span><s:message code="danhgia.gt.vn"></s:message></a>
                                     <div>
                                     	<input type="text" name="input"  placeholder="nhập mã gửi" style="hight:36px; margin-right: 2px;">
                                     	<button type="button" class="btn btn-primary" style="height:36px;"><span class="glyphicon glyphicon-search"></span></button>
                                
                                     </div>
									</li>
									<li style="text-center"><a href="#"><span class="glyphicon glyphicon-sound-dolby"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span><s:message code="danhgia.gt.vn"></s:message></a></li>
									<li style="text-center"><a href="#"><span class="	glyphicon glyphicon-th-list"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span><s:message code="danhgia.gt.vn"></s:message></a></li>
									<li style="text-center"><a href="#"><span class="	glyphicon glyphicon-exclamation-sign"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span><s:message code="danhgia.gt.vn"></s:message></a></li>
									<li style="text-center"><a href="#"><span class="glyphicon glyphicon-zoom-in"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span><s:message code="danhgia.gt.vn"></s:message></a></li>
									<li style="text-center"><a href="#"><span class="glyphicon glyphicon-duplicate"></span> <span style="margin-right: 1px; margin-left: 1px;">|</span><s:message code="danhgia.gt.vn"></s:message></a></li>
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

									<li><a href="/tintuc/vn" id="dnn_ctl11_rptService_hplMenu_0"><s:message code="chuyentrang.gt.vn"></s:message></a></li>

									<li><a href="/tintuc/vn" id="dnn_ctl11_rptService_hplMenu_1"><span><s:message code="tintuc.gt.vn"></s:message></span>&nbsp;<span><s:message code="muasam.t.vn"></s:message></span></a></li>

									<li><a href="/tintuc/vn" id="dnn_ctl11_rptService_hplMenu_2"><span><s:message code="lienhe.gt.vn"></s:message></span>&nbsp;<span><s:message code="hoidap.gt.vn"></s:message></span></a></li>

									<li><a href="/tintuc/vn"><s:message code="taichinh.gt.vn"></s:message></a></li>



									<li>
										<a href="https://mail.vnpost.vn/owa"><s:message code="tracuu.gt.vn"></s:message></a>
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


		<div class="row main-service-wrapper">
			<div class="container">
				<div class="col-sm-4 quick-access-col index-main-col">
					<div id="dnn_LeftPane"><div class="DnnModule DnnModule-VNP_FrontEndDynamicViews DnnModule-872"><a name="872"></a><div id="dnn_ctr872_ContentPane"><!-- Start_Module_872 --><div id="dnn_ctr872_ModuleContent" class="DNNModuleContent ModVNPFrontEndDynamicViewsC">


						<h2 class="hidden-xs">
						<s:message code="chuyenmuc.v"></s:message>
						</h2>

						<div class="content-col hidden-xs">
							<ul>

								<li>
									<a href="/vi-vn/noi-khong-voi-rac-thai-nhua" id="dnn_ctr872_View_uc_rptCategory_linkCategory_0">
										<div class="clearfix">
											<div class="col-left col-sm-2 col-xs-2">
												<img src="/img/Recycle.png" id="dnn_ctr872_View_uc_rptCategory_imgPicture_0" alt="Recycle">
											</div>
											<div class="col-left col-sm-10 col-xs-10">
												<label>
													<s:message code="danhgia.gt.vn"></s:message>
												</label>
												<span>
													
												</span>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/vi-vn/tong-hop-bao-chi" id="dnn_ctr872_View_uc_rptCategory_linkCategory_1">
										<div class="clearfix">
											<div class="col-left col-sm-2 col-xs-2">
												<img src="/img/newspaper.png" id="dnn_ctr872_View_uc_rptCategory_imgPicture_1" alt="newspaper">
											</div>
											<div class="col-left col-sm-10 col-xs-10">
												<label>
													<s:message code="taichinh.gt.vn"></s:message>
												</label>
												<span>
												
												</span>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/vi-vn/bai-viet/chi-tiet/id/83247/key/ban-cong-bo-hop-quy-chat-luong-dich-vu-buu-chinh-cong-ich" id="dnn_ctr872_View_uc_rptCategory_linkCategory_2">
										<div class="clearfix">
											<div class="col-left col-sm-2 col-xs-2">
												<img src="/img/quan-ly-chat-luong.png" id="dnn_ctr872_View_uc_rptCategory_imgPicture_2" alt="quan-ly-chat-luong">
											</div>
											<div class="col-left col-sm-10 col-xs-10">
												<label>
													<s:message code="tintd.gt.vn"></s:message>
												</label>
												<span>
													
												</span>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/vi-vn/tem-buu-chinh" id="dnn_ctr872_View_uc_rptCategory_linkCategory_3">
										<div class="clearfix">
											<div class="col-left col-sm-2 col-xs-2">
												<img src="/img/stamp.png" id="dnn_ctr872_View_uc_rptCategory_imgPicture_3" alt="stamp">
											</div>
											<div class="col-left col-sm-10 col-xs-10">
												<label>
													<s:message code="buuchinh.gt.vn"></s:message>
												</label>
												<span>
												<s:message code="danhgia.gt.vn"></s:message>
												</span>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/vi-vn/thi-dua-khen-thuong" id="dnn_ctr872_View_uc_rptCategory_linkCategory_4">
										<div class="clearfix">
											<div class="col-left col-sm-2 col-xs-2">
												<img src="/img/thi-dua-khen-thuong.png" id="dnn_ctr872_View_uc_rptCategory_imgPicture_4" alt="thi-dua-khen-thuong">
											</div>
											<div class="col-left col-sm-10 col-xs-10">
												<label>
													<s:message code="temgt.vn"></s:message>
												</label>
												<span>
											
												</span>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/vi-vn/dao-tao" id="dnn_ctr872_View_uc_rptCategory_linkCategory_5">
										<div class="clearfix">
											<div class="col-left col-sm-2 col-xs-2">
												<img src="/img/quan-ly-chat-luong.png" id="dnn_ctr872_View_uc_rptCategory_imgPicture_5" alt="training">
											</div>
											<div class="col-left col-sm-10 col-xs-10">
												<label>
												<s:message code="tintuc.gt.vn"></s:message>
												</label>
												<span>
												
												</span>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/vi-vn/van-ban" id="dnn_ctr872_View_uc_rptCategory_linkCategory_6">
										<div class="clearfix">
											<div class="col-left col-sm-2 col-xs-2">
												<img src="/img/folder.png" id="dnn_ctr872_View_uc_rptCategory_imgPicture_6" alt="folder">
											</div>
											<div class="col-left col-sm-10 col-xs-10">
												<label>
													<s:message code="danhgia.gt.vn"></s:message>
												</label>
												<span>
													<s:message code="danhgia.gt.vn"></s:message>
												</span>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/vi-vn/ky-niem-10-nam" id="dnn_ctr872_View_uc_rptCategory_linkCategory_7">
										<div class="clearfix">
											<div class="col-left col-sm-2 col-xs-2">
												<img src="/img/folder.png" id="dnn_ctr872_View_uc_rptCategory_imgPicture_7" alt="Celebrate">
											</div>
											<div class="col-left col-sm-10 col-xs-10">
												<label>
												<s:message code="danhgia.gt.vn"></s:message>
												</label>
												<span>
													<s:message code="danhgia.gt.vn"></s:message>
												</span>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/vi-vn/thong-tin-tai-chinh-doanh-nghiep" id="dnn_ctr872_View_uc_rptCategory_linkCategory_8">
										<div class="clearfix">
											<div class="col-left col-sm-2 col-xs-2">
												<img src="/img/quan-ly-chat-luong.png" id="dnn_ctr872_View_uc_rptCategory_imgPicture_8" alt="list-top">
											</div>
											<div class="col-left col-sm-10 col-xs-10">
												<label>
													<s:message code="danhgia.gt.vn"></s:message>
												</label>
												<span>
													<s:message code="danhgia.gt.vn"></s:message>
												</span>
											</div>
										</div>
									</a>
								</li>

							</ul>
						</div>


					</div><!-- End_Module_872 --></div>
				</div></div>
			</div>
			<div class="col-sm-8 index-main-col news-index-col">
				<div id="dnn_RightPane"><div class="DnnModule DnnModule-VNP_FrontEndDynamicViews DnnModule-641"><a name="641"></a>
					<div class="DNNContainer_noTitle">
						<div id="dnn_ctr641_ContentPane"><!-- Start_Module_641 --><div id="dnn_ctr641_ModuleContent" class="DNNModuleContent ModVNPFrontEndDynamicViewsC">

							<h2>
								<s:message code="tintuc.gt.vn"></s:message>
							</h2>
							<div class="news-wrapper">
								<div id="dnn_ctr641_View_uc_divLast1" class="col-sm-6 lastest-news-col col-left" onmouseover="setMouseOver(true);" onmouseout="setMouseOver(false);">
									<img id="dnn_ctr641_View_uc_imgMain" src="/img/Thi dua 2020.jpg" style="width:100%; height:50%; ">
									<a href="/vi-vn/bai-viet/chi-tiet/id/92066/key/phat-dong-chuong-trinh-thi-dua-phan-dau-hoan-thanh-vuot-muc-cac-chi-tieu-ke-hoach-2020" id="dnn_ctr641_View_uc_linkMain" ref="link">Phát động Chương trình thi đua Phấn đấu hoàn thành vượt mức các chỉ tiêu kế hoạch 2020</a>
									<span id="dnn_ctr641_View_uc_lblPublishMain" class="publish-time">
										10/02/2020
									</span>
									<p id="dnn_ctr641_View_uc_lblBriefMain">
										Với mục tiêu phát huy tinh thần tự chủ, sáng tạo đổi mới trong hoạt động sản xuất kinh doanh và quản lý doanh nghiệp, tạo động lực, khuyến khích các đơn vị và cá nhân nỗ lực thúc...
									</p>
								</div>
								<div class="col-sm-6 older-news-list-col col-right col-left">



									<div class="row" ref="small">
										<div class="col-md-4 col-sm-3">
											<img src="/img/Thi dua 2020.jpg" style="width:100%; height:50%;">
										</div>
										<div class="col-md-8 col-sm-9 col-left">
											<a href="/vi-vn/bai-viet/chi-tiet/id/92065/key/chap-nhan-van-chuyen-ra-nuoc-ngoai-trang-thiet-bi-y-te-phong-chong-dich-ncov-vi-muc-dich-nhan-dao" id="dnn_ctr641_View_uc_rptLastestNew_linkLastest_1" ref="link" title="Chấp nhận vận chuyển ra nước ngoài trang thiết bị y tế phòng, chống dịch nCoV vì mục đích nhân đạo">Chấp nhận vận chuyển ra nước ngoài trang thiết bị y tế phòng, chống dịch nCoV vì mục đích nhân đạo</a>
											<span class="publish-time" ref="publish">
												10/02/2020
											</span>
										</div>
										<span style="display: none" ref="brief">
											Nhằm hỗ trợ, chia sẻ với nhân dân các quốc gia trong việc phòng, chống dịch viêm đường hô hấp cấp do chủng mới của virus Corona gây ra, ngày 06/2/2020, Bộ TT&amp;TT đã ra thông báo về...
										</span>
									</div>


									<div class="row" ref="small">
										<div class="col-md-4 col-sm-3">
											<img src="/img/IMG_20200208_132843.jpg" style="width:100%; height:50%;">
										</div>
										<div class="col-md-8 col-sm-9 col-left">
											<a href="/vi-vn/bai-viet/chi-tiet/id/92062/key/gioi-thieu-bo-tem-tem-tinh-yeu" id="dnn_ctr641_View_uc_rptLastestNew_linkLastest_3" ref="link" title="Giới thiệu bộ tem &quot;TEM TÌNH YÊU”">Giới thiệu bộ tem "TEM TÌNH YÊU”</a>
											<span class="publish-time" ref="publish">
												08/02/2020
											</span>
										</div>
										<span style="display: none" ref="brief">
											Ngày 14/02/2020, Bộ Thông tin và Truyền thông sẽ phát hành bộ tem “Tem Tình yêu”. Với Bưu điện Việt Nam, mong muốn phát hành bộ tem Tình yêu để qua con tem, ai cũng cảm thấy mình...
										</span>
									</div>



								</div>
							</div>
							<script type="text/javascript">
								var selectedIndex = 0;
								var lstDetail;
								var isMouseOver = false;

								var mainImg;
								var mainLink;
								var mainPublish;
								var mainBrief;

								function setMouseOver(val) {
									isMouseOver = val;
								}
								function initSlider() {
									mainImg = $('#dnn_ctr641_View_uc_imgMain');
									mainLink = $('#dnn_ctr641_View_uc_linkMain');
									mainPublish = $('#dnn_ctr641_View_uc_lblPublishMain');
									mainBrief = $('#dnn_ctr641_View_uc_lblBriefMain');

									lstDetail = $('[ref="small"]');
									lstDetail.first().addClass('item-selected');
								}

								function doSlider() {
									if (lstDetail.length == 0) return;

									if (!isMouseOver) {
										var newIndex = (selectedIndex + 1) % lstDetail.length;

            lstDetail.eq(selectedIndex).removeClass('item-selected'); // Current item
            lstDetail.eq(newIndex).toggleClass('item-selected'); // New item

            var img = lstDetail.eq(newIndex).find('[ref="img"]');
            mainImg.attr('src', img.attr('src'));

            var link = lstDetail.eq(newIndex).find('[ref="link"]');
            mainLink.text(link.text());
            mainLink.attr('href', link.attr('href'));

            var publish = lstDetail.eq(newIndex).find('[ref="publish"]');
            mainPublish.text(publish.text());

            var brief = lstDetail.eq(newIndex).find('[ref="brief"]');
            mainBrief.text(brief.text());

            selectedIndex = newIndex;
        }
        setTimeout("doSlider()", 5000);
    }

    $(document).ready(function () {
    	initSlider();
    	setTimeout("doSlider()", 5000);
    });
</script>
<style type="text/css">
	.item-selected {
		background-color: #fcb71e;
	}
</style>


</div><!-- End_Module_641 --></div>
<div class="clear"></div>
</div>
</div></div>
</div>
</div>
</div>
<div class="jumbotron">
	<div class="row">
		<div class="col col-sm-4">
			<div class="thumbnail" style="color: inherit; background-color: #eee; border:none;">
				<a href="#">
					<img src="/img/BCCP-quoc-te.png" class="img-circle" alt="Cinque Terre" width="304" height="236">
					<div class="caption">
						<div class="text-center">
							<p>Bưu chính chuyển phát Trong nước</p>


							<p> Bưu chính chuyển phát Quốc tế</p>
						</div>
					</div>
				</a>
			</div>
		</div>
		<div class="col col-sm-4" >
			<div class="thumbnail" style="color: inherit; background-color: #eee; border:none;">
				<a href="#">
					<img src="/img/Banner-website.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236">
					<div class="caption">
						<div class="text-center">
							<p>Bảo hiểm phi nhân thọ PTI</p> 

							<p>Thu hộ - Chi hộ</p>
						</div>
					</div>
				</a>
			</div>
		</div>
		<div class="col col-sm-4">
			<div class="thumbnail" style="color: inherit; background-color: #eee; border:none;">
				<a href="#">
					<img src="/img/BCCP-quoc-te.png" class="img-circle" alt="Cinque Terre" width="304" height="236">
					<div class="caption">
						<div class="text-center">
							<p>Truyền thông, quảng cáo</p>  


							<p> Phân phối xuất bản ấn phẩm</p>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>

<!--video -->
<div class="row main-service-wrapper">
	<div class="container">
		<div class="col-sm-6">
			<div id="dnn_Home_1_2_Left"><div class="DnnModule DnnModule-VNP_FrontEndDynamicViews DnnModule-1066"><a name="1066"></a>
				<div class="DNNContainer_noTitle">
					<div id="dnn_ctr1066_ContentPane"><!-- Start_Module_1066 --><div id="dnn_ctr1066_ModuleContent" class="DNNModuleContent ModVNPFrontEndDynamicViewsC">


						<div class="video-home">
							<h1>
								<a id="dnn_ctr1066_View_uc_hplVideo" href="/vi-vn/da-phuong-tien/video">Thư viện video</a>
							</h1>
							<div class="html5gallery" data-skin="horizontal" data-width="720" data-height="407" data-resizemode="fill" data-autoslide="true" data-responsive="true" style="display: block; position: relative; max-width: 100%; width: 540px; height: 310px;">
								<a href="https://youtu.be/4F7k36u7G6M" id="dnn_ctr1066_View_uc_linkVideo" style="display: none;">
									<img src="http://img.youtube.com/vi/TzYhQ9iuzyo/2.jpg"></a>
									<div class="html5gallery-container-0" style="width: 540px; height: 310px;"><div class="html5gallery-box-0" style="width: 528px; height: 298px;"><div class="html5gallery-elem-0" style="width: 528px; height: 298px;"><div class="html5gallery-loading-center-0"></div><iframe id="html5gallery-elem-video-0" style="display:block;position:absolute;overflow:hidden;top:0px;left:0px;width:528px;height:298px;" frameborder="0" allowfullscreen="1" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" title="YouTube video player" width="528" height="298" src="https://www.youtube.com/embed/4F7k36u7G6M?html5=1&amp;controls=1&amp;showinfo=1&amp;autoplay=0&amp;rel=0&amp;wmode=transparent&amp;enablejsapi=1&amp;origin=http%3A%2F%2Fwww.vnpost.vn&amp;widgetid=1"></iframe><a style="text-decoration:none;" target="_blank" href="http://html5box.com/html5gallery/watermark.php"><div style="display:block;visibility:visible;position:absolute;top:10px;left:10px;width:170px;height:18px;line-height:18px;text-align:center;border-radius:5px;-moz-border-radius:5px;-webkit-border-radius:5px;background-color:#fff;color:#333;font-size:12px;font-family:Arial,Helvetica,sans-serif;">HTML5 Gallery Free Version</div></a></div><div class="html5gallery-title-0" style="width: 528px; display: none;"></div><div class="html5gallery-timer-0" style="width: 0px; top: 296px;"></div><div class="html5gallery-viral-0" style="top: 0px;"></div><div class="html5gallery-toolbox-0" style="display: none;"><div class="html5gallery-toolbox-bg-0"></div><div class="html5gallery-toolbox-buttons-0"><div class="html5gallery-play-0" style="top: 242px; left: 432px; display: none;"></div><div class="html5gallery-pause-0" style="top: 242px; left: 432px; display: none;"></div><div class="html5gallery-left-0" style="top: 125px; display: none;"></div><div class="html5gallery-right-0" style="top: 125px; left: 480px; display: none;"></div><div class="html5gallery-lightbox-0" style="top: 242px; left: 480px; display: none;"></div></div></div></div><div class="html5gallery-car-0"><div class="html5gallery-car-list-0"><div class="html5gallery-car-mask-0"><div class="html5gallery-thumbs-0"><div id="html5gallery-tn-0-0" class="html5gallery-tn-0" data-index="0"><div class="html5gallery-tn-img-0" style="position:relative;"><div style="display:block; overflow:hidden; position:absolute; width:62px;height:46px; top:1px; left:1px;"></div><div class="html5gallery-tn-img-play-0" style="display:block; overflow:hidden; position:absolute; width:100%;height:100%; top:1px; left:1px;background:url(&quot;http://www.vnpost.vn/Portals/_default/Skins/VNPost.Skins.FrontEnd/js/skins/horizontal/playvideo.png&quot;) no-repeat center center;"></div></div><div class="html5gallery-tn-title-0"></div></div></div></div><div class="html5gallery-car-slider-bar-0"><div class="html5gallery-car-slider-bar-top-0"></div><div class="html5gallery-car-slider-bar-middle-0"></div><div class="html5gallery-car-slider-bar-bottom-0"></div></div><div class="html5gallery-car-left-0" style="background-position: -64px 0px;"></div><div class="html5gallery-car-right-0" style="background-position: 0px 0px;"></div><div class="html5gallery-car-slider-0"></div></div></div></div></div>
									<h2 class="text-success" style="font-size:30px; text-shadow: 2px 2px;">
										Để người dân hài lòng với dịch vụ công quốc gia - Phóng sự truyền hình Nhân Dân
									</h2>
									<p>

									</p>
								</div>


							</div><!-- End_Module_1066 --></div>
							<div class="clear"></div>
						</div>
					</div></div>
				</div>
				<div class="col-sm-6">
					<div id="dnn_Home_1_2_Right"><div class="DnnModule DnnModule-VNP_FrontEndDynamicViews DnnModule-799"><a name="799"></a>
						<div class="DNNContainer_noTitle">
							<div id="dnn_ctr799_ContentPane"><!-- Start_Module_799 --><div id="dnn_ctr799_ModuleContent" class="DNNModuleContent ModVNPFrontEndDynamicViewsC">



								<div class="online-shoping-info">
									<h2>
										Mua sắm trực tuyến
									</h2>
									<p>
										Hiện tại chúng tôi có những gian hàng mua sắm online với đầy đủ những sản phẩm tiện ích, đa dạng. Hy vọng sẽ đem đến cho quý khách hàng những trải nghiệm mua sắm mới mẻ nhất. Hãy đến với hệ thống mua sắm trực tuyến của chúng tôi để tìm cho mình những sản phẩm thiết thực nhất.
									</p>
									<div class="clearfix">

										<div class="col-sm-4 online-item">
											<a href="https://postmart.vn/" id="dnn_ctr799_View_uc_rptItem_linkProduct_0">
												<img src="/img/kkkk.png" alt="kkkk" style="width:80px; height:60px;">
												<h3>
													Sàn thương mại điện tử Postmart
												</h3>
											</a>
										</div>

										<div class="col-sm-4 online-item">
											<a href="http://lichbuudien.vn/" id="dnn_ctr799_View_uc_rptItem_linkProduct_1">
												<img src="/img/kkk1.jpg" alt="kkkk" style="width:80%; height:50%;">
												<h3>
													Lịch Tết
												</h3>
											</a>
										</div>

										<div class="col-sm-4 online-item" style="width:80px; height:60px;">
											<a href="http://datapost.vn" id="dnn_ctr799_View_uc_rptItem_linkProduct_2">
												<img src="/img/data3.png" alt="kkkk">
												<h3>
													Dịch vụ DATAPOST
												</h3>
											</a>
										</div>

									</div>
								</div>


							</div><!-- End_Module_799 --></div>
							<div class="clear"></div>
						</div>
					</div></div>
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
<script>

$(function(){
  $('a[data-lang]').click(function(){
	  var lang = $(this).attr("data-lang");
	  $.ajax({
		  url:'/home/language?lang='+lang,
	  success:function(){
		  alert("Tài liệu học Lập Trình Web"+ lang);
		  location.reload();
	  }
	  });
  })
})


	$( "#tk1" ).autocomplete({
	 source: "/timkiem/baiviet1"
			 
	});  
			


  $( function() {
    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];
    $( "#tk11" ).autocomplete({
      source: availableTags
    });
  } );
</script>
