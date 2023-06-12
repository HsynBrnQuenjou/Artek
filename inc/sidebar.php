<?php echo !defined('security') ? die("HACK") : null; 
 
$cat = $db->prepare("SELECT * FROM urun_kategoriler WHERE katdurum=:d ORDER BY siralama ASC");
$cat->execute([':d' => 1]);
?>
<div class="col-lg-3 order-2 order-lg-1">
	<!-- Widget-Search start -->
	<form action="<?php echo site;?>/search.php" method="GET">

	<aside class="widget widget-search mb-30">
		
			<input type="text" name="q" placeholder="Ürün arama.." />
			<button type="submit">
				<i class="zmdi zmdi-search"></i>
			</button>
		
	</aside>
	<!-- Widget-search end -->
	<!-- Widget-Categories start -->
	<aside class="widget widget-categories mb-30">
    <div class="widget-title">
        <h4>KATEGORİLER (<?php echo $cat->rowCount(); ?>)</h4>
    </div>
    <div id="cat-treeview" class="widget-info product-cat boxscrol2">
        <ul>
            <?php
            $categoryArray = array();

            if ($cat->rowCount()) {
                foreach ($cat as $ca) {
                    $categoryArray[$ca['katbaslik']] = $ca['katsef']; // Kategorileri diziye ekleyin
                }
                ksort($categoryArray); // Diziyi anahtarlarına (kategori isimleri) göre sıralayın

                foreach ($categoryArray as $category => $sef) {
                    echo '<li><a href="../category/' . $sef . '"><span style="display: flex;align-items: center;" class="radio-label"><input style="margin-right: 10px;" type="radio" name="kat" value="' . $ca['id'] . '" />' . $category . '</span></a></li>'; // Sıralanmış kategorileri yazdırın
                }
            }
            ?>
        </ul>
    </div>
</aside>
	<!-- Widget-categories end -->
	<!-- Shop-Filter start -->
	<aside class="widget shop-filter mb-30">
		<div class="widget-title">
			<h4>FİYAT</h4>
		</div>
		<div class="widget-info">
			<div class="price_filter">
				<div class="price_slider_amount">
					<input type="text"  name="price1"  placeholder="Min Fiyat" /> 
					<input type="text"  name="price2"  placeholder="Max Fiyat" /> 
				</div>
			</div>
		</div>

		<div class="widget-info">
			<div class="price_filter">
				<div style="display:flex; justify-content: center;" class="price_slider_amount">
					<button style="margin-top:-30px" type="submit" class="button-one submit-button mt-20">FİLTRE UYGULA</button>
				</div>
			</div>
		</div>

        
	</aside>

	</form>
	<!-- Shop-Filter end -->
	<!-- Widget-Color start -->
	
	<!-- Widget-banner end -->
</div>