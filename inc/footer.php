<?php echo !defined('security') ? die("HACK") : null; ?>
<footer>
<!-- Footer-area start -->
<div class="footer-area footer-2">
	<div class="container">
		<div class="row">


			<div class="col-lg-4 col-md-4">
				<div class="single-footer">
					<h3 class="footer-title  title-border">İLETİŞİM BİLGİLERİMİZ</h3>
					<ul class="footer-contact">
						<li><a><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;</a><?php echo $arow->adres;?></li>
						<li><a><i class="fa fa-phone" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;</a><?php echo $arow->tel;?></li>
						<li><a><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;</a><?php echo $arow->eposta;?></li>
					</ul>
				</div>
			</div>


			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="single-footer">
					<h3 class="footer-title  title-border">HESABIM</h3>
					<ul class="footer-menu">
						<li><a href="/hakkimizda.php"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Hakkımızda</a></li>
						<li><a href="<?php echo site;?>/login-register"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Bayi Giriş - Kayıt</a></li>
						<li><a href="<?php echo site;?>/cart"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Sepetim</a></li>
						<li><a href="<?php echo site;?>/contact-us"><i class="fa fa-angle-double-right" aria-hidden="true"></i>İletişim</a></li>
					</ul>
				</div>
			</div>


			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="single-footer">
					<h3 class="footer-title  title-border">KURUMSAL</h3>
					<ul class="footer-menu">
						<?php 
							$pages = $db->prepare("SELECT * FROM sayfalar WHERE durum=:d");
							$pages->execute([':d' => 1]);
							if($pages->rowCount()){
								foreach($pages as $page){
									echo ' <li><a href="'.site.'/page/'.$page['sef'].'"><i class="fa fa-angle-double-right" aria-hidden="true"></i>'.$page['baslik'].'</a></li>';
								}
							}
						?>
					</ul>
				</div>
			</div>


			
		</div>
	</div>
</div>
<!-- Footer-area end -->
<!-- Copyright-area start -->
<div class="copyright-area copyright-2">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="copyright">
					<a class="mb-0">&copy; <a>Copyright &copy; </a> <?php echo date('Y');?>. Tüm Hakları Saklıdır.
                    
				</div>
			</div>
			<div class="col-md-6">
				<div class="payment  text-md-end">
					<a href="#"><img src="img/payment/1.png" alt="" /></a>
					<a href="#"><img src="img/payment/2.png" alt="" /></a>
					<a href="#"><img src="img/payment/3.png" alt="" /></a>
					<a href="#"><img src="img/payment/4.png" alt="" /></a>
				</div>
			</div>
		</div>
	</div>
    
    <div style="text-align: center;">
    <a>Made by <a href="https://github.com/omertamgac" target="_blank">Ömer</a> <a> &amp; </a> <a href="https://github.com/HsynBrnQuenjou" target="_blank">Baran</a></a>
    </div>

                    
</div>
<!-- Copyright-area start -->
</footer>
<!-- FOOTER END -->


</div>
<!-- WRAPPER END -->

<!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- all js here -->
<!-- jquery latest version -->

<script src="<?php echo site;?>/js/vendor/jquery-3.6.0.min.js"></script>
<script src="<?php echo site;?>/js/vendor/jquery-migrate-3.3.2.min.js"></script>
<!-- bootstrap js -->
<script src="<?php echo site;?>/js/bootstrap.bundle.min.js"></script>
<!-- jquery.meanmenu js -->
<script src="<?php echo site;?>/js/jquery.meanmenu.js"></script>
<!-- slick.min js -->
<script src="<?php echo site;?>/js/slick.min.js"></script>
<!-- jquery.treeview js -->
<script src="<?php echo site;?>/js/jquery.treeview.js"></script>
<!-- lightbox.min js -->
<script src="<?php echo site;?>/js/lightbox.min.js"></script>
<!-- jquery-ui js -->
<script src="<?php echo site;?>/js/jquery-ui.min.js"></script>
<!-- jquery.nivo.slider js -->

<!-- jquery.nicescroll.min js -->
<script src="<?php echo site;?>/js/jquery.nicescroll.min.js"></script>
<!-- countdon.min js -->
<script src="<?php echo site;?>/js/countdon.min.js"></script>
<!-- wow js -->
<script src="<?php echo site;?>/js/wow.min.js"></script>
<!-- plugins js -->
<script src="<?php echo site;?>/js/plugins.js"></script>
<!-- main js -->
<script src="<?php echo site;?>/js/main.js"></script>
<script src="<?php echo site;?>/js/custom.js?v=<?php echo time();?>"></script>
</body>
</html>