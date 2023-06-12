<?php 
define('security',true);

require_once 'inc/header.php';

if( @$_SESSION['login'] != @sha1(md5(IP().$bcode)) ){
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
			<h2>ÖDEME EKRANI</h2>
		</div>
		<div class="breadcumbs pb-15">
			<ul>
				<li><a href="<?php echo site;?>">Ana Sayfa</a></li>
				<li>Ödeme Ekranı</li>
			</ul>
		</div>
	</div>
</div>
</div>
</div>
</div>
<!-- HEADING-BANNER END -->
<!-- CHECKOUT-AREA START -->
<div class="shopping-cart-area  pt-80 pb-80">
<div class="container">	
<div class="row">
<div class="col-lg-12">
	<?php if($arow->sitesiparisdurum == 1){ ?>
	<div class="shopping-cart">
		<!-- Nav tabs -->
		<ul class="cart-page-menu nav row clearfix mb-30">
			<li><a class="active" href="#check-out" data-bs-toggle="tab">ÖDEME</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<!-- shopping-cart start -->
		
		
			<!-- wishlist end -->
			<!-- check-out start -->
			<div class="tab-pane active" id="check-out">
				<form action="#" onsubmit="return false;" id="orderformz" method="POST">
					<div class="shop-cart-table check-out-wrap">
						<div class="row">
							<div class="col-md-12">
								<div class="billing-details pr-20">
									<h4 class="title-1 title-border text-uppercase mb-30">SİPARİŞ BİLGİLERİ</h4>
									<input type="text" name="name" placeholder="Siparişi teslim alacak isim&soyisim" value="<?php echo $bname;?>">
									<input type="text" name="phone" placeholder="Siparişi teslim alacak telefon numarası" value="<?php echo $bphone;?>">
									<textarea class="custom-textarea" name="note" placeholder="Sipariş notunuz" ></textarea>

									<a href="#" data-bs-toggle="modal"  data-bs-target="#addressmodal">[+Yeni Adres Ekle]</a>
									<select name="address" class="custom-select mb-15">
										<option value="0">Adres seçiniz</option>
										<?php 
											$address = $db->prepare("SELECT * FROM bayi_adresler WHERE adresbayi=:a AND adresdurum=:d");
											$address->execute([':a' => $bcode,':d'=>1]);
											if($address->rowCount()){
												foreach($address as $add){
													echo '<option value='.$add['id'].'>'.$add['adresbaslik'].' ('.$add['adrestarif'].')</option>';
												}
											}
										?>
									</select>
								</div>
							</div>
						
							<div class="col-md-6">
								<div class="our-order payment-details mt-60 pr-20">
									<h4 class="title-1 title-border text-uppercase mb-30">TOPLAM TUTAR</h4>
									<table>
										<thead>
											<tr>
												<th><strong>Ürün</strong></th>
												<th class="text-end"><strong>Tutar</strong></th>
											</tr>
										</thead>
										<tbody>
											<?php 
												$shopping = $db->prepare("SELECT * FROM sepet
												INNER JOIN urunler ON urunler.urunkodu = sepet.sepeturun
												WHERE sepetbayi=:b");
												$shopping->execute([':b' => $bcode]);
												if($shopping->rowCount()){
												$total = 0;
												foreach($shopping as $shop){
												$total += $shop['toplamfiyat'];
											?>
											<tr>
												<td><?php echo $shop['urunbaslik'];?>  x <?php echo $shop['sepetadet'];?></td>
												<td class="text-end"><?php echo $shop['toplamfiyat']." ₺";?></td>
											</tr>
											<?php } ?>

											<tr>
												<td>Genel Toplam</td>
												<td class="text-end"><?php echo $total." ₺";?></td>
											</tr>

													
											<?php } ?>
											
										</tbody>
									</table>
								</div>
							</div>
							<!-- payment-method -->
							<div class="col-md-6">
								<div class="payment-method mt-60  pl-20">
									<h4 class="title-1 title-border text-uppercase mb-30">ÖDEME YÖNTEMİ</h4>
									<div class="payment-accordion">
										<select name="payment" class="custom-select mb-15">
											<option value="0">Ödeme yöntemi seçiniz</option>
											<option value="1">Havale/EFT</option>
											<option value="2">Kredi Kartı</option>
										</select>
									</div>															
								</div>
								
								<button onclick="ordercompleted();" id="ordercomplet" type="submit" class="button-one submit-button mt-20   ml-20">SİPARİŞİ TAMAMLA</button>

							</div>
						</div>
					</div>

				</form>											
			</div>
			
			<!-- order-complete end -->
		</div>

	</div>
<?php }else{
		alert("Web sitemiz sipariş işlemlerine kapalıdır, en kısa sürede aktif edilecektir","warning");


} ?>
</div>
</div>
</div>
</div>
<!-- CHECKOUT-AREA END -->
<?php require_once 'inc/footer.php'; ?>


<div class="modal fade" id="addressmodal" tabindex="-1" role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							</div>
							<div class="modal-body">
								<div class="modal-product">
									

									<div class="product-info" style="width:90%">
										<h1>Yeni Adres Ekle</h1>
										

										<div class="quick-add-to-cart">
											<form method="post" class="cart" onsubmit="return false;" id="newaddressform">
												<div >
													<input type="text" name="title" placeholder="Adres başlık">

													<input type="text" name="content" placeholder="Açık adresiniz">
												</div>
												<button onclick='newaddress()' id='newaddres' class="single_add_to_cart_button" type="submit">YENİ ADRES EKLE</button>
											</form>

										</div>
										
										
									</div><!-- .product-info -->
								</div><!-- .modal-product -->
							</div><!-- .modal-body -->
						</div><!-- .modal-content -->
					</div><!-- .modal-dialog -->
			   </div>