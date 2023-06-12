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

<?php 

$shopping = $db->prepare("SELECT * FROM sepet
INNER JOIN urunler ON urunler.urunkodu = sepet.sepeturun
WHERE sepetbayi=:b");
$shopping->execute([':b' => $bcode]);

if(isset($_GET['productdelete'])){
	$code   = get('code');
	$delete = $db->prepare("DELETE FROM sepet WHERE sepeturun=:u AND sepetbayi=:b");
	$delete->execute([':u' => $code,':b'=>$bcode]);
	go($_SERVER['HTTP_REFERER']);
}

if(isset($_GET['qtybutton'])){
	$pcode   = get('pcode');
	$qty     = get('qtybutton');

	if($pcode && $qty && $qty > 0){

		$prow   = $db->prepare("SELECT urunkodu,urunfiyat,urundurum FROM urunler WHERE urunkodu=:k");
		$prow->execute([':k' => $pcode]);
		$productrow = $prow->fetch(PDO::FETCH_OBJ);


		if(@$bgift > 0){

			$calc  = $productrow->urunfiyat * $bgift / 100;
			$price = $productrow->urunfiyat - $calc;

		}else{
			$price = $productrow->urunfiyat;
		}

		
		$totalprice = $price * $qty;
		$tax        = $totalprice * $arow->sitekdv / 100;
		$subtotal   = $totalprice + $tax;


		$result = $db->prepare("UPDATE sepet SET
                       
			sepetadet  =:a,
			birimfiyat =:bi,
			toplamfiyat=:tf,
			kdv        =:ka WHERE sepeturun=:u AND sepetbayi=:b
		");

		$result->execute([

			':a'   => $qty,
			':bi'  => $price,
			':tf'  => $subtotal,
			':ka'  => $arow->sitekdv,
			':u'   => $productrow->urunkodu,
			':b'   => $bcode
		]);

		go($_SERVER['HTTP_REFERER']);

	}

}
?>

<!-- Mobile-menu end -->
<!-- HEADING-BANNER START -->
<div class="heading-banner-area overlay-bg" style="background: rgba(0, 0, 0, 0) url(<?php echo site;?>/uploads/Topic_Banner_Short.jpg) no-repeat scroll center center / cover;">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="heading-banner">
<div class="heading-banner-title">
<h2>ALIŞVERİŞ SEPETİ (<?php echo $shopping->rowCount();?>)</h2>
</div>
<div class="breadcumbs pb-15">
<ul>
<li><a href="<?php echo site;?>">ANA SAYFA</a></li>
<li>ALIŞVERİŞ SEPETİ</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- HEADING-BANNER END -->
<!-- SHOPPING-CART-AREA START -->
<div class="shopping-cart-area  pt-80 pb-80">
<div class="container">	
<div class="row">
<div class="col-lg-12">
<div class="shopping-cart">
<!-- Nav tabs -->


<?php if($arow->sitesiparisdurum == 1){ ?>
<ul class="cart-page-menu nav row clearfix mb-30">
<li><a class="active" href="#shopping-cart" data-bs-toggle="tab">SEPETİM (<?php echo $shopping->rowCount();?>)</a></li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
<!-- shopping-cart start -->
<div class="tab-pane active" id="shopping-cart">

<?php

if($shopping->rowCount()){ ?>

<div class="shop-cart-table">
<div class="table-content table-responsive">
	<table>
		<thead>
			<tr>
				<th class="product-thumbnail">Ürün</th>
				<th class="product-price">Fiyat</th>
				<th class="product-quantity">Adet</th>
				<th class="product-subtotal">Toplam</th>
				<th class="product-remove">İşlem</th>
			</tr>
		</thead>
		<tbody>
			
			<?php 
				$totalprice = 0;
			
				foreach($shopping as $cart){
				
				$ptax = $cart['kdv'] == 0 ? '' : ' +KDV';	

				?>

				<tr>
					<td class="product-thumbnail  text-left">
						<!-- Single-product start -->
						<div class="single-product" style="width=110px; height=110px; box-shadow:3px 3px 8px 3px white;">
							<div class="product-img" style"border: none">
								<a href="<?php echo site."/product/".$cart['urunsef'];?>">
								<img src="<?php echo site."/uploads/product/".$cart['urunkapak'];?>" width="270" height="270" style="border: 2px solid white;" alt="<?php echo $cart['urunbaslik'];?>"  />
							</a>
							</div>
							<div class="product-info" style="float:none!important">
								<h6 class="post-title"><a class="text-light-black" href="<?php echo site."/product/".$cart['urunsef'];?>"><?php echo $cart['urunbaslik'];?></a></h6>
							
							</div>
						</div>
						<!-- Single-product end -->												
					</td>
					<td class="product-price"><?php echo $cart['birimfiyat']." ₺";?></td>
					<td class="product-quantity">
						
						<form action="<?php echo site."/cart.php";?>" method="GET">
							<input min="1" type="number" value="<?php echo $cart['sepetadet'];?>" name="qtybutton" class="cart-plus-minus-box">
							<input type="hidden" name="pcode" value="<?php echo $cart['sepeturun'];?>" />
							<button type="submit" class="btn btn-default"> Güncelle</button>
						</form>
						
					</td>
					<td class="product-subtotal"><?php echo $cart['toplamfiyat']." ₺";?></td>
					<td class="product-remove">
						<a onclick="return confirm('Ürünü sepetten silmek istiyor musunuz?');" href="<?php echo site."/cart?productdelete&code=".$cart['sepeturun'];?>"><i class="zmdi zmdi-close"></i></a>
					</td>
				</tr>

			<?php 
				$totalprice += $cart['toplamfiyat'];
				
			} 
			
			
			?>
		
		</tbody>
	</table>
</div>
</div>

<div class="row">

<div class="col-md-6">
	<div class="customer-login payment-details mt-30">
		<h4 class="title-1 title-border text-uppercase">Alışveriş Detayları</h4>
		<table>
			<tbody>
				
				<tr>
					<td class="text-left">KDV</td>
					<td class="text-end"><?php echo "%".$arow->sitekdv;?></td>
				</tr>
				<tr>
					<td class="text-left">Genel Toplam</td>
					<td class="text-end"><?php echo $totalprice." ₺";?></td>
				</tr>
				<tr>
					<td class="text-left"></td>
					<td class="text-end"><a class="button-one submit-button mt-20" href="<?php echo site."/checkout";?>">ÖDEME YAP & SİPARİŞİ TAMAMLA</a></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
</div>

<?php }else{
alert("Sepetinizde ürün bulunmuyor","danger");
} 


?>

</div>

<!-- order-complete end -->
</div>

</div>
<?php
}else{
	alert("Web sitemiz sipariş işlemlerine kapalıdır, en kısa sürede aktif edilecektir","warning");
}
?>


</div>
</div>
</div>
</div>
<!-- SHOPPING-CART-AREA END -->
<!-- FOOTER START -->
<?php require_once 'inc/footer.php'; ?>
