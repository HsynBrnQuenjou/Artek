<?php require_once 'inc/header.php';?>
    <!-- Sidebar menu-->
    <?php require_once 'inc/sidebar.php';?>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> Bayi Listesi</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo admin;?>"><i class="fa fa-home fa-lg"></i></a></li>
          <li class="breadcrumb-item active"><a href="#">Bayi Listesi</a></li>
        </ul>
      </div>
      <div class="row">

        <form action="<?php echo admin."/customersearch.php";?>" method="GET" class="col-md-12">
          <div class="form-group">
            <input type="text" name="q" class="form-control" placeholder="Bayi adı ya da bayi kodu giriniz ve entera tıklayınız" />
          </div>
        </form>

        <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="GET" class="col-md-2">
          <div class="form-group">
            <input type="text" name="blim" class="form-control" placeholder="Listeleme sayısı" />
          </div>
        </form>
      
        <div class="col-md-12">

          <?php   
            $s     = @intval($_GET['s']);
            if(!$s){
              $s   = 1;
            }

            $blim   = @intval($_GET['blim']);
            if(!$blim){
              $blim = 50;
            }

            $query = $db->prepare("SELECT * FROM bayiler ORDER BY id DESC");
            $query->execute();

            $total = $query->rowCount();
            $lim   = 10; // Sayfa başına gösterilecek öğe sayısı
            $show  = $s * $lim - $lim;

            $query = $db->prepare("SELECT * FROM bayiler ORDER BY id DESC LIMIT :show,:lim");
            $query->bindValue(':show',(int) $show,PDO::PARAM_INT);
            $query->bindValue(':lim',(int) $lim,PDO::PARAM_INT);
            $query->execute();

            if($s > ceil($total / $lim)){
              $s = 1;
            }

            if($query->rowCount()){
          ?>


          <div class="tile">
            <h3 class="tile-title">Bayi Listesi (<?php echo $total;?>)</h3>
            <div class="table-responsive">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>#Kodu</th>
                    <th>Adı</th>
                    <th>Mail</th>
                    <th>Tlf</th>
                    <th>İndirim</th>
                    <th>Durum</th>
                    <th>İşlem</th>
                  </tr>
                </thead>
                <tbody>

                  <?php foreach($query as $row){ ?>
                    
                    <tr> 
                    <td><?php echo $row['bayikodu'];?></td>
                    <td><?php echo $row['bayiadi'];?></td>
                    <td><?php echo $row['bayimail'];?></td>
                    <td><?php echo $row['bayitelefon'];?></td>
                    <td><?php echo "%".$row['bayiindirim'];?></td>
                    <td><?php echo $row['bayidurum'] == 1 ? '<span class="badge badge-success ">Aktif</span>' : '<span class="badge badge-danger">Pasif</span>';?></td>
                 
                    <td>
                      <a title="Düzenle" href="<?php b2b('customeredit',$row['bayikodu']); ?>"><i class="fa fa-edit"></i></a> | 
                      <a title="Logo" href="<?php b2b('customerlogo',$row['bayikodu']); ?>"><i class="fa fa-photo"></i></a> |
                      <a title="Log" href="<?php b2b('customerlog',$row['bayikodu']); ?>"><i class="fa fa-list"></i></a> | 
                      <a title="Adresler"href="<?php b2b('customeraddress',$row['bayikodu']); ?>"><i class="fa fa-map"></i></a> |
                      <a onclick="return confirm('Onaylıyor musunuz?');" title="Bayi sil" href="<?php b2b('customerdelete',$row['bayikodu']);?>"><i class="fa fa-close"></i></a>
                    </td>
                  </tr>

                  <?php } ?>

                </tbody>
              </table>
            </div>
          </div>

          <?php }else{

            alert("Bayi bulunmuyor","danger");

           } ?>


          <div>
            <ul class="pagination">
              <?php 
                if($total > $lim){
                  if($blim){
                    pagination($s, ceil($total/$lim),'customers.php?blim='.$blim.'&s=');
                  }else{
                    pagination($s, ceil($total/$lim),'customers.php?s=');
                  }
                }
              ?>	
            </ul>
          </div>

        </div>

      


      </div>
    </main>
    <?php require_once 'inc/footer.php';?>
