<?php require_once 'inc/header.php';?>
    <!-- Sidebar menu-->
    <?php require_once 'inc/sidebar.php';?>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> Havale Bildirim Arama Sonuçları</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo admin;?>"><i class="fa fa-home fa-lg"></i></a></li>
          <li class="breadcrumb-item active"><a href="#">Havale Bildirim Arama Sonuçları</a></li>
        </ul>
      </div>
      <div class="row">

       <form action="" method="POST" class="col-md-12">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Bayi kodu giriniz ve entera tıklayınız" />
          </div>
        </form>

        <form action="" method="GET" class="col-md-2">
          <div class="form-group">
            <input type="text" name="blim" class="form-control" placeholder="Listeleme sayısı" />
          </div>
        </form>
      
        <div class="col-md-12">

          <?php   

            $s     = @intval(get('s'));
            if(!$s){
              $s   = 1;
            }

            $q   = @get('q');
            if(!$q){
              go(admin."/notification.php");
            }

            $query = $db->prepare("SELECT *,havalebildirim.id FROM havalebildirim 
              INNER JOIN bayiler ON bayiler.bayikodu = havalebildirim.havalebayi
              INNER JOIN bankalar ON bankalar.bankaid = havalebildirim.banka
              WHERE havalebayi LIKE :b
            ORDER BY havalebildirim.id DESC");
            $query->execute([':b'=>'%'.$q.'%']);

            $total = $query->rowCount();
            $lim   = 50;
            $show  = $s * $lim - $lim;

            $query = $db->prepare("SELECT *,havalebildirim.id FROM havalebildirim 
               INNER JOIN bayiler ON bayiler.bayikodu = havalebildirim.havalebayi
              INNER JOIN bankalar ON bankalar.bankaid = havalebildirim.banka
              WHERE havalebayi LIKE :b
            ORDER BY havalebildirim.id DESC LIMIT :show,:lim");
            $query->bindValue(':show',(int) $show,PDO::PARAM_INT);
            $query->bindValue(':lim',(int) $lim,PDO::PARAM_INT);
            $query->bindValue(':b','%'.$q.'%',PDO::PARAM_STR);
            $query->execute();

            if($s > ceil($total / $lim)){
              $s = 1;
            }

            if($query->rowCount()){
          ?>


          <div class="tile">
            <h3 class="tile-title">Havale Bildirim Arama Sonuçları (<?php echo $total;?>)</h3>
            <div class="table-responsive">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>#ID</th>
                    <th>Bayi Adı</th>
                    <th>Tarih</th>
                    <th>Tutar</th>
                    <th>Açıklama</th>
                    <th>Banka</th>
                    <th>İşlem</th>
                  </tr>
                </thead>
                <tbody>

                  <?php foreach($query as $row){ ?>
                    
                    <tr> 
                    <td><?php echo $row['id'];?></td>
                    <td><?php echo $row['bayiadi'];?></td>
                    <td><?php echo dt($row['havaletarih'])."|".$row['havalesaat'];?></td>
                    <td><?php echo $row['havaletutar']."₺";?></td>
                    <td><?php echo $row['havalenot'];?></td>
                    <td><?php echo $row['bankaadi'];?></td>
                 
                    <td>
                      <a href="<?php b2b('notificationdetail',$row['id']);?>"><i class="fa fa-eye"></i></a> | 
                      <a onclick="return confirm('Onaylıyor musunuz?');" title="Sepetten sil" href="<?php b2b('notificationdelete',$row['id']);?>"><i class="fa fa-close"></i></a>
                    </td>
                  </tr>

                  <?php } ?>

                </tbody>
              </table>
            </div>
          </div>

          <?php }else{

            alert("Havale bildirim bulunmuyor","danger");

           } ?>


          <div>
            <ul class="pagination">
              <?php 
                if($total > $lim){
                  pagination($s, ceil($total/$lim),'notificationsearch.php?q='.$q.'&s=');
                }
              ?>	
            </ul>
          </div>

        </div>

      


      </div>
    </main>
    <?php require_once 'inc/footer.php';?>