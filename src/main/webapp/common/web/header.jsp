<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.vulenhtho.util.SecurityUtil" %>
<!-- Start Main Top -->
<div class="main-top" style="font-family: Helvetica,Arial">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="text-slid-box">
                    <div id="offer-box" class="carouselTicker">
                        <ul class="offer-box">
                            <li>
                                <i class="fab fa-opencart"></i> Bộ sưu tập thu đông 2019
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Giảm giá 50% áo phông nữ
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Nhập mã tho-dz để được chiết khấu 20% tổng hóa đơn
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="right-phone-box">
                    <p>Hotline : <a href="#">+84 353 113 548</a></p>
                </div>
                <div class="our-link">
                    <c:set value="<%=SecurityUtil.getUserName()%>" var="name"/>
                    <ul>
                        <c:if test="${name != null && name != 'anonymousUser'}">
                            <li><a href="/#">Xin chào <span><%=SecurityUtil.getUserName()%></span></a></li>
                            <li><a href="/logout">Đăng xuất</a></li>
                        </c:if>
                        <c:if test="${name == null || name == 'anonymousUser'}">
                            <li><a href="/login">Đăng nhập</a></li>
                            <li><a href="#">Đăng ký</a></li>
                        </c:if>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Main Top -->

<!-- Start Main Top -->
<header class="main-header" style="font-family: Helvetica,Arial">
    <!-- Start Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
        <div class="container">
            <!-- Start Header Navigation -->
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="/web"><img src="<c:url value="/shoptemplate/images/logo3.png"/>" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" style="font-family: Helvetica,Arial; font-size: 200px" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item active"><a class="nav-link" href="/web">Trang chủ</a></li>
                    <li class="dropdown megamenu-fw">
                        <a href="/web/products" class="nav-link dropdown-toggle" data-toggle="dropdown">Sản phẩm</a>
                        <ul class="dropdown-menu megamenu-content" role="menu">
                            <li>
                                <div class="row">
                                    <div class="col-menu col-md-6">
                                        <h6 class="title">Nam</h6>
                                        <div class="content">
                                            <ul class="menu-col" style="display: inline-block">
                                                <li><a href="/web/products?categoryId=1&sex=men">Áo phông</a></li>
                                                <li><a href="/web/products?categoryId=7&sex=men">Áo sơ mi</a></li>
                                                <li><a href="/web/products?categoryId=3&sex=men">Quần jean</a></li>
                                            </ul>
                                           <p style="display: inline-block">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                                            <ul class="menu-col" style="display: inline-block">
                                                <li><a href="/web/products?categoryId=2&sex=men">Áo khoác</a></li>
                                                <li><a href="/web/products?categoryId=5&sex=men">Hoodie</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <!-- end col-3 -->
                                    <div class="col-menu col-md-6" >
                                        <h6 class="title">Nữ</h6>
                                        <div class="content">
                                            <ul class="menu-col" style="display: inline-block">
                                                <li><a href="/web/products?categoryId=1&sex=women">Áo phông</a></li>
                                                <li><a href="/web/products?categoryId=2&sex=women">Áo khoác</a></li>
                                                <li><a href="/web/products?categoryId=3&sex=women">Quần jean</a></li>
                                            </ul>
                                            <p style="display: inline-block">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

                                            <ul class="menu-col" style="display: inline-block">
                                                <li><a href="/web/products?categoryId=5&sex=women">Hoodie</a></li>
                                                <li><a href="/web/products?categoryId=6&sex=women">Chân váy</a></li>
                                                <li><a href="/web/products?categoryId=4&sex=women">Váy</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- end col-3 -->

                                </div>
                                <!-- end row -->
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Cửa hàng</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Giỏ hàng</a></li>
                            <li><a href="#">Giao hàng và thanh toán</a></li>
                            <li><a href="#">Chính sách bảo hành</a></li>
                            <li><a href="#contact">Giới thiệu</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="#">Dịch vụ</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Liên hệ</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul>
                    <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                    <li class="side-menu"><a href="#">
                        <i class="fa fa-shopping-bag"></i>
                        <span class="badge">3</span>
                    </a></li>
                </ul>
            </div>
            <!-- End Atribute Navigation -->
        </div>
        <!-- Start Side Menu -->
        <div class="side">
            <a href="#" class="close-side"><i class="fa fa-times"></i></a>
            <li class="cart-box">
                <ul class="cart-list">
                    <li>
                        <a href="#" class="photo"><img src="<c:url value="/shoptemplate/images/img-pro-01.jpg"/>" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">Delica omtantur </a></h6>
                        <p>1x - <span class="price">$80.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="<c:url value="/shoptemplate/images/img-pro-02.jpg"/>" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">Omnes ocurreret</a></h6>
                        <p>1x - <span class="price">$60.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="<c:url value="/shoptemplate/images/img-pro-03.jpg"/>" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">Agam facilisis</a></h6>
                        <p>1x - <span class="price">$40.00</span></p>
                    </li>
                    <li class="total">
                        <a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>
                        <span class="float-right"><strong>Total</strong>: $180.00</span>
                    </li>
                </ul>
            </li>
        </div>
        <!-- End Side Menu -->
    </nav>
    <!-- End Navigation -->
</header>
<!-- End Main Top -->

<!-- Start Top Search -->
<div class="top-search" style="font-family: Helvetica,Arial">
    <form action="<c:url value="/web/products"/>" id="formSearchHeader" method="get">
    <div class="container">
        <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" name="search" id="search" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
        </div>
    </div>
    </form>
</div>
<!-- End Top Search -->