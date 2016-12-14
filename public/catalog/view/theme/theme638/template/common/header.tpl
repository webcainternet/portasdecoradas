<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<!--[if gte IE 9]>
  <style type="text/css">
    .gradient {
       filter: none;
    }
  </style>
<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <?php /* if ($icon) { ?>
            <link href="<?php echo $icon; ?>" rel="icon"/>
        <?php } */ ?>

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">

    <link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/magnificent.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/js/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/photoswipe.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/js/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/material-design.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/material-icons.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/fl-chapps.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/fl-soft-icons.css" rel="stylesheet">
	<link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/rd-parallax.css" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
              media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/theme/<?php echo $theme_path; ?>/js/common.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
	<script src="catalog/view/theme/<?php echo $theme_path; ?>/js/jquery.rd-parallax.min.js" type="text/javascript"></script>
    <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <!--custom script-->
    <?php foreach ($scripts as $script) { ?>
        <?php if (strcmp($script, 'catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js') != 0) { ?>
            <script src="<?php echo $script; ?>" type="text/javascript"></script>
        <?php } ?>
    <?php } ?>
    <script src="catalog/view/theme/<?php echo $theme_path; ?>/js/device.min.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
            <img src="catalog/view/theme/<?php echo $theme_path; ?>/image/warning_bar_0000_us.jpg" border="0" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <![endif]-->
    <?php foreach ($analytics as $analytic) { ?>
        <?php echo $analytic; ?>
    <?php } ?>
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/stylesheet.css" rel="stylesheet">


    <!-- TEMPORARIO -->

    <div id="tm-newsletter-popup" class="newsletter-popup-wrap">
        <div class="newsletter-popup" >

            <div class="box-content">
               <!--                     <div class="logo">
                        <img src="http://demo.lojavirtual.digital/image/catalog/logo.png" title="Leezy Store"
                             alt="Leezy Store" class="img-responsive"/>
                    </div>
                 -->
                <h2>Novidades</h2>

                <p>Assine nossa lista de e-mails e seja o primeiro a saber sobre novos produtos, ofertas especiais, eventos e informações de desconto.</p>

                <form method="post" enctype="multipart/form-data" id="tm-newsletter-popup-form">
                    <div class="tm-login-form">
                        <label class="control-label" for="input-tm-newsletter-popup-email"></label>
                        <input type="text" name="tm_newsletter_popup_email" value="" placeholder="Digite seu e-mail"
                               id="input-tm-newsletter-popup-email" class="form-control"/>
                        <button type="submit" id="tm-newsletter-popup-button" class="btn newsletter-popup-btn"><!-- <i
                                class="material-design-drafts"></i> -->Inscrever</button>
                        <span id="tm-newsletter-popup_error" class="newsletter-error"></span>
                        <span id="tm-newsletter-popup_success" class="newsletter-success"></span>
                    </div>

                </form>

            </div>
            <a href="#" id="newsletter-popup-close-btn" class="newsletter-popup-close-btn material-design-close47"></a>
            <a href='#' id="newsletter-popup-dont-show" class="newsletter-popup-dont-show">
                Não mostrar esta mensagem novamente            </a>
        </div>
    </div>

    <script>
        function getCookie(c_name) {
            var search = c_name + "="
            var returnvalue = "";
            if (document.cookie.length > 0) {
                offset = document.cookie.indexOf(search)
                if (offset != -1) {
                    offset += search.length
                    end = document.cookie.indexOf(";", offset);
                    if (end == -1) end = document.cookie.length;
                    returnvalue=unescape(document.cookie.substring(offset, end))
                }
            }
            return returnvalue;
        }


        jQuery(document).ready(function ($) {
            var showIt = getCookie('shownewsletter');
            var m = 1;
            var date = new Date();
            date.setTime(date.getTime() + (m * 60 * 1000));
            if (showIt == '') {
                $('#tm-newsletter-popup').fadeIn(300);
            }
            $('#newsletter-popup-dont-show').click(function (e) {
                e.preventDefault()
                document.cookie = 'shownewsletter=true; path=/; expires=' + date.toString();
                $('#tm-newsletter-popup').fadeOut(300);
            })
            $('#newsletter-popup-close-btn').click(function (e) {
                e.preventDefault();
                document.cookie = 'shownewsletter=false';
                $('#tm-newsletter-popup').fadeOut(300);
            })
            $('#tm-newsletter-popup').submit(function (e) {
                e.preventDefault();
                var email = $("#input-tm-newsletter-popup-email").val();
                var emailRegex = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}$/igm;
                if (emailRegex.test(email)) {
                    var dataString = 'tm_newsletter_popup_email=' + email;
                    $.ajax({
                        type: "POST",
                        url: "index.php?route=module/tm_newsletter_popup",
                        data: dataString,
                        cache: false,
                        success: function (result) {
                            if (!result) {
                                $('#tm-newsletter-popup_success').html('Seu e-mail foi inscrito com sucesso').fadeIn(300).delay(4000).fadeOut(300);
                            } else {
                                $('#tm-newsletter-popup_error').dequeue();
                                $('#tm-newsletter-popup_error').html(result).fadeIn(300).delay(4000).fadeOut(300);
                            }
                        }
                    });
                } else {
                    $('#tm-newsletter-popup_error').html('Por favor digite um e-mail válido!').fadeIn(300).delay(4000).fadeOut(300);
                }
            });


        });
    </script>
    <!-- FIM TEMPORARIO -->

</head>

<body class="<?php echo $class; ?>">
<p id="gl_path" class="hidden"><?php echo $theme_path; ?></p>
<div id="page">
    <header>
			<div class="top-header">
			
				<nav id="top-links" class="nav toggle-wrap">
				
					<a class="toggle material-design-settings49" href='#'></a>
					<ul class="toggle_cont">
						<li> <a href="<?php echo $home; ?>" title="<?php echo $text_home; ?>" > <i class="material-design-home149"></i> <span><?php echo $text_home; ?></span> </a> </li>					
						<li> <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" > <i class="material-design-user157"></i> <span><?php echo $text_account; ?></span> </a> </li>
						<li> <a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"> <i class="material-icons-shopping_basket"></i> <span><?php echo $text_shopping_cart; ?></span> </a> </li>
                        <li><a class="button-wishlist" href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
						<li> <a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"> <i class="material-design-forward18"></i> <span><?php echo $text_checkout; ?> </span> </a> </li>
						<li class="log"><?php if ($logged) { ?>
							<a href="<?php echo $logout; ?>"><i class="fa fa-sign-out"></i> <span><?php echo $text_logout; ?></span></a>
						<?php } else { ?>
							<a href="<?php echo $login; ?>"><i class="material-icons-vpn_key"></i> <span><?php echo $text_login; ?></span></a>
						<?php } ?></li>
					</ul>
					
				</nav>
				
				<div class="pull-right">
				
					<?php echo $search; ?>
					
					<div class="button-top">				
						<?php echo $language; ?>
						<?php echo $currency; ?>						
					</div>
					
				</div>
				
			</div>
			
			<div id="stuck" class="stuck-menu">
			
			<div id="logo" class="logo">
				<?php if ($logo) { ?>
					<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive"/></a>
				<?php } else { ?>
					<h1> <a href="<?php echo $home; ?>"><?php echo $name; ?></a> </h1>
				<?php } ?>
			</div>
			
			<div class="pull-right">							
				
				<?php if ($logged) { ?>
					<a class="login-button" href="<?php echo $logout; ?>" data-toggle="tooltip" title="<?php echo $text_logout; ?>"><i class="fa fa-sign-out"></i></a>
				<?php } else { ?>
					<a class="login-button" href="<?php echo $login; ?>" data-toggle="tooltip" title="<?php echo $text_login; ?>" ><i class="material-icons-vpn_key"></i></a>
				<?php } ?>
				
				<?php echo $cart; ?>
				
				
				
			</div>
			
			<?php if ($categories) { ?>
				<div id="tm_menu" class="nav__primary">
					<?php if ($categories_tm) {
						echo $categories_tm;
					} ?>
					<div class="clear"></div>
				</div>
			<?php } ?>
			
		</div>

        <?php if ($categories) { ?>
            <div class="container">
                <div id="menu-gadget" class="menu-gadget" >
                    <?php if ($categories_tm) {
                        echo $categories_tm;
                    } ?>
                </div>
            </div>
        <?php } ?>
        

        <?php if ($header_top){?>
            <div class="header_modules"><?php echo $header_top;?></div>
        <?php }?>
    </header>



