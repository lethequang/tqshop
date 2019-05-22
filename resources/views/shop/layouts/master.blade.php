<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="//googletagmanager.com/gtag/js-id=UA-109718537-1.js" tppabs="https://www.googletagmanager.com/gtag/js?id=UA-109718537-1"></script>
    <script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-109718537-1');
    </script>
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
    <link rel="stylesheet" type="text/css" href="shop/css/font-awesome.min.css" tppabs="http://aaryaweb.info/html/stylexpo/stx004/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="shop/css/bootstrap.css" tppabs="http://aaryaweb.info/html/stylexpo/stx004/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="shop/css/jquery-ui.css" tppabs="http://aaryaweb.info/html/stylexpo/stx004/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="shop/css/owl.carousel.css" tppabs="http://aaryaweb.info/html/stylexpo/stx004/css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="shop/css/fotorama.css" tppabs="http://aaryaweb.info/html/stylexpo/stx004/css/fotorama.css">
    <link rel="stylesheet" type="text/css" href="shop/css/magnific-popup.css" tppabs="http://aaryaweb.info/html/stylexpo/stx004/css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="shop/css/custom.css" tppabs="http://aaryaweb.info/html/stylexpo/stx004/css/custom.css">
    <link rel="stylesheet" type="text/css" href="shop/css/responsive.css" tppabs="http://aaryaweb.info/html/stylexpo/stx004/css/responsive.css">
    <link rel="shortcut icon" href="shop/images/favicon.png" tppabs="http://aaryaweb.info/html/stylexpo/stx004/images/favicon.png">
    <link rel="apple-touch-icon" href="shop/images/apple-touch-icon.png.css" tppabs="http://aaryaweb.info/html/stylexpo/stx004/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="shop/images/apple-touch-icon-72x72.png.css" tppabs="http://aaryaweb.info/html/stylexpo/stx004/images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="shop/images/apple-touch-icon-114x114.png.css" tppabs="http://aaryaweb.info/html/stylexpo/stx004/images/apple-touch-icon-114x114.png">

    @yield('__css')

</head>
<body class="homepage">
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
<script src="shop/js/tether.min.js" tppabs="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<script src="shop/js/bootstrap.min.js" tppabs="http://aaryaweb.info/html/stylexpo/stx004/js/bootstrap.min.js"></script>
<script src="shop/js/jquery.downCount.js" tppabs="http://aaryaweb.info/html/stylexpo/stx004/js/jquery.downCount.js"></script>
<script src="shop/js/jquery-ui.min.js" tppabs="http://aaryaweb.info/html/stylexpo/stx004/js/jquery-ui.min.js"></script>
<script src="shop/js/fotorama.js" tppabs="http://aaryaweb.info/html/stylexpo/stx004/js/fotorama.js"></script>
<script src="shop/js/jquery.magnific-popup.js" tppabs="http://aaryaweb.info/html/stylexpo/stx004/js/jquery.magnific-popup.js"></script>
<script src="shop/js/owl.carousel.min.js" tppabs="http://aaryaweb.info/html/stylexpo/stx004/js/owl.carousel.min.js"></script>
<script src="shop/js/custom.js" tppabs="http://aaryaweb.info/html/stylexpo/stx004/js/custom.js"></script>

<script>
	/* ------------ Newslater-popup JS Start ------------- */
	$(window).load(function() {
		$.magnificPopup.open({
			items: {src: '#newslater-popup'},type: 'inline'}, 0);
	});
	/* ------------ Newslater-popup JS End ------------- */
</script>

    @yield('__js')

</body>
</html>
