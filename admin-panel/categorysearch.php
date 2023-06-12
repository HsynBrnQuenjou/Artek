<?php require_once 'inc/header.php';?>
    <!-- Sidebar menu-->
    <?php require_once 'inc/sidebar.php';?>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> Kategori Arama Sonuçları</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo admin;?>"><i class="fa fa-home fa-lg"></i></a></li>
          <li class="breadcrumb-item active"><a href="#">Kategori Arama Sonuçları</a></li>
        </ul>
      </div>
      <div class="row">


        <form action="<?php echo admin."/categorysearch.php"; ?>" method="GET" class="col-md-12">
          <div class="form-group">
            <input type="text" name='q' value="<?php echo @get('q'); ?>" class="form-control" placeholder="Kategori adı giriniz ve entera tıklayınız" />
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
              go(admin."/categories.php");
            }


            $query = $db->prepare("SELECT * FROM urun_kategoriler WHERE katbaslik LIKE :a ORDER BY id DESC");
            $query->execute([':a' => '%'.$q.'%']);

            $total = $query->rowCount();
            $lim   = 50;
            $show  = $s * $lim - $lim;

            $query = $db->prepare("SELECT * FROM urun_kategoriler WHERE katbaslik LIKE :a ORDER BY id DESC LIMIT :show,:lim");
            $query->bindValue(':show',(int) $show,PDO::PARAM_INT);
            $query->bindValue(':lim',(int) $lim,PDO::PARAM_INT);
            $query->bindValue(':a','%'.$q.'%',PDO::PARAM_STR);
            $query->execute();

            if($s > ceil($total / $lim)){
              $s = 1;
            }

            if($query->rowCount()){
          ?>


          <div class="tile">
            <h3 class="tile-title">Kategori Arama Sonuçları (<?php echo $total;?>)</h3>
            <div class="table-responsive">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>#ID</th>
                    <th>#Resim</th>
                    <th>Başlık</th>
                    <th>Durum</th>
                    <th>İşlem</th>
                  </tr>
                </thead>
                <tbody>

                  <?php foreach($query as $row){ ?>
                    
                    <tr> 
                    <td><?php echo $row['id'];?></td>
                    <td><img src="<?php echo $site."/uploads/".$row['katresim'];?>" width="100" height="100" /></td>
                    <td><?php echo $row['katbaslik'];?></td>
                    <td><?php echo $row['katdurum'] == 1 ? '<span class="badge badge-success ">Aktif</span>' : '<span class="badge badge-danger">Pasif</span>';?>
                  

                    <?php echo $row['silinmeyen_kat'] == 1 ? '<span class="badge badge-danger ">Silinmez kategori</span>' : null;?>
                    
                  </td>
                 
                    <td>
                      <a title="Düzenle" href="<?php b2b('categoryedit',$row['id']); ?>"><i class="fa fa-edit"></i></a> | 
                      <a onclick="return confirm('Bu kategorideki tüm ürünler, silinmez olarak seçilen kategoriye aktarılacaktır onaylıyor musunuz?');" title="Sil" href="<?php b2b('categorydelete',$row['id']);?>"><i class="fa fa-close"></i></a>
                    </td>
                  </tr>

                  <?php } ?>

                </tbody>
              </table>
            </div>
          </div>

          <?php }else{

            alert("Kategori bulunmuyor","danger");

           } ?>


          <div>
            <ul class="pagination">
              <?php 
                if($total > $lim){
                  pagination($s, ceil($total/$lim),'categorysearch.php?q='.$q.'&s=');
                }
              ?>	
            </ul>
          </div>

        </div>

      


      </div>
    </main>
    <?php require_once 'inc/footer.php';?>