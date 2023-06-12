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
			<h2>Ürünler</h2>
		</div>
		<div class="breadcumbs pb-15">
			<ul>
				<li><a href="<?php echo site;?>">Ana Sayfa</a></li>
			</ul>
		</div>
	</div>
</div>
</div>
</div>
</div>
<!-- HEADING-BANNER END -->
<!-- PRODUCT-AREA START -->
<div class="product-area pt-80 pb-80 product-style-2">
<div class="container">
<div class="row">

<?php require_once 'inc/sidebar.php'; ?>

<?php 

	$s = @intval(get('s'));
	if(!$s){
		$s = 1;
	}

	$plist = $db->prepare("SELECT * FROM urunler WHERE urundurum=:d AND urunvitrin=:v ORDER BY uruntarih DESC");
	$plist->execute([':d'=>1,':v'=>1]);

	$total = $plist->rowCount();
	$lim   = 9;
	$show  = $s * $lim - $lim;


	$plist = $db->prepare("SELECT * FROM urunler WHERE urundurum=:d AND urunvitrin=:v ORDER BY uruntarih DESC LIMIT :show,:lim");

	$plist->bindValue(':d',(int) 1,PDO::PARAM_INT);
	$plist->bindValue(':v',(int) 1,PDO::PARAM_INT);
	$plist->bindValue(':show',(int) $show,PDO::PARAM_INT);
	$plist->bindValue(':lim',(int) $lim,PDO::PARAM_INT);
	$plist->execute();

	if($s > ceil($total / $lim)){
		$s = 1;
	}





?>

<div class="col-lg-9 order-1 order-lg-2">
	<!-- Shop-Content End -->
	<div class="shop-content mt-tab-30 mb-30 mb-lg-0">
		<div class="product-option mb-30 clearfix">

			<p class="mb-0">Ürün Listesi (<?php echo $total;?>)</p>

		</div>
		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane active" id="grid-view">							
				<div class="row">
					
					<?php if($plist->rowCount()){ 
					
					$price  = 0;
					foreach($plist as $row){

					
					if(@$bgift > 0){

						$calc  = $row['urunfiyat'] * $bgift / 100;
						$price = $row['urunfiyat'] - $calc;

					}else{
						$price = $row['urunfiyat'];
					}
					
					?>

					<div class="col-lg-4 col-md-6">
						<div class="single-product" >
							<div class="product-img"  >
                            
								<a href="<?php echo site."/product/".$row['urunsef'];?>">
									<img style="width: 240px;height: 162px; object-fit: contain; width="240" height="162" src="<?php echo site."/uploads/product/".$row['urunkapak'];?>" alt="<?php echo $row['urunbaslik'];?>" />
								</a>
							</div>
							<div class="product-info clearfix text-center">
								<div class="fix">
									<h4 class="post-title"><a href="<?php echo site."/product/".$row['urunsef'];?>"><?php echo $row['urunbaslik'];?></a></h4>
								</div>
								<div style="background-color:#dee2e6;" class="product-action">
									<!-- <form action="" method="POST" onsubmit="return false;" id="addcartform">
                                    <input type="hidden" value="<?php echo $row->urunkodu;?>" name="pcode"/>
                                    <div class="input-group">
                                    <input type="number" value="1" name="qty" class="cart-plus-minus-box form-control" min="1" style="width: 0; height: 0; border: none; padding: 0; margin: 0; opacity: 0; position: absolute; pointer-events: none;">
                                    <div class="input-group-append">
                            <button type="submit" onclick="addcart();" id="addcartt" class="btn btn-default"><i class="zmdi zmdi-shopping-cart"></i></button>
                                </div>
                            </div>
                                    </form> <button type="submit" onclick="addcart();" id="addcartt" class="btn btn-default"><i class="zmdi zmdi-shopping-cart-plus"></i> Sepete Ekle</button>
                                    <a onclick="addcartTwo('<?php echo $row->urunkodu;?>', 1);"><button type="button" class="btn btn-default"><i class="zmdi zmdi-shopping-cart"></i></button></a>
                                    


	<button type="submit" onclick="addcart();" id="addcartt" class="btn btn-default"><i class="zmdi zmdi-shopping-cart-plus"></i> Sepete Ekle</button>-->

   	

                                    <span class="pro-price"><?php echo $price." ₺";?></span>
								
								
								</div>
							</div>
						</div>
					</div>
<script>
	


 
</script>
					<?php 

					}
					

					}else{ 

						alert('Ürün bulunmuyor','danger');

						}?>

					

				</div>
			</div>
		
		</div>


		<!-- Pagination start -->
		<div class="shop-pagination text-center">
			<div class="pagination">
				<ul>
					<?php 
						if($total > $lim){
							pagination($s, ceil($total/$lim),'?s=');
						}
					?>	
				</ul>
			</div>
		</div>					
		<!-- Pagination end -->


	</div>
	<!-- Shop-Content End -->
</div>
</div>
</div>
</div>
<!-- PRODUCT-AREA END -->
<?php require_once 'inc/footer.php'; ?>
