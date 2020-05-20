<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.8.7, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.7, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon"  href="assets/images/logo4.png" type="image/x-icon">
  <meta name="description" content="">
  
  <title>CloudTinyGram</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
   <script src="https://apis.google.com/js/platform.js" async defer></script>
 
</head>

<body>
  <section class="header9 cid-rWZLVBYv2o mbr-fullscreen" id="header9-0">

    <div class="container">
        <div class="media-container-column mbr-white col-md-8">
            <h1 style="color: white;"class="mbr-section-title align-left mbr-bold pb-3 mbr-fonts-style display-1">
                Bienvenue sur Cloud Tiny Gram<br></h1><br>
                
                <h5> <b>Membre du projet :</b> <br> Chauveau François, Vannini Jules, Remaud Remi, Oztoprak David</h5> <br><br>
                
            <div class="mbr-section-btn align-left"><a class="btn btn-md btn-primary display-4" href="/connexion">Se Connecter avec Google</a></div>
        
        </div>
    </div>
  
</section>

<section>

<h2>Check if it works</h2>
	<li><a href='/hello'>The servlet Hello world</a>
	
<h2>Check login Google</h2>	
	<li><a href="https://developers.google.com/identity/sign-in/web/sign-in#before_you_begin">see docs</a>
	<li><a href='/userapi'>Login with Google (servlet)</a>
	<li><a href='/glogin.html'>Login with Google (javascript)</a>
	
	
<h2>Simple Javascript to call Rest Interface</h2>
	<li><a href='/_ah/api/myApi/v1/topscores'>REST Call topscores</a>
	<li><a href='/index3.html'>Scores with Mithril</a>
	<li><a href='/index2.html'>Scores with React</a>

<h2>Understanding contention with counters</h2>
	<li><a href='/count'>Counter no transaction</a>
	<li><a href='/counttr'>Counter with transactions</a>
	<li><a href='/countsh'>Sharded Counter with transactions</a>


<h2>Data Queries for managing Friends</h2>	
	<li><a href='/friends'>Populate the Friend table (long)</a>
	<li><a href='/query'>Query the Friend table</a>
	<li><a href='/delfriends'>Delete the Friend table</a>
	
<h2>Data Queries for managing Posts</h2>	
	<li><a href='/prefixclean'>clean post data (long)</a>
	<li><a href='/prefix'>install post data (long)</a>
	<li><a href='/prefixquery'>Raw queries on post data</a>
    <li><a href='/post.html'>Unsecure MyPost</a>
    <li><a href='/glogin-mithril.html'>Secure MyPost</a>
	
	
<h2>Data Queries for managing Petitions</h2>	
	<li><a href='/petition'>install petition like data (long)</a>
	<li><a href='/pquery'>query petition data</a>
			

<h1>Fetch scores below:</h1>


		<p id="toto"></p> <script>
    const url = "_ah/api/myApi/v1/topscores"
    fetch(url)
    .then(response => response.text())
    .then(data => document.getElementById('toto').innerHTML = data)
  </script>

</section>

<style type="text/css">
  @import url(https://fonts.googleapis.com/css?family=Rubik:300,300i,400,400i,500,500i,700,700i,900,900i);

  body {
    font-style: normal;
    line-height: 1.5;
  }

  .mbr-section-title {
    font-style: normal;
    line-height: 1.2;
  }

  .mbr-section-subtitle {
    line-height: 1.3;
  }

  .mbr-text {
    font-style: normal;
    line-height: 1.6;
  }

  .display-1 {
    font-family: 'Rubik', sans-serif;
    font-size: 4.25rem;
  }

  .display-1>.mbr-iconfont {
    font-size: 6.8rem;
  }

  .display-2 {
    font-family: 'Rubik', sans-serif;
    font-size: 3rem;
  }

  .display-2>.mbr-iconfont {
    font-size: 4.8rem;
  }

  .display-4 {
    font-family: 'Rubik', sans-serif;
    font-size: 1rem;
  }

  .display-4>.mbr-iconfont {
    font-size: 1.6rem;
  }

  .display-5 {
    font-family: 'Rubik', sans-serif;
    font-size: 1.5rem;
  }

  .display-5>.mbr-iconfont {
    font-size: 2.4rem;
  }

  .display-7 {
    font-family: 'Rubik', sans-serif;
    font-size: 1rem;
  }

  .display-7>.mbr-iconfont {
    font-size: 1.6rem;
  }

  /* ---- Fluid typography for mobile devices ---- */
  /* 1.4 - font scale ratio ( bootstrap == 1.42857 ) */
  /* 100vw - current viewport width */
  /* (48 - 20)  48 == 48rem == 768px, 20 == 20rem == 320px(minimal supported viewport) */
  /* 0.65 - min scale variable, may vary */
  @media (max-width: 768px) {
    .display-1 {
      font-size: 3.4rem;
      font-size: calc(2.1374999999999997rem + (4.25 - 2.1374999999999997) * ((100vw - 20rem) / (48 - 20)));
      line-height: calc(1.4 * (2.1374999999999997rem + (4.25 - 2.1374999999999997) * ((100vw - 20rem) / (48 - 20))));
    }

    .display-2 {
      font-size: 2.4rem;
      font-size: calc(1.7rem + (3 - 1.7) * ((100vw - 20rem) / (48 - 20)));
      line-height: calc(1.4 * (1.7rem + (3 - 1.7) * ((100vw - 20rem) / (48 - 20))));
    }

    .display-4 {
      font-size: 0.8rem;
      font-size: calc(1rem + (1 - 1) * ((100vw - 20rem) / (48 - 20)));
      line-height: calc(1.4 * (1rem + (1 - 1) * ((100vw - 20rem) / (48 - 20))));
    }

    .display-5 {
      font-size: 1.2rem;
      font-size: calc(1.175rem + (1.5 - 1.175) * ((100vw - 20rem) / (48 - 20)));
      line-height: calc(1.4 * (1.175rem + (1.5 - 1.175) * ((100vw - 20rem) / (48 - 20))));
    }
  }

  /* Buttons */
  .btn {
    font-weight: 500;
    border-width: 2px;
    font-style: normal;
    letter-spacing: 1px;
    margin: .4rem .8rem;
    white-space: normal;
    -webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    word-break: break-word;
    -webkit-align-items: center;
    -webkit-justify-content: center;
    display: -webkit-inline-flex;
    padding: 1rem 3rem;
    border-radius: 3px;
  }

  .btn-sm {
    font-weight: 500;
    letter-spacing: 1px;
    -webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
    padding: 0.6rem 1.5rem;
    border-radius: 3px;
  }

  .btn-md {
    font-weight: 500;
    letter-spacing: 1px;
    margin: .4rem .8rem !important;
    -webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
    padding: 1rem 3rem;
    border-radius: 3px;
  }

  .btn-lg {
    font-weight: 500;
    letter-spacing: 1px;
    margin: .4rem .8rem !important;
    -webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
    padding: 1.2rem 3.2rem;
    border-radius: 3px;
  }

  .bg-primary {
    background-color: #149dcc !important;
  }

  .bg-success {
    background-color: #f7ed4a !important;
  }

  .bg-info {
    background-color: #82786e !important;
  }

  .bg-warning {
    background-color: #879a9f !important;
  }

  .bg-danger {
    background-color: #b1a374 !important;
  }

  .btn-primary,
  .btn-primary:active {
    background-color: #149dcc !important;
    border-color: #149dcc !important;
    color: #ffffff !important;
  }

  .btn-primary:hover,
  .btn-primary:focus,
  .btn-primary.focus,
  .btn-primary.active {
    color: #ffffff !important;
    background-color: #0d6786 !important;
    border-color: #0d6786 !important;
  }

  .btn-primary.disabled,
  .btn-primary:disabled {
    color: #ffffff !important;
    background-color: #0d6786 !important;
    border-color: #0d6786 !important;
  }

  .btn-secondary,
  .btn-secondary:active {
    background-color: #ff3366 !important;
    border-color: #ff3366 !important;
    color: #ffffff !important;
  }

  .btn-secondary:hover,
  .btn-secondary:focus,
  .btn-secondary.focus,
  .btn-secondary.active {
    color: #ffffff !important;
    background-color: #e50039 !important;
    border-color: #e50039 !important;
  }

  .btn-secondary.disabled,
  .btn-secondary:disabled {
    color: #ffffff !important;
    background-color: #e50039 !important;
    border-color: #e50039 !important;
  }

  .btn-info,
  .btn-info:active {
    background-color: #82786e !important;
    border-color: #82786e !important;
    color: #ffffff !important;
  }

  .btn-info:hover,
  .btn-info:focus,
  .btn-info.focus,
  .btn-info.active {
    color: #ffffff !important;
    background-color: #59524b !important;
    border-color: #59524b !important;
  }

  .btn-info.disabled,
  .btn-info:disabled {
    color: #ffffff !important;
    background-color: #59524b !important;
    border-color: #59524b !important;
  }

  .btn-success,
  .btn-success:active {
    background-color: #f7ed4a !important;
    border-color: #f7ed4a !important;
    color: #3f3c03 !important;
  }

  .btn-success:hover,
  .btn-success:focus,
  .btn-success.focus,
  .btn-success.active {
    color: #3f3c03 !important;
    background-color: #eadd0a !important;
    border-color: #eadd0a !important;
  }

  .btn-success.disabled,
  .btn-success:disabled {
    color: #3f3c03 !important;
    background-color: #eadd0a !important;
    border-color: #eadd0a !important;
  }

  .btn-warning,
  .btn-warning:active {
    background-color: #879a9f !important;
    border-color: #879a9f !important;
    color: #ffffff !important;
  }

  .btn-warning:hover,
  .btn-warning:focus,
  .btn-warning.focus,
  .btn-warning.active {
    color: #ffffff !important;
    background-color: #617479 !important;
    border-color: #617479 !important;
  }

  .btn-warning.disabled,
  .btn-warning:disabled {
    color: #ffffff !important;
    background-color: #617479 !important;
    border-color: #617479 !important;
  }

  .btn-danger,
  .btn-danger:active {
    background-color: #b1a374 !important;
    border-color: #b1a374 !important;
    color: #ffffff !important;
  }

  .btn-danger:hover,
  .btn-danger:focus,
  .btn-danger.focus,
  .btn-danger.active {
    color: #ffffff !important;
    background-color: #8b7d4e !important;
    border-color: #8b7d4e !important;
  }

  .btn-danger.disabled,
  .btn-danger:disabled {
    color: #ffffff !important;
    background-color: #8b7d4e !important;
    border-color: #8b7d4e !important;
  }

  .btn-white {
    color: #333333 !important;
  }

  .btn-white,
  .btn-white:active {
    background-color: #ffffff !important;
    border-color: #ffffff !important;
    color: #808080 !important;
  }

  .btn-white:hover,
  .btn-white:focus,
  .btn-white.focus,
  .btn-white.active {
    color: #808080 !important;
    background-color: #d9d9d9 !important;
    border-color: #d9d9d9 !important;
  }

  .btn-white.disabled,
  .btn-white:disabled {
    color: #808080 !important;
    background-color: #d9d9d9 !important;
    border-color: #d9d9d9 !important;
  }

  .btn-black,
  .btn-black:active {
    background-color: #333333 !important;
    border-color: #333333 !important;
    color: #ffffff !important;
  }

  .btn-black:hover,
  .btn-black:focus,
  .btn-black.focus,
  .btn-black.active {
    color: #ffffff !important;
    background-color: #0d0d0d !important;
    border-color: #0d0d0d !important;
  }

  .btn-black.disabled,
  .btn-black:disabled {
    color: #ffffff !important;
    background-color: #0d0d0d !important;
    border-color: #0d0d0d !important;
  }

  .btn-primary-outline,
  .btn-primary-outline:active {
    background: none;
    border-color: #0b566f;
    color: #0b566f;
  }

  .btn-primary-outline:hover,
  .btn-primary-outline:focus,
  .btn-primary-outline.focus,
  .btn-primary-outline.active {
    color: #ffffff;
    background-color: #149dcc;
    border-color: #149dcc;
  }

  .btn-primary-outline.disabled,
  .btn-primary-outline:disabled {
    color: #ffffff !important;
    background-color: #149dcc !important;
    border-color: #149dcc !important;
  }

  .btn-secondary-outline,
  .btn-secondary-outline:active {
    background: none;
    border-color: #cc0033;
    color: #cc0033;
  }

  .btn-secondary-outline:hover,
  .btn-secondary-outline:focus,
  .btn-secondary-outline.focus,
  .btn-secondary-outline.active {
    color: #ffffff;
    background-color: #ff3366;
    border-color: #ff3366;
  }

  .btn-secondary-outline.disabled,
  .btn-secondary-outline:disabled {
    color: #ffffff !important;
    background-color: #ff3366 !important;
    border-color: #ff3366 !important;
  }

  .btn-info-outline,
  .btn-info-outline:active {
    background: none;
    border-color: #4b453f;
    color: #4b453f;
  }

  .btn-info-outline:hover,
  .btn-info-outline:focus,
  .btn-info-outline.focus,
  .btn-info-outline.active {
    color: #ffffff;
    background-color: #82786e;
    border-color: #82786e;
  }

  .btn-info-outline.disabled,
  .btn-info-outline:disabled {
    color: #ffffff !important;
    background-color: #82786e !important;
    border-color: #82786e !important;
  }

  .btn-success-outline,
  .btn-success-outline:active {
    background: none;
    border-color: #d2c609;
    color: #d2c609;
  }

  .btn-success-outline:hover,
  .btn-success-outline:focus,
  .btn-success-outline.focus,
  .btn-success-outline.active {
    color: #3f3c03;
    background-color: #f7ed4a;
    border-color: #f7ed4a;
  }

  .btn-success-outline.disabled,
  .btn-success-outline:disabled {
    color: #3f3c03 !important;
    background-color: #f7ed4a !important;
    border-color: #f7ed4a !important;
  }

  .btn-warning-outline,
  .btn-warning-outline:active {
    background: none;
    border-color: #55666b;
    color: #55666b;
  }

  .btn-warning-outline:hover,
  .btn-warning-outline:focus,
  .btn-warning-outline.focus,
  .btn-warning-outline.active {
    color: #ffffff;
    background-color: #879a9f;
    border-color: #879a9f;
  }

  .btn-warning-outline.disabled,
  .btn-warning-outline:disabled {
    color: #ffffff !important;
    background-color: #879a9f !important;
    border-color: #879a9f !important;
  }

  .btn-danger-outline,
  .btn-danger-outline:active {
    background: none;
    border-color: #7a6e45;
    color: #7a6e45;
  }

  .btn-danger-outline:hover,
  .btn-danger-outline:focus,
  .btn-danger-outline.focus,
  .btn-danger-outline.active {
    color: #ffffff;
    background-color: #b1a374;
    border-color: #b1a374;
  }

  .btn-danger-outline.disabled,
  .btn-danger-outline:disabled {
    color: #ffffff !important;
    background-color: #b1a374 !important;
    border-color: #b1a374 !important;
  }

  .btn-black-outline,
  .btn-black-outline:active {
    background: none;
    border-color: #000000;
    color: #000000;
  }

  .btn-black-outline:hover,
  .btn-black-outline:focus,
  .btn-black-outline.focus,
  .btn-black-outline.active {
    color: #ffffff;
    background-color: #333333;
    border-color: #333333;
  }

  .btn-black-outline.disabled,
  .btn-black-outline:disabled {
    color: #ffffff !important;
    background-color: #333333 !important;
    border-color: #333333 !important;
  }

  .btn-white-outline,
  .btn-white-outline:active,
  .btn-white-outline.active {
    background: none;
    border-color: #ffffff;
    color: #ffffff;
  }

  .btn-white-outline:hover,
  .btn-white-outline:focus,
  .btn-white-outline.focus {
    color: #333333;
    background-color: #ffffff;
    border-color: #ffffff;
  }

  .text-primary {
    color: #149dcc !important;
  }

  .text-secondary {
    color: #ff3366 !important;
  }

  .text-success {
    color: #f7ed4a !important;
  }

  .text-info {
    color: #82786e !important;
  }

  .text-warning {
    color: #879a9f !important;
  }

  .text-danger {
    color: #b1a374 !important;
  }

  .text-white {
    color: #ffffff !important;
  }

  .text-black {
    color: #000000 !important;
  }

  a.text-primary:hover,
  a.text-primary:focus {
    color: #0b566f !important;
  }

  a.text-secondary:hover,
  a.text-secondary:focus {
    color: #cc0033 !important;
  }

  a.text-success:hover,
  a.text-success:focus {
    color: #d2c609 !important;
  }

  a.text-info:hover,
  a.text-info:focus {
    color: #4b453f !important;
  }

  a.text-warning:hover,
  a.text-warning:focus {
    color: #55666b !important;
  }

  a.text-danger:hover,
  a.text-danger:focus {
    color: #7a6e45 !important;
  }

  a.text-white:hover,
  a.text-white:focus {
    color: #b3b3b3 !important;
  }

  a.text-black:hover,
  a.text-black:focus {
    color: #4d4d4d !important;
  }

  .alert-success {
    background-color: #70c770;
  }

  .alert-info {
    background-color: #82786e;
  }

  .alert-warning {
    background-color: #879a9f;
  }

  .alert-danger {
    background-color: #b1a374;
  }

  .mbr-section-btn a.btn:not(.btn-form) {
    border-radius: 100px;
  }

  .mbr-section-btn a.btn:not(.btn-form):hover,
  .mbr-section-btn a.btn:not(.btn-form):focus {
    box-shadow: none !important;
  }

  .mbr-section-btn a.btn:not(.btn-form):hover,
  .mbr-section-btn a.btn:not(.btn-form):focus {
    box-shadow: 0 10px 40px 0 rgba(0, 0, 0, 0.2) !important;
    -webkit-box-shadow: 0 10px 40px 0 rgba(0, 0, 0, 0.2) !important;
  }

  .mbr-gallery-filter li a {
    border-radius: 100px !important;
  }

  .mbr-gallery-filter li.active .btn {
    background-color: #149dcc;
    border-color: #149dcc;
    color: #ffffff;
  }

  .mbr-gallery-filter li.active .btn:focus {
    box-shadow: none;
  }

  .nav-tabs .nav-link {
    border-radius: 100px !important;
  }

  .btn-form {
    border-radius: 0;
  }

  .btn-form:hover {
    cursor: pointer;
  }

  a,
  a:hover {
    color: #149dcc;
  }

  .mbr-plan-header.bg-primary .mbr-plan-subtitle,
  .mbr-plan-header.bg-primary .mbr-plan-price-desc {
    color: #b4e6f8;
  }

  .mbr-plan-header.bg-success .mbr-plan-subtitle,
  .mbr-plan-header.bg-success .mbr-plan-price-desc {
    color: #ffffff;
  }

  .mbr-plan-header.bg-info .mbr-plan-subtitle,
  .mbr-plan-header.bg-info .mbr-plan-price-desc {
    color: #beb8b2;
  }

  .mbr-plan-header.bg-warning .mbr-plan-subtitle,
  .mbr-plan-header.bg-warning .mbr-plan-price-desc {
    color: #ced6d8;
  }

  .mbr-plan-header.bg-danger .mbr-plan-subtitle,
  .mbr-plan-header.bg-danger .mbr-plan-price-desc {
    color: #dfd9c6;
  }

  /* Scroll to top button*/
  .scrollToTop_wraper {
    display: none;
  }

  #scrollToTop a i:before {
    content: '';
    position: absolute;
    height: 40%;
    top: 25%;
    background: #fff;
    width: 2px;
    left: calc(50% - 1px);
  }

  #scrollToTop a i:after {
    content: '';
    position: absolute;
    display: block;
    border-top: 2px solid #fff;
    border-right: 2px solid #fff;
    width: 40%;
    height: 40%;
    left: 30%;
    bottom: 30%;
    transform: rotate(135deg);
    -webkit-transform: rotate(135deg);
  }

  /* Others*/
  .note-check a[data-value=Rubik] {
    font-style: normal;
  }

  .mbr-arrow a {
    color: #ffffff;
  }

  @media (max-width: 767px) {
    .mbr-arrow {
      display: none;
    }
  }

  .form-control-label {
    position: relative;
    cursor: pointer;
    margin-bottom: .357em;
    padding: 0;
  }

  .alert {
    color: #ffffff;
    border-radius: 0;
    border: 0;
    font-size: .875rem;
    line-height: 1.5;
    margin-bottom: 1.875rem;
    padding: 1.25rem;
    position: relative;
  }

  .alert.alert-form::after {
    background-color: inherit;
    bottom: -7px;
    content: "";
    display: block;
    height: 14px;
    left: 50%;
    margin-left: -7px;
    position: absolute;
    transform: rotate(45deg);
    width: 14px;
    -webkit-transform: rotate(45deg);
  }

  .form-control {
    background-color: #f5f5f5;
    box-shadow: none;
    color: #565656;
    font-family: 'Rubik', sans-serif;
    font-size: 1rem;
    line-height: 1.43;
    min-height: 3.5em;
    padding: 1.07em .5em;
  }

  .form-control>.mbr-iconfont {
    font-size: 1.6rem;
  }

  .form-control,
  .form-control:focus {
    border: 1px solid #e8e8e8;
  }

  .form-active .form-control:invalid {
    border-color: red;
  }

  .mbr-overlay {
    background-color: #000;
    bottom: 0;
    left: 0;
    opacity: .5;
    position: absolute;
    right: 0;
    top: 0;
    z-index: 0;
  }

  blockquote {
    font-style: italic;
    padding: 10px 0 10px 20px;
    font-size: 1.09rem;
    position: relative;
    border-color: #149dcc;
    border-width: 3px;
  }

  ul,
  ol,
  pre,
  blockquote {
    margin-bottom: 2.3125rem;
  }

  pre {
    background: #f4f4f4;
    padding: 10px 24px;
    white-space: pre-wrap;
  }

  .inactive {
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    pointer-events: none;
    -webkit-user-drag: none;
    user-drag: none;
  }

  .mbr-section__comments .row {
    justify-content: center;
    -webkit-justify-content: center;
  }

  /* Forms */
  .mbr-form .btn {
    margin: .4rem 0;
  }

  .mbr-form .input-group-btn a.btn {
    border-radius: 100px !important;
  }

  .mbr-form .input-group-btn a.btn:hover {
    box-shadow: 0 10px 40px 0 rgba(0, 0, 0, 0.2);
  }

  .mbr-form .input-group-btn button[type="submit"] {
    border-radius: 100px !important;
    padding: 1rem 3rem;
  }

  .mbr-form .input-group-btn button[type="submit"]:hover {
    box-shadow: 0 10px 40px 0 rgba(0, 0, 0, 0.2);
  }

  .form2 .form-control {
    border-top-left-radius: 100px;
    border-bottom-left-radius: 100px;
  }

  .form2 .input-group-btn a.btn {
    border-top-left-radius: 0 !important;
    border-bottom-left-radius: 0 !important;
  }

  .form2 .input-group-btn button[type="submit"] {
    border-top-left-radius: 0 !important;
    border-bottom-left-radius: 0 !important;
  }

  .form3 input[type="email"] {
    border-radius: 100px !important;
  }

  @media (max-width: 349px) {
    .form2 input[type="email"] {
      border-radius: 100px !important;
    }

    .form2 .input-group-btn a.btn {
      border-radius: 100px !important;
    }

    .form2 .input-group-btn button[type="submit"] {
      border-radius: 100px !important;
    }
  }

  @media (max-width: 767px) {
    .btn {
      font-size: .75rem !important;
    }

    .btn .mbr-iconfont {
      font-size: 1rem !important;
    }
  }

  /* Social block */
  .btn-social {
    font-size: 20px;
    border-radius: 50%;
    padding: 0;
    width: 44px;
    height: 44px;
    line-height: 44px;
    text-align: center;
    position: relative;
    border: 2px solid #c0a375;
    border-color: #149dcc;
    color: #232323;
    cursor: pointer;
  }

  .btn-social i {
    top: 0;
    line-height: 44px;
    width: 44px;
  }

  .btn-social:hover {
    color: #fff;
    background: #149dcc;
  }

  .btn-social+.btn {
    margin-left: .1rem;
  }

  /* Footer */
  .mbr-footer-content li::before,
  .mbr-footer .mbr-contacts li::before {
    background: #149dcc;
  }

  .mbr-footer-content li a:hover,
  .mbr-footer .mbr-contacts li a:hover {
    color: #149dcc;
  }

  .footer3 input[type="email"],
  .footer4 input[type="email"] {
    border-radius: 100px !important;
  }

  .footer3 .input-group-btn a.btn,
  .footer4 .input-group-btn a.btn {
    border-radius: 100px !important;
  }

  .footer3 .input-group-btn button[type="submit"],
  .footer4 .input-group-btn button[type="submit"] {
    border-radius: 100px !important;
  }

  /* Headers*/
  .header13 .form-inline input[type="email"],
  .header14 .form-inline input[type="email"] {
    border-radius: 100px;
  }

  .header13 .form-inline input[type="text"],
  .header14 .form-inline input[type="text"] {
    border-radius: 100px;
  }

  .header13 .form-inline input[type="tel"],
  .header14 .form-inline input[type="tel"] {
    border-radius: 100px;
  }

  .header13 .form-inline a.btn,
  .header14 .form-inline a.btn {
    border-radius: 100px;
  }

  .header13 .form-inline button,
  .header14 .form-inline button {
    border-radius: 100px !important;
  }

  .offset-1 {
    margin-left: 8.33333%;
  }

  .offset-2 {
    margin-left: 16.66667%;
  }

  .offset-3 {
    margin-left: 25%;
  }

  .offset-4 {
    margin-left: 33.33333%;
  }

  .offset-5 {
    margin-left: 41.66667%;
  }

  .offset-6 {
    margin-left: 50%;
  }

  .offset-7 {
    margin-left: 58.33333%;
  }

  .offset-8 {
    margin-left: 66.66667%;
  }

  .offset-9 {
    margin-left: 75%;
  }

  .offset-10 {
    margin-left: 83.33333%;
  }

  .offset-11 {
    margin-left: 91.66667%;
  }

  @media (min-width: 576px) {
    .offset-sm-0 {
      margin-left: 0%;
    }

    .offset-sm-1 {
      margin-left: 8.33333%;
    }

    .offset-sm-2 {
      margin-left: 16.66667%;
    }

    .offset-sm-3 {
      margin-left: 25%;
    }

    .offset-sm-4 {
      margin-left: 33.33333%;
    }

    .offset-sm-5 {
      margin-left: 41.66667%;
    }

    .offset-sm-6 {
      margin-left: 50%;
    }

    .offset-sm-7 {
      margin-left: 58.33333%;
    }

    .offset-sm-8 {
      margin-left: 66.66667%;
    }

    .offset-sm-9 {
      margin-left: 75%;
    }

    .offset-sm-10 {
      margin-left: 83.33333%;
    }

    .offset-sm-11 {
      margin-left: 91.66667%;
    }
  }

  @media (min-width: 768px) {
    .offset-md-0 {
      margin-left: 0%;
    }

    .offset-md-1 {
      margin-left: 8.33333%;
    }

    .offset-md-2 {
      margin-left: 16.66667%;
    }

    .offset-md-3 {
      margin-left: 25%;
    }

    .offset-md-4 {
      margin-left: 33.33333%;
    }

    .offset-md-5 {
      margin-left: 41.66667%;
    }

    .offset-md-6 {
      margin-left: 50%;
    }

    .offset-md-7 {
      margin-left: 58.33333%;
    }

    .offset-md-8 {
      margin-left: 66.66667%;
    }

    .offset-md-9 {
      margin-left: 75%;
    }

    .offset-md-10 {
      margin-left: 83.33333%;
    }

    .offset-md-11 {
      margin-left: 91.66667%;
    }
  }

  @media (min-width: 992px) {
    .offset-lg-0 {
      margin-left: 0%;
    }

    .offset-lg-1 {
      margin-left: 8.33333%;
    }

    .offset-lg-2 {
      margin-left: 16.66667%;
    }

    .offset-lg-3 {
      margin-left: 25%;
    }

    .offset-lg-4 {
      margin-left: 33.33333%;
    }

    .offset-lg-5 {
      margin-left: 41.66667%;
    }

    .offset-lg-6 {
      margin-left: 50%;
    }

    .offset-lg-7 {
      margin-left: 58.33333%;
    }

    .offset-lg-8 {
      margin-left: 66.66667%;
    }

    .offset-lg-9 {
      margin-left: 75%;
    }

    .offset-lg-10 {
      margin-left: 83.33333%;
    }

    .offset-lg-11 {
      margin-left: 91.66667%;
    }
  }

  @media (min-width: 1200px) {
    .offset-xl-0 {
      margin-left: 0%;
    }

    .offset-xl-1 {
      margin-left: 8.33333%;
    }

    .offset-xl-2 {
      margin-left: 16.66667%;
    }

    .offset-xl-3 {
      margin-left: 25%;
    }

    .offset-xl-4 {
      margin-left: 33.33333%;
    }

    .offset-xl-5 {
      margin-left: 41.66667%;
    }

    .offset-xl-6 {
      margin-left: 50%;
    }

    .offset-xl-7 {
      margin-left: 58.33333%;
    }

    .offset-xl-8 {
      margin-left: 66.66667%;
    }

    .offset-xl-9 {
      margin-left: 75%;
    }

    .offset-xl-10 {
      margin-left: 83.33333%;
    }

    .offset-xl-11 {
      margin-left: 91.66667%;
    }
  }

  .navbar-toggler {
    -webkit-align-self: flex-start;
    -ms-flex-item-align: start;
    align-self: flex-start;
    padding: 0.25rem 0.75rem;
    font-size: 1.25rem;
    line-height: 1;
    background: transparent;
    border: 1px solid transparent;
    -webkit-border-radius: 0.25rem;
    border-radius: 0.25rem;
  }

  .navbar-toggler:focus,
  .navbar-toggler:hover {
    text-decoration: none;
  }

  .navbar-toggler-icon {
    display: inline-block;
    width: 1.5em;
    height: 1.5em;
    vertical-align: middle;
    content: "";
    background: no-repeat center center;
    -webkit-background-size: 100% 100%;
    -o-background-size: 100% 100%;
    background-size: 100% 100%;
  }

  .navbar-toggler-left {
    position: absolute;
    left: 1rem;
  }

  .navbar-toggler-right {
    position: absolute;
    right: 1rem;
  }

  @media (max-width: 575px) {
    .navbar-toggleable .navbar-nav .dropdown-menu {
      position: static;
      float: none;
    }

    .navbar-toggleable>.container {
      padding-right: 0;
      padding-left: 0;
    }
  }

  @media (min-width: 576px) {
    .navbar-toggleable {
      -webkit-box-orient: horizontal;
      -webkit-box-direction: normal;
      -webkit-flex-direction: row;
      -ms-flex-direction: row;
      flex-direction: row;
      -webkit-flex-wrap: nowrap;
      -ms-flex-wrap: nowrap;
      flex-wrap: nowrap;
      -webkit-box-align: center;
      -webkit-align-items: center;
      -ms-flex-align: center;
      align-items: center;
    }

    .navbar-toggleable .navbar-nav {
      -webkit-box-orient: horizontal;
      -webkit-box-direction: normal;
      -webkit-flex-direction: row;
      -ms-flex-direction: row;
      flex-direction: row;
    }

    .navbar-toggleable .navbar-nav .nav-link {
      padding-right: .5rem;
      padding-left: .5rem;
    }

    .navbar-toggleable>.container {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-flex-wrap: nowrap;
      -ms-flex-wrap: nowrap;
      flex-wrap: nowrap;
      -webkit-box-align: center;
      -webkit-align-items: center;
      -ms-flex-align: center;
      align-items: center;
    }

    .navbar-toggleable .navbar-collapse {
      display: -webkit-box !important;
      display: -webkit-flex !important;
      display: -ms-flexbox !important;
      display: flex !important;
      width: 100%;
    }

    .navbar-toggleable .navbar-toggler {
      display: none;
    }
  }

  @media (max-width: 767px) {
    .navbar-toggleable-sm .navbar-nav .dropdown-menu {
      position: static;
      float: none;
    }

    .navbar-toggleable-sm>.container {
      padding-right: 0;
      padding-left: 0;
    }
  }

  @media (min-width: 768px) {
    .navbar-toggleable-sm {
      -webkit-box-orient: horizontal;
      -webkit-box-direction: normal;
      -webkit-flex-direction: row;
      -ms-flex-direction: row;
      flex-direction: row;
      -webkit-flex-wrap: nowrap;
      -ms-flex-wrap: nowrap;
      flex-wrap: nowrap;
      -webkit-box-align: center;
      -webkit-align-items: center;
      -ms-flex-align: center;
      align-items: center;
    }

    .navbar-toggleable-sm .navbar-nav {
      -webkit-box-orient: horizontal;
      -webkit-box-direction: normal;
      -webkit-flex-direction: row;
      -ms-flex-direction: row;
      flex-direction: row;
    }

    .navbar-toggleable-sm .navbar-nav .nav-link {
      padding-right: .5rem;
      padding-left: .5rem;
    }

    .navbar-toggleable-sm>.container {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-flex-wrap: nowrap;
      -ms-flex-wrap: nowrap;
      flex-wrap: nowrap;
      -webkit-box-align: center;
      -webkit-align-items: center;
      -ms-flex-align: center;
      align-items: center;
    }

    .navbar-toggleable-sm .navbar-collapse {
      display: none;
      width: 100%;
    }

    .navbar-toggleable-sm .navbar-toggler {
      display: none;
    }
  }

  @media (max-width: 991px) {
    .navbar-toggleable-md .navbar-nav .dropdown-menu {
      position: static;
      float: none;
    }

    .navbar-toggleable-md>.container {
      padding-right: 0;
      padding-left: 0;
    }
  }

  @media (min-width: 992px) {
    .navbar-toggleable-md {
      -webkit-box-orient: horizontal;
      -webkit-box-direction: normal;
      -webkit-flex-direction: row;
      -ms-flex-direction: row;
      flex-direction: row;
      -webkit-flex-wrap: nowrap;
      -ms-flex-wrap: nowrap;
      flex-wrap: nowrap;
      -webkit-box-align: center;
      -webkit-align-items: center;
      -ms-flex-align: center;
      align-items: center;
    }

    .navbar-toggleable-md .navbar-nav {
      -webkit-box-orient: horizontal;
      -webkit-box-direction: normal;
      -webkit-flex-direction: row;
      -ms-flex-direction: row;
      flex-direction: row;
    }

    .navbar-toggleable-md .navbar-nav .nav-link {
      padding-right: .5rem;
      padding-left: .5rem;
    }

    .navbar-toggleable-md>.container {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-flex-wrap: nowrap;
      -ms-flex-wrap: nowrap;
      flex-wrap: nowrap;
      -webkit-box-align: center;
      -webkit-align-items: center;
      -ms-flex-align: center;
      align-items: center;
    }

    .navbar-toggleable-md .navbar-collapse {
      display: -webkit-box !important;
      display: -webkit-flex !important;
      display: -ms-flexbox !important;
      display: flex !important;
      width: 100%;
    }

    .navbar-toggleable-md .navbar-toggler {
      display: none;
    }
  }

  @media (max-width: 1199px) {
    .navbar-toggleable-lg .navbar-nav .dropdown-menu {
      position: static;
      float: none;
    }

    .navbar-toggleable-lg>.container {
      padding-right: 0;
      padding-left: 0;
    }
  }

  @media (min-width: 1200px) {
    .navbar-toggleable-lg {
      -webkit-box-orient: horizontal;
      -webkit-box-direction: normal;
      -webkit-flex-direction: row;
      -ms-flex-direction: row;
      flex-direction: row;
      -webkit-flex-wrap: nowrap;
      -ms-flex-wrap: nowrap;
      flex-wrap: nowrap;
      -webkit-box-align: center;
      -webkit-align-items: center;
      -ms-flex-align: center;
      align-items: center;
    }

    .navbar-toggleable-lg .navbar-nav {
      -webkit-box-orient: horizontal;
      -webkit-box-direction: normal;
      -webkit-flex-direction: row;
      -ms-flex-direction: row;
      flex-direction: row;
    }

    .navbar-toggleable-lg .navbar-nav .nav-link {
      padding-right: .5rem;
      padding-left: .5rem;
    }

    .navbar-toggleable-lg>.container {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-flex-wrap: nowrap;
      -ms-flex-wrap: nowrap;
      flex-wrap: nowrap;
      -webkit-box-align: center;
      -webkit-align-items: center;
      -ms-flex-align: center;
      align-items: center;
    }

    .navbar-toggleable-lg .navbar-collapse {
      display: -webkit-box !important;
      display: -webkit-flex !important;
      display: -ms-flexbox !important;
      display: flex !important;
      width: 100%;
    }

    .navbar-toggleable-lg .navbar-toggler {
      display: none;
    }
  }

  .navbar-toggleable-xl {
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    -webkit-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
    -webkit-flex-wrap: nowrap;
    -ms-flex-wrap: nowrap;
    flex-wrap: nowrap;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
  }

  .navbar-toggleable-xl .navbar-nav .dropdown-menu {
    position: static;
    float: none;
  }

  .navbar-toggleable-xl>.container {
    padding-right: 0;
    padding-left: 0;
  }

  .navbar-toggleable-xl .navbar-nav {
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    -webkit-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
  }

  .navbar-toggleable-xl .navbar-nav .nav-link {
    padding-right: .5rem;
    padding-left: .5rem;
  }

  .navbar-toggleable-xl>.container {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-wrap: nowrap;
    -ms-flex-wrap: nowrap;
    flex-wrap: nowrap;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
  }

  .navbar-toggleable-xl .navbar-collapse {
    display: -webkit-box !important;
    display: -webkit-flex !important;
    display: -ms-flexbox !important;
    display: flex !important;
    width: 100%;
  }

  .navbar-toggleable-xl .navbar-toggler {
    display: none;
  }

  .card-img {
    width: auto;
  }

  .menu .navbar.collapsed:not(.beta-menu) {
    flex-direction: column;
    -webkit-flex-direction: column;
  }

  .carousel-item.active,
  .carousel-item-next,
  .carousel-item-prev {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
  }

  .note-air-layout .dropup .dropdown-menu,
  .note-air-layout .navbar-fixed-bottom .dropdown .dropdown-menu {
    bottom: initial !important;
  }

  html,
  body {
    height: auto;
    min-height: 100vh;
  }

  .dropup .dropdown-toggle::after {
    display: none;
  }

  .cid-rWZLVBYv2o {
    background-image: url("https://images2.alphacoders.com/775/thumb-1920-775580.jpg");
  }

  .cid-rWZLVBYv2o h1 {
    color: #616161;
  }

  .cid-rWZLVBYv2o h2,
  .cid-rWZLVBYv2o h3,
  .cid-rWZLVBYv2o p {
    color: #767676;
  }

  .cid-rWZLVBYv2o .mbr-section-subtitle {
    font-style: italic;
  }

  /*!
 * Mobirise v4 theme (https://mobirise.com/)
 * Copyright 2017 Mobirise
 */
  section {
    background-color: #eeeeee;
  }

  section,
  .container,
  .container-fluid {
    position: relative;
    word-wrap: break-word;
  }

  a.mbr-iconfont:hover {
    text-decoration: none;
  }

  .article .lead p,
  .article .lead ul,
  .article .lead ol,
  .article .lead pre,
  .article .lead blockquote {
    margin-bottom: 0;
  }

  a {
    font-style: normal;
    font-weight: 400;
    cursor: pointer;
  }

  a,
  a:hover {
    text-decoration: none;
  }

  figure {
    margin-bottom: 0;
  }

  body {
    color: #232323;
  }

  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  .h1,
  .h2,
  .h3,
  .h4,
  .h5,
  .h6,
  .display-1,
  .display-2,
  .display-3,
  .display-4 {
    line-height: 1;
    word-break: break-word;
    word-wrap: break-word;
  }

  b,
  strong {
    font-weight: bold;
  }

  blockquote {
    padding: 10px 0 10px 20px;
    position: relative;
    border-left: 2px solid;
    border-color: #ff3366;
  }

  input:-webkit-autofill,
  input:-webkit-autofill:hover,
  input:-webkit-autofill:focus,
  input:-webkit-autofill:active {
    transition-delay: 9999s;
    transition-property: background-color, color;
  }

  textarea[type="hidden"] {
    display: none;
  }

  body {
    position: relative;
  }

  section {
    background-position: 50% 50%;
    background-repeat: no-repeat;
    background-size: cover;
  }

  section .mbr-background-video,
  section .mbr-background-video-preview {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    top: 0;
  }

  .hidden {
    visibility: hidden;
  }

  .mbr-z-index20 {
    z-index: 20;
  }

  /*! Base colors */
  .mbr-white {
    color: #ffffff;
  }

  .mbr-black {
    color: #000000;
  }

  .mbr-bg-white {
    background-color: #ffffff;
  }

  .mbr-bg-black {
    background-color: #000000;
  }

  /*! Text-aligns */
  .align-left {
    text-align: left;
  }

  .align-center {
    text-align: center;
  }

  .align-right {
    text-align: right;
  }

  @media (max-width: 767px) {

    .align-left,
    .align-center,
    .align-right,
    .mbr-section-btn,
    .mbr-section-title {
      text-align: center;
    }
  }

  /*! Font-weight  */
  .mbr-light {
    font-weight: 300;
  }

  .mbr-regular {
    font-weight: 400;
  }

  .mbr-semibold {
    font-weight: 500;
  }

  .mbr-bold {
    font-weight: 700;
  }

  /*! Media  */
  .media-size-item {
    -webkit-flex: 1 1 auto;
    -moz-flex: 1 1 auto;
    -ms-flex: 1 1 auto;
    -o-flex: 1 1 auto;
    flex: 1 1 auto;
  }

  .media-content {
    -webkit-flex-basis: 100%;
    flex-basis: 100%;
  }

  .media-container-row {
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
    -webkit-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    -webkit-justify-content: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-align-content: center;
    -ms-flex-line-pack: center;
    align-content: center;
    -webkit-align-items: start;
    -ms-flex-align: start;
    align-items: start;
  }

  .media-container-row .media-size-item {
    width: 400px;
  }

  .media-container-column {
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    -webkit-justify-content: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-align-content: center;
    -ms-flex-line-pack: center;
    align-content: center;
    -webkit-align-items: stretch;
    -ms-flex-align: stretch;
    align-items: stretch;
  }

  .media-container-column>* {
    width: 100%;
  }

  @media (min-width: 992px) {
    .media-container-row {
      -webkit-flex-wrap: nowrap;
      -ms-flex-wrap: nowrap;
      flex-wrap: nowrap;
    }
  }

  figure {
    overflow: hidden;
  }

  figure[mbr-media-size] {
    transition: width 0.1s;
  }

  .mbr-figure img,
  .mbr-figure iframe {
    display: block;
    width: 100%;
  }

  .card {
    background-color: transparent;
    border: none;
  }

  .card-img {
    text-align: center;
    flex-shrink: 0;
    -webkit-flex-shrink: 0;
  }

  .media {
    max-width: 100%;
    margin: 0 auto;
  }

  .mbr-figure {
    -ms-flex-item-align: center;
    -ms-grid-row-align: center;
    -webkit-align-self: center;
    align-self: center;
  }

  .media-container>div {
    max-width: 100%;
  }

  .mbr-figure img,
  .card-img img {
    width: 100%;
  }

  @media (max-width: 991px) {
    .media-size-item {
      width: auto !important;
    }

    .media {
      width: auto;
    }

    .mbr-figure {
      width: 100% !important;
    }
  }

  /*! Buttons */
  .mbr-section-btn {
    margin-left: -.25rem;
    margin-right: -.25rem;
    font-size: 0;
  }

  nav .mbr-section-btn {
    margin-left: 0rem;
    margin-right: 0rem;
  }

  /*! Btn icon margin */
  .btn .mbr-iconfont,
  .btn.btn-sm .mbr-iconfont {
    cursor: pointer;
    margin-right: 0.5rem;
  }

  .btn.btn-md .mbr-iconfont,
  .btn.btn-md .mbr-iconfont {
    margin-right: 0.8rem;
  }

  .mbr-regular {
    font-weight: 400;
  }

  .mbr-semibold {
    font-weight: 500;
  }

  .mbr-bold {
    font-weight: 700;
  }

  [type="submit"] {
    -webkit-appearance: none;
  }

  /*! Full-screen */
  .mbr-fullscreen .mbr-overlay {
    min-height: 100vh;
  }

  .mbr-fullscreen {
    display: flex;
    display: -webkit-flex;
    display: -moz-flex;
    display: -ms-flex;
    display: -o-flex;
    align-items: center;
    -webkit-align-items: center;
    min-height: 100vh;
    padding-top: 3rem;
    padding-bottom: 3rem;
  }

  /*! Map */
  .map {
    height: 25rem;
    position: relative;
  }

  .map iframe {
    width: 100%;
    height: 100%;
  }

  /* Form */
  .form-asterisk {
    font-family: initial;
    position: absolute;
    top: -2px;
    font-weight: normal;
  }

  /*! Scroll to top arrow */
  .mbr-arrow-up {
    bottom: 25px;
    right: 90px;
    position: fixed;
    text-align: right;
    z-index: 5000;
    color: #ffffff;
    font-size: 32px;
    transform: rotate(180deg);
    -webkit-transform: rotate(180deg);
  }

  .mbr-arrow-up a {
    background: rgba(0, 0, 0, 0.2);
    border-radius: 3px;
    color: #fff;
    display: inline-block;
    height: 60px;
    width: 60px;
    outline-style: none !important;
    position: relative;
    text-decoration: none;
    transition: all .3s ease-in-out;
    cursor: pointer;
    text-align: center;
  }

  .mbr-arrow-up a:hover {
    background-color: rgba(0, 0, 0, 0.4);
  }

  .mbr-arrow-up a i {
    line-height: 60px;
  }

  .mbr-arrow-up-icon {
    display: block;
    color: #fff;
  }

  .mbr-arrow-up-icon::before {
    content: "\203a";
    display: inline-block;
    font-family: serif;
    font-size: 32px;
    line-height: 1;
    font-style: normal;
    position: relative;
    top: 6px;
    left: -4px;
    -webkit-transform: rotate(-90deg);
    transform: rotate(-90deg);
  }

  /*! Arrow Down */
  .mbr-arrow {
    position: absolute;
    bottom: 45px;
    left: 50%;
    width: 60px;
    height: 60px;
    cursor: pointer;
    background-color: rgba(80, 80, 80, 0.5);
    border-radius: 50%;
    -webkit-transform: translateX(-50%);
    transform: translateX(-50%);
  }

  .mbr-arrow>a {
    display: inline-block;
    text-decoration: none;
    outline-style: none;
    -webkit-animation: arrowdown 1.7s ease-in-out infinite;
    animation: arrowdown 1.7s ease-in-out infinite;
  }

  .mbr-arrow>a>i {
    position: absolute;
    top: -2px;
    left: 15px;
    font-size: 2rem;
  }

  @keyframes arrowdown {
    0% {
      transform: translateY(0px);
      -webkit-transform: translateY(0px);
    }

    50% {
      transform: translateY(-5px);
      -webkit-transform: translateY(-5px);
    }

    100% {
      transform: translateY(0px);
      -webkit-transform: translateY(0px);
    }
  }

  @-webkit-keyframes arrowdown {
    0% {
      transform: translateY(0px);
      -webkit-transform: translateY(0px);
    }

    50% {
      transform: translateY(-5px);
      -webkit-transform: translateY(-5px);
    }

    100% {
      transform: translateY(0px);
      -webkit-transform: translateY(0px);
    }
  }

  @media (max-width: 500px) {
    .mbr-arrow-up {
      left: 50%;
      right: auto;
      transform: translateX(-50%) rotate(180deg);
      -webkit-transform: translateX(-50%) rotate(180deg);
    }
  }

  /*Gradients animation*/
  @keyframes gradient-animation {
    from {
      background-position: 0% 100%;
      animation-timing-function: ease-in-out;
    }

    to {
      background-position: 100% 0%;
      animation-timing-function: ease-in-out;
    }
  }

  @-webkit-keyframes gradient-animation {
    from {
      background-position: 0% 100%;
      animation-timing-function: ease-in-out;
    }

    to {
      background-position: 100% 0%;
      animation-timing-function: ease-in-out;
    }
  }

  .bg-gradient {
    background-size: 200% 200%;
    animation: gradient-animation 5s infinite alternate;
    -webkit-animation: gradient-animation 5s infinite alternate;
  }

  .menu .navbar-brand {
    display: -webkit-flex;
  }

  .menu .navbar-brand span {
    display: flex;
    display: -webkit-flex;
  }

  .menu .navbar-brand .navbar-caption-wrap {
    display: -webkit-flex;
  }

  .menu .navbar-brand .navbar-logo img {
    display: -webkit-flex;
  }

  @media (min-width: 768px) and (max-width: 991px) {
    .menu .navbar-toggleable-sm .navbar-nav {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
    }
  }

  @media (min-width: 992px) {
    .menu .navbar-nav.nav-dropdown {
      display: -webkit-flex;
    }

    .menu .navbar-toggleable-sm .navbar-collapse {
      display: -webkit-flex !important;
    }
  }

  @media (max-width: 767px) {
    .menu .navbar-collapse {
      overflow-y: auto;
      max-height: 80vh;
    }

    .menu .dropdown-menu {
      max-height: 60vh;
      overflow-y: auto;
    }
  }

  .navbar {
    display: -webkit-flex;
    -webkit-flex-wrap: wrap;
    -webkit-align-items: center;
    -webkit-justify-content: space-between;
  }

  .navbar-collapse {
    -webkit-flex-basis: 100%;
    -webkit-flex-grow: 1;
    -webkit-align-items: center;
  }

  .nav-dropdown .link {
    padding: .667em 1.667em !important;
    margin: 0 !important;
  }

  .nav {
    display: -webkit-flex;
    -webkit-flex-wrap: wrap;
  }

  .row {
    display: -webkit-flex;
    -webkit-flex-wrap: wrap;
  }

  .justify-content-center {
    -webkit-justify-content: center;
  }

  .form-inline {
    display: -webkit-flex;
    -webkit-flex-flow: row wrap;
    -webkit-align-items: center;
  }

  .card-wrapper {
    flex: 1;
    -webkit-flex: 1;
  }

  .carousel-control {
    z-index: 10;
    display: -webkit-flex;
    -webkit-align-items: center;
    -webkit-justify-content: center;
  }

  .carousel-controls {
    display: -webkit-flex;
  }

  .media {
    display: -webkit-flex;
  }

  /*# sourceMappingURL=style.css.map */
  .engine {
    position: absolute;
    text-indent: -2400px;
    text-align: center;
    padding: 0;
    top: 0;
    left: -2400px;
  }
</style>
 
</body>
</html>