<?php 
define('security',true);
require_once 'inc/header.php'; ?>
		<!-- WRAPPER START -->
		<div class="wrapper">

			<!-- HEADER-AREA START -->
			<?php require_once 'inc/menu.php'; ?>

			<!-- HEADER-AREA END -->
			<!-- Mobile-menu start -->
			<?php require_once 'inc/mobilemenu.php'; ?>

			<!-- Mobile-menu end -->
			<!-- HEADING-BANNER START -->
			<div class="heading-banner-area overlay-bg" style="background: url(<?php echo site;?>/uploads/Topic_Banner_Short.jpg) no-repeat scroll center center / cover;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="heading-banner">
								<div class="heading-banner-title">
									<h2>404</h2>
								</div>
								<div class="breadcumbs pb-15">
									<ul>
										<li><a href="<?php echo site;?>">Anasayfa</a></li>
										<li>Error</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- HEADING-BANNER END -->
			<!-- 404-AREA START -->
			<div class="area-404 pt-80 pb-80">
				<div class="container">	
					<div class="row">
						<div class="col-lg-12">
							<div class="error-content text-center">
								<img src="uploads/error404.gif" alt="" />
								<h4 style="color: silver;" class="text-light-black mt-60">Ooops....</h4>
								<h5 style="color: silver;" class="text-light-black">Sanırım bir hata oluştu...</h5>
								<div class="error-form mt-30 mb-30">
									<form action="<?php echo site;?>/search.php">
										<input style="border-radius:15px;" type="text" name="q" placeholder="Arama Yapabilirsin..."/>
										<button type="submit"><i style="color: black;" class="zmdi zmdi-search"></i></button>
									</form>
								</div>
								<p style="color: silver;" class="text-uppercase">VEYA</p>
								<a class="anasayfa button-one submit-btn-4 go-to-home bg-white text-uppercase text-light-black" href="<?php echo site;?>" data-text="Anasayfa">Anasayfa</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 404-AREA END -->		
<?php require_once 'inc/footer.php'; ?>
