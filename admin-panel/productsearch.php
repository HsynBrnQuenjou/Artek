<?php require_once 'inc/header.php';?>
    <!-- Sidebar menu-->
    <?php require_once 'inc/sidebar.php';?>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> Ürün Arama Sonuçları</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo admin;?>"><i class="fa fa-home fa-lg"></i></a></li>
          <li class="breadcrumb-item active"><a href="#">Ürün Arama Sonuçları</a></li>
        </ul>
      </div>
      <div class="row">


      <form action="<?php echo admin."/productsearch.php";?>" method="GET" class="col-md-12">
          <div class="form-group">
            <input type="text" name="q" class="form-control" placeholder="Ürün adı ya da ürün kodu giriniz ve entera tıklayınız" />
          </div>
        </form>

     
      
        <div class="col-md-12">

          <?php   

            $s     = @intval(get('s'));
            if(!$s){
              $s   = 1;
            }

            $q     = @get('q');
            if(!$q){
              go(admin."/products.php");
            }

           
            $query = $db->prepare("SELECT * FROM urunler
              INNER JOIN urun_kategoriler ON urun_kategoriler.id = urunler.urunkat
              WHERE urunbaslik LIKE :b OR urunkodu LIKE :k
            ORDER BY urunler.id DESC");
            $query->execute([
              ':b' => '%'.$q.'%',
              ':k' => '%'.$q.'%'
            ]);

            $total = $query->rowCount();
            $lim   = 50;
            $show  = $s * $lim - $lim;

            $query = $db->prepare("SELECT * FROM urunler 
               INNER JOIN urun_kategoriler ON urun_kategoriler.id = urunler.urunkat
               WHERE urunbaslik LIKE :b OR urunkodu LIKE :k
            ORDER BY urunler.id DESC LIMIT :show,:lim");
            $query->bindValue(':show',(int) $show,PDO::PARAM_INT);
            $query->bindValue(':lim',(int) $lim,PDO::PARAM_INT);
            $query->bindValue(':b','%'.$q.'%',PDO::PARAM_STR);
            $query->bindValue(':k','%'.$q.'%',PDO::PARAM_STR);
            $query->execute();

            if($s > ceil($total / $lim)){
              $s = 1;
            }

            if($query->rowCount()){
          ?>


          <div class="tile">
            <h3 class="tile-title">Ürün Arama Sonuçları (<?php echo $total;?>)</h3>
            <div class="table-responsive">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>#Kodu</th>
                    <th>Resim</th>
                    <th>Başlık</th>
                    <th>Kategori</th>
                    <th>Fiyat</th>
                    <th>Stok</th>
                    <th>Durum</th>
                    <th>İşlem</th>
                  </tr>
                </thead>
                <tbody>

                  <?php foreach($query as $row){ ?>
                    
                    <tr> 
                    <td><?php echo $row['urunkodu'];?></td>
                    <td><img src="<?php echo $site."/uploads/product/".$row['urunkapak'];?>" width="100" height="100"/></td>
                    <td><?php echo $row['urunbaslik'];?></td>
                    <td><?php echo $row['katbaslik'];?></td>
                    <td><?php echo $row['urunfiyat']."₺";?></td>
                    <td><?php echo $row['urunstok'];?></td>
                    <td><?php echo $row['urundurum'] == 1 ? '<span class="badge badge-success ">Aktif</span>' : '<span class="badge badge-danger">Pasif</span>';?></td>
                 
                    <td>
                      <a title="Düzenle" href="<?php b2b('productedit',$row['urunkodu']);?>"><i class="fa fa-edit"></i></a> |
                      <a title="Banner Resmi" href="<?php b2b('productbanner',$row['urunkodu']);?>"><i class="fa fa-photo"></i></a> |
                      <a title="Ürün çoklu fotoğraf" href="<?php b2b('productphotos',$row['urunkodu']);?>"><i class="fa fa-photo"></i></a> |
                      <a title="Ürün Özellikler" href="<?php b2b('productskill',$row['urunkodu']);?>"><i class="fa fa-list"></i></a> | 
                      <a onclick="return confirm('Onaylıyor musunuz?');" title="Ürün sil" href="<?php b2b('productdelete',$row['urunkodu']);?>"><i class="fa fa-close"></i></a>
                    </td>
                  </tr>

                  <?php } ?>

                </tbody>
              </table>
            </div>
          </div>

          <?php }else{

            alert("Ürün bulunmuyor","danger");

           } ?>


          <div>
            <ul class="pagination">
              <?php 
                if($total > $lim){
                  pagination($s, ceil($total/$lim),'productsearch.php?q='.$q.'&s=');
                }
              ?>	
            </ul>
          </div>

        </div>

      


      </div>
    </main>
    <?php require_once 'inc/footer.php';?>