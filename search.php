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
<div class="heading-banner-area overlay-bg" style="background: rgba(0, 0, 0, 0) url(<?php echo site;?>/uploads/Topic_Banner_Short.jpg) no-repeat scroll center center / cover;">
<div class="container">
<div class="row">
<div class="col-md-12">
	<div class="heading-banner">
		<div class="heading-banner-title">
			<h2>Ürün Arama Sonuçları</h2>
		</div>
		<div class="breadcumbs pb-15">
			<ul>
				<li><a href="<?php echo site;?>">Ana Sayfa</a></li>
				<li>Ürün Arama Sonuçları</li>
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

	$pname = @get('q');
	$cat   = @get('kat');
	$price1= @get('price1');
	$price2= @get('price2');

	$sql   		= "SELECT * FROM urunler";
	$where 		= null;
	$execute	= [];
	
	if($pname){
		$where   .= " urunbaslik LIKE :baslik AND urundurum=:d AND ";
		$execute[':baslik'] ="%$pname%";
		$execute[':d']      = 1;
	}

	if($cat){
		$where   .= " urunkat LIKE :kat AND urundurum=:d AND ";
		$execute[':kat']    ="%$cat%";
		$execute[':d']      = 1;
	}

	if($price1){
		$where   .= " urunfiyat >= :price1 AND urundurum=:d AND ";
		$execute[':price1']    = $price1;
		$execute[':d']      = 1;
	}

	if($price2){
		$where   .= " urunfiyat <= :price2 AND urundurum=:d AND ";
		$execute[':price2']    = $price2;
		$execute[':d']      = 1;
	}

	if($where != null){
		$sql .= ' WHERE ' . $where;
		$sql  = rtrim($sql, ' AND ');
	}

	$query    = $db->prepare($sql);
	$query->execute($execute);

	$total    = $query->rowCount();
	$lim      = 12;
	$showw    = $s * $lim - $lim;


	$query2    = $db->prepare($sql." ORDER BY uruntarih DESC LIMIT $showw,$lim");
	$query2->execute($execute);

	if($s > ceil($total / $lim)){
		$s = 1;
	}

?>

<div class="col-lg-9 order-1 order-lg-2">
	<!-- Shop-Content End -->
	<div class="shop-content mt-tab-30 mb-30 mb-lg-0">
		<div class="product-option mb-30 clearfix">

			<p class="mb-0">Ürün Arama Listesi (<?php echo $total;?>)</p>

		</div>
		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane active" id="grid-view">							
				<div class="row">
					
					<?php if($query2->rowCount()){ 
					
					$price = 0;
					foreach($query2 as $row){

					if(@$bgift > 0){

						$calc  = $row['urunfiyat'] * $bgift / 100;
						$price = $row['urunfiyat'] - $calc;

					}else{
						$price = $row['urunfiyat'];
					}

					?>

					<div class="col-lg-4 col-md-6">
						<div class="single-product">
							<div class="product-img">
								
								<a href="<?php echo site."/product/".$row['urunsef'];?>">
									<img style="width: 240px;height: 162px; object-fit: contain; width="240" height="162" src="<?php echo site."/uploads/product/".$row['urunkapak'];?>" alt="<?php echo $row['urunbaslik'];?>" />
								</a>
							</div>
							<div class="product-info clearfix text-center">
								<div class="fix">
									<h4 class="post-title"><a href="<?php echo site."/product/".$row['urunsef'];?>"><?php echo $row['urunbaslik'];?></a></h4>
								</div>
								<div style="background-color:#dee2e6; width:240px; height162px; object-fit:contain;" class="product-action">
                                    <span class="pro-price"><?php echo $price." ₺";?></span>
									
								
								
								</div>
							</div>
						</div>
					</div>

					<?php 

					}
					

					}else{ 
						//print_r($query2->errorInfo());
						alert('Kriterlere göre bulunmuyor','danger');

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
							pagination($s, ceil($total/$lim),'search.php?q='.$pname.'&kat='.$kat.'&price1='.$price1.'&price2='.$price2.'');
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
