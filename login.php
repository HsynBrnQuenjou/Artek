<?php
define('security',true);

require_once 'inc/header.php'; 

if( @$_SESSION['login'] == @sha1(md5(IP().$bcode)) ){
    go(site);
}
?>

<!-- WRAPPER START -->
<div class="wrapper">

<!-- HEADER-AREA START -->
<?php require_once 'inc/menu.php'; ?>

<!-- HEADER-AREA END -->
<!-- Mobile-menu start -->
<?php require_once 'inc/mobilemenu.php'; ?>

<!-- Mobile-menu end -->
<!-- HEADING-BANNER START -->
<div class="heading-banner-area overlay-bg" style="background: rgba(0, 0, 0, 0) url(<?php echo site;?>/uploads/Topic_Banner_Short.jpg) no-repeat scroll center center / cover;">
<div class="container">
<div class="row">
<div class="col-md-12">
	<div class="heading-banner">
		<div class="heading-banner-title">
			<h2>GİRİŞ / KAYIT</h2>
		</div>
		<div class="breadcumbs pb-15">
			<ul>
				<li><a href="<?php echo site;?>">ANA SAYFA</a></li>
				<li>GİRİŞ / KAYIT</li>
			</ul>
		</div>
	</div>
</div>
</div>
</div>
</div>
<!-- HEADING-BANNER END -->
<!-- SHOPPING-CART-AREA START -->
<div class="login-area  pt-80 pb-80">
<div class="container">
<div class="row">



	<div class="col-lg-6">

	<form action="" method="POST" onsubmit="return false;" id="bloginform">	
		<div class="customer-login text-left">
			<h4 class="title-1 title-border text-uppercase mb-30">GİRİŞ</h4>
			<input type="text" placeholder="E-posta" name="bec">
			<input type="password" placeholder="Şifre" name="bpass">
			
			<p><a href="<?php echo site;?>/password-recovery" class="text-gray">Şifremi unuttum</a></p>
			<button type="submit" onclick="loginbutton();" id="loginbuton" class="button-one submit-button mt-15">GİRİŞ YAP</button>
		</div>		
		</form>			
	</div>




		<div class="col-lg-6">

			<form action="" method="POST" onsubmit="return false;" id="bregisterform">	

			<div class="customer-login text-left">
				<h4 class="title-1 title-border text-uppercase mb-30">KAYIT</h4>
			
				<input type="text" placeholder="Ad-soyad" name="bname">
				<input type="text" placeholder="e-posta" name="bmail">
				<input type="password" placeholder="şifre" name="bpass">
				<input type="password" placeholder="şifrenizi tekrar giriniz" name="bpass2">
				<input type="text" placeholder="Telefon" name="bphone">
				<input type="text" placeholder="Bayi vergi no" name="bvno">
				<input type="text" placeholder="Bayi vergi dairesi" name="bvd">

				<button type="submit" id="registerbuton" onclick="registerbutton();" class="button-one submit-button mt-15">KAYIT OL</button>
			</div>
			</form>
			
			
		</div>
	


</div>

</div>
</div>
<!-- SHOPPING-CART-AREA END -->
<!-- FOOTER START -->
<?php require_once 'inc/footer.php'; ?>
