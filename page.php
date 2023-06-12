<?php 
define('security',true);

require_once 'inc/header.php'; ?>

		<!-- WRAPPER START -->
		<div class="wrapper">

		<?php require_once 'inc/menu.php'; ?>

			<!-- HEADER-AREA END -->
			<!-- Mobile-menu start -->
			<?php require_once 'inc/mobilemenu.php'; ?>


			<?php 
				$sef = get('pagesef');
				if(!$sef){
					go(site);
				}

				$page = $db->prepare("SELECT * FROM sayfalar WHERE sef=:s AND durum=:d");
				$page->execute([':s' => $sef,':d'=>1]);
				if($page->rowCount()){
					$row = $page->fetch(PDO::FETCH_OBJ);
				}else{
					go(site);
					exit;
				}
			?>

			<!-- Mobile-menu end -->
			<!-- HEADING-BANNER START -->
			<div class="heading-banner-area overlay-bg" style="background: rgba(0, 0, 0, 0) url(<?php echo site;?>/uploads/<?php echo $row->kapak;?>) no-repeat scroll center center / cover;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="heading-banner">
								<div class="heading-banner-title">
									<h2><?php echo $row->baslik;?></h2>
								</div>
								<div class="breadcumbs pb-15">
									<ul>
										<li><a href="<?php echo site;?>">Ana Sayfa</a></li>
										<li><?php echo $row->baslik;?></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- HEADING-BANNER END -->
			<!-- ABOUT-US-AREA START -->
			<div class="about-us-area  pt-80 pb-80">
				<div class="container">	
					<div class="about-us bg-white">
						<div class="row">
							
							<div class="col-lg-12">
								
									<h4 class="title-1 title-border mb-30"><?php echo $row->baslik;?></h4>
									<?php echo $row->icerik;?>
								
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ABOUT-US-AREA END -->

			<!-- FOOTER START -->
<?php require_once 'inc/footer.php'; ?>
