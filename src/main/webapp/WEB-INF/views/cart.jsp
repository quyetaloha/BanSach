<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="<c:url value="/resources/img/fav.png" />">
    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Karma Shop</title>

    <!--
            CSS
            ============================================= -->
    <link rel="stylesheet" href="<c:url value="/resources/css/linearicons.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/themify-icons.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/nice-select.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/nouislider.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/main.css" />">
</head>

<body>

	<div>
		<%-- <c:forEach items="${cart.cartItems }" var="cartItem">
			<p>${cartItem.sach.tenSach }  </p><p>${cartItem.soLuong }</p><br />
		</c:forEach> --%>
	</div>
    <!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/BanSach/home"><img src="<c:url value="/resources/img/logo.png" />" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="/BanSach/home">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Danh mục Sách</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/BanSach/danhmuc/1">Văn học nước ngoài</a></li>
									<li class="nav-item"><a class="nav-link" href="/BanSach/danhmuc/2">Thiếu nhi</a></li>
									<li class="nav-item"><a class="nav-link" href="/BanSach/danhmuc/3">Tin học</a></li>
									<li class="nav-item"><a class="nav-link" href="/BanSach/danhmuc/4">Kinh tế</a></li>
									<li class="nav-item"><a class="nav-link" href="/BanSach/danhmuc/5">Blockchain</a></li>
								</ul>
							</li>
							
							
							
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item"><a href="/BanSach/cart" class="cart"><span class="ti-bag"></span></a></li>
							<li class="nav-item">
								<button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="search_input" id="search_input_box">
			<div class="container">
				<form action="/BanSach/timkiem" class="d-flex justify-content-between" method="get">
					<input type="text" name="keyWord" class="form-control" id="search_input" placeholder="Tên sách tìm kiếm...">
					<button type="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>
	</header>
	<!-- End Header Area -->

    <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Giỏ hàng</h1>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!--================Cart Area =================-->
    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Sản phẩm</th>
                                <th scope="col">Giá bán</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Tổng tiền</th>
                            </tr>
                        </thead>
                        <tbody>
                        	
                        	<c:forEach items="${cart.cartItems }" var="cartItem">
								
								
								<tr>
                                <td>
                                    <div class="media">
                                        <div class="d-flex">
                                            <img src="<c:url value="/resources/anh/${cartItem.sach.img }" />" alt="">
                                        </div>
                                        <div class="media-body">
                                            <p><h3>${cartItem.sach.tenSach }</h3></p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <h3>${cartItem.sach.giaBan }$ </h3>
                                </td>
                                <td>
                                    <!-- <div class="product_count">
                                        <input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:"
                                            class="input-text qty">
                                        <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                            class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
                                        <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                            class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
                                    </div> -->
                                    <h2>${cartItem.soLuong }</h2>
                                </td>
                                <td>
                                    <h3>${cartItem.tinhTien() }$</h3>
                                </td>
                            </tr>
								
							</c:forEach>
                        
                        
                            
                            
                            
                            <tr>
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>
                                    <h4>Thanh toán</h4>
                                </td>
                                <td>
                                    <h3>${cart.tongTien() }$</h3>
                                </td>
                            </tr>
                            
                            <tr class="out_button_area">
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>
                                    <div class="checkout_btn_inner d-flex align-items-center">
                                        <a class="primary-btn" href="/BanSach/giaoHang">Đặt hàng</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->

    <!-- start footer Area -->
    <footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Thông tin</h6>
						<p>
							Chúng tôi chuyên cung cấp, phân phối sách từ khắp nơi trên thế giới
						</p>
					</div>
				</div>
				<div class="col-lg-4  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Đăng ký mail liên kết</h6>
						<p>Nhập email để nhận thông tin sách mới</p>
						<div class="" id="mc_embed_signup">

							<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							 method="get" class="form-inline">

								<div class="d-flex flex-row">

									<input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '"
									 required="" type="email">


									<button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
									</div>

									<!-- <div class="col-lg-4 col-md-4">
												<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
											</div>  -->
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Người sáng lập</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img src="<c:url value="/resources/img/i1.jpg" />" alt=""></li>
							<li><img src="<c:url value="/resources/img/i2.jpg" />" alt=""></li>
							<li><img src="<c:url value="/resources/img/i3.jpg" />" alt=""></li>
							<li><img src="<c:url value="/resources/img/i4.jpg" />" alt=""></li>
							<li><img src="<c:url value="/resources/img/i5.jpg" />" alt=""></li>
							<li><img src="<c:url value="/resources/img/i6.jpg" />" alt=""></li>
							<li><img src="<c:url value="/resources/img/i7.jpg" />" alt=""></li>
							<li><img src="<c:url value="/resources/img/i8.jpg" />" alt=""></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Liên hệ</h6>
						<div class="footer-social d-flex align-items-center">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
				<p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			Sản phẩm thuộc về tập đoàn QuyetDaik
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
			</div>
		</div>
	</footer>
    <!-- End footer Area -->

    <script src="<c:url value="/resources/js/vendor/jquery-2.2.4.min.js" />"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="<c:url value="/resources/js/vendor/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.ajaxchimp.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.nice-select.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.sticky.js" />"></script>
    <script src="<c:url value="/resources/js/nouislider.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js" />"></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="<c:url value="/resources/js/gmaps.min.js" />"></script>
	<script src="<c:url value="/resources/js/main.js" />"></script>
</body>

</html>