<?php require_once 'systemadmin/function.php'; ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Fav icon -->
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo site;?>/uploads/min.logo.png">
    <title>ADMİN PANELİ</title>
  </head>
  <body>
    <section class="material-half-bg">
      <div class="cover"></div>
    </section>
    <section class="login-content">
      <div class="logo">
        <h1>ARTEK ADMİN PANELİ</h1>
      </div>
      <?php 
          if(isset($_POST['adminlogin'])){

            $email  = post('email');
            $pass   = post('pass');
            $crypto = sha1(md5($pass));

            if(!$email || !$pass){
              alert("Lütfen boş alan bırakmayınız","danger");
            }else{

              if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
                alert("E-posta formatı hatalı","danger");
              }else{

                $alogin = $db->prepare("SELECT * FROM admin WHERE admin_posta=:p AND admin_sifre=:s");
                
                $alogin->execute([':p' => $email,':s'=>$crypto]);
                if($alogin->rowCount()){

                  $adminrow = $alogin->fetch(PDO::FETCH_OBJ);
                  if($adminrow->admin_durum == 1){

                    $_SESSION['adminlogin'] = sha1(md5(IP().$adminrow->admin_id));
                    $_SESSION['adminid']    = $adminrow->admin_id;
                    alert("Yönetici girişi başarılı","success");


                    $logadd = $db->prepare("INSERT INTO adminlog SET
                      alogadmin =:ad,
                      alogaciklama =:ac 
                    ");
                    $logadd->execute([':ad' => $adminrow->admin_id,':ac'=>'Yönetici girişi yapıldı']);
                    go(admin,2);

                  }else{
                    alert("Yöneticiliğiniz pasife alınmıştır","danger");
                  }

                }else{
                  alert("Böyle bir yönetici bulunmuyor","danger");
                }

              }

            }

          }
        ?>
      <div class="login-box">
        <form class="login-form" action="" method="POST">
          <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>YÖNETİCİ GİRİŞİ</h3>
          <div class="form-group">
            <label class="control-label">E-posta</label>
            <input name="email" class="form-control" type="text" placeholder="E-posta adresi" autofocus>
          </div>
          <div class="form-group">
            <label class="control-label">Şifre</label>
            <input name="pass" class="form-control" type="password" placeholder="Şifreniz">
          </div>
       
          <div class="form-group btn-container">
            <button type="submit" name="adminlogin" class="btn btn-primary btn-block"><i class="fa fa-sign-in fa-lg fa-fw"></i>GİRİŞ YAP</button>
          </div>
        </form>
       
      </div>
    </section>
 
  </body>
</html>