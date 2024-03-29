<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <!-- Basic Page Needs
      ================================================== -->
    <meta charset="utf-8">
    <title>Stylexpo</title>
    <base href="{{asset('')}}">
    <!-- SEO Meta
      ================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="distribution" content="global">
    <meta name="revisit-after" content="2 Days">
    <meta name="robots" content="ALL">
    <meta name="rating" content="8 YEARS">
    <meta name="Language" content="en-us">
    <meta name="GOOGLEBOT" content="NOARCHIVE">
    <!-- Mobile Specific Metas
      ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- CSS
      ================================================== -->
    <link rel="stylesheet" type="text/css" href="shop/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="shop/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="shop/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="shop/css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="shop/css/fotorama.css">
    <link rel="stylesheet" type="text/css" href="shop/css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="shop/css/custom.css">
    <link rel="stylesheet" type="text/css" href="shop/css/responsive.css">
    <link rel="shortcut icon" href="shop/images/favicon.png">
    <link rel="apple-touch-icon" href="shop/images/apple-touch-icon.png.css">
    <link rel="apple-touch-icon" sizes="72x72" href="shop/images/apple-touch-icon-72x72.png.css">
    <link rel="apple-touch-icon" sizes="114x114" href="shop/images/apple-touch-icon-114x114.png.css">

    @yield('__css')

</head>
<body >
<div class="se-pre-con"></div>
<div id="newslater-popup" class="mfp-hide white-popup-block open align-center">
    <div class="nl-popup-main">
        <div class="nl-popup-inner">
            <div class="newsletter-inner">
                <span>Sign up & get 10% off</span>
                <h2 class="main_title">Subscribe Emails</h2>
                <form>
                    <input type="email" placeholder="Email Here...">
                    <button class="btn-black" title="Subscribe">Subscribe</button>
                </form>
                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
            </div>
        </div>
    </div>
</div>
<div class="main">

    <!-- HEADER START -->
    @include('shop.layouts.header')
    <!-- HEADER END -->


    <!-- CONTAIN START -->

        @yield('content')

    <!-- CONTAINER END -->



    <!-- FOOTER START -->
    @include('shop.layouts.footer')
    <!-- FOOTER END -->
</div>
<script src="shop/js/jquery-1.12.3.min.js"></script>
<script src="shop/js/tether.min.js"></script>
<script src="shop/js/bootstrap.min.js"></script>
<script src="shop/js/jquery.downCount.js"></script>
<script src="shop/js/jquery-ui.min.js"></script>
<script src="shop/js/fotorama.js"></script>
<script src="shop/js/jquery.magnific-popup.js"></script>
<script src="shop/js/owl.carousel.min.js"></script>
<script src="shop/js/custom.js"></script>

<script type="text/javascript">

    // Mặc định dropdown menu category xuống nếu là trang chủ
	if($("#homeContent").hasClass("home-content")){
		$("body").addClass("homepage");
	}

</script>

@yield('__js')

</body>
</html>
