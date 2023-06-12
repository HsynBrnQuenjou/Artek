<?php require_once 'inc/header.php';?>

<!-- Sidebar menu -->
<?php require_once 'inc/sidebar.php';?>
<main class="app-content">
  <div class="app-title">
    <div>
      <h1><i class="fa fa-th-list"></i> Yorum Arama Sonuçları</h1>
    </div>
    <ul class="app-breadcrumb breadcrumb">
      <li class="breadcrumb-item"><a href="<?php echo admin;?>"><i class="fa fa-home fa-lg"></i></a></li>
      <li class="breadcrumb-item active"><a href="#">Yorum Arama Sonuçları</a></li>
    </ul>
  </div>
  <div class="row">
    <form action="<?php echo admin."/commentsearch.php";?>" method="GET" class="col-md-12">
      <div class="form-group">
        <textarea name="q" class="form-control" placeholder="Yorum içeriği giriniz ve entera tıklayınız"></textarea>
      </div>
    </form>
    <div class="col-md-12">
      <?php
      $q = @get('q');
      if (!$q) {
        go(admin."/comments.php");
      }

      $query = $db->prepare("SELECT *, urun_yorumlar.id FROM urun_yorumlar 
        INNER JOIN urunler ON urunler.urunkodu = urun_yorumlar.yorumurun
        WHERE yorumisim LIKE :b OR yorumurun LIKE :u OR yorumicerik LIKE :c
        ORDER BY urun_yorumlar.id DESC");
      $query->execute([
        ':b' => '%'.$q.'%',
        ':u' => '%'.$q.'%',
        ':c' => '%'.$q.'%'
      ]);

      $total = $query->rowCount();

      if ($total > 0) {
        echo '<div class="tile">';
        echo '<h3 class="tile-title">Yorum Arama Sonuçları ('.$total.')</h3>';
        echo '<div class="table-responsive">';
        echo '<table class="table table-hover">';
        echo '<thead>';
        echo '<tr>';
        echo '<th>#ID</th>';
        echo '<th>Ürün</th>';
        echo '<th>Bayi</th>';
        echo '<th>Tarih</th>';
        echo '<th>İp</th>';
        echo '<th>Durum</th>';
        echo '<th>İşlem</th>';
        echo '</tr>';
        echo '</thead>';
        echo '<tbody>';

        foreach ($query as $row) {
          echo '<tr>';
          echo '<td>'.$row['id'].'</td>';
          echo '<td>'.$row['urunbaslik'].'</td>';
          echo '<td>'.$row['yorumisim'].'</td>';
          echo '<td>'.dt($row['yorumtarih']).'</td>';
          echo '<td>'.$row['yorumip'].'</td>';
          echo '<td>'.($row['yorumdurum'] == 1 ? '<span class="badge badge-success">Onaylı</span>' : '<span class="badge badge-danger">Onay Bekliyor</span>').'</td>';
          echo '<td>';
          echo '<a href="'.b2b('commentread', $row['id']).'"><i class="fa fa-eye"></i></a> | ';
          echo '<a onclick="return confirm(\'Onaylıyor musunuz?\');" title="Sepetten sil" href="'.b2b('commentdelete', $row['id']).'"><i class="fa fa-close"></i></a>';
          echo '</td>';
          echo '</tr>';
        }

        echo '</tbody>';
        echo '</table>';
        echo '</div>';
        echo '</div>';
      } else {
        echo '<div class="alert alert-danger">Yorum bulunmuyor</div>';
      }
      ?>
    </div>
  </div>
</main>
<?php require_once 'inc/footer.php';?>
