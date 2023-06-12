<?php require_once 'inc/header.php'; ?>
<?php require_once 'inc/sidebar.php';?>

<main class="app-content">
<div class="app-title">
<div>
<h1><i class="fa fa-edit"></i> <?php echo @get('process');?></h1>


</div>
<ul class="app-breadcrumb breadcrumb">
<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
<li class="breadcrumb-item">İşlemler</li>
<li class="breadcrumb-item"><a href="#"><?php echo @get('process');?></a></li>
</ul>
</div>
<div class="row">

<div class="col-md-12">


<?php 

$process = @get('process');
if(!$process){
go(admin);
}

switch($process){

    case 'profile':
        if(isset($_POST['upp'])){
            
            $kadi  = post('kadi');
            $email = post('email');

            if(!$kadi || !$email){
                alert("Boş alan bırakmayınız","danger");
            }else{
                $up = $db->prepare("UPDATE admin SET
                    admin_kadi =:k, admin_posta =:p WHERE admin_id=:id
                ");
                $up->execute([':k'=>$kadi,':p'=>$email,':id'=>$aid]);
                if($up){
                    alert("Profiliniz güncellendi","success");
                    go($_SERVER['HTTP_REFERER'],2);
                }else{
                    alert("Hata oluştu","danger");
                }
            }

            
        }
        ?>
        <div class="tile">
<h3 class="tile-title">Profili Güncelle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Kullanıcı adı</label>
<input class="form-control"  value="<?php echo $aname;?>" name="kadi" type="text" placeholder="kadi">
</div>

<div class="form-group">
<label class="control-label">E-postanız</label>
<input class="form-control"  value="<?php echo $amail;?>" name="email" type="text" placeholder="email">
</div>



</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Ana Sayfaya Dön</a>
</div>

</form>


</div>
        <?php 
    break;


    case 'password':
        if(isset($_POST['upp'])){
            
            $pass   = post('pass');
            $crypto = sha1(md5($pass));

            if(!$pass){
                alert("Boş alan bırakmayınız","danger");
            }else{
                $up = $db->prepare("UPDATE admin SET
                    admin_sifre =:s WHERE admin_id=:id
                ");
                $up->execute([':s'=>$crypto,':id'=>$aid]);
                if($up){
                    alert("Şifreniz güncellendi","success");
                    go($_SERVER['HTTP_REFERER'],2);
                }else{
                    alert("Hata oluştu","danger");
                }
            }

            
        }
        ?>
        <div class="tile">
<h3 class="tile-title">Şifre Güncelle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Yeni şifreniz</label>
<input class="form-control"   name="pass" type="text" placeholder="Yeni şifreniz">
</div>


</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Ana Sayfaya Dön</a>
</div>

</form>


</div>
        <?php 
    break;

    case 'logout':
        session_destroy();
        go(admin."/adminlogin.php");
    break;

    case 'contact':

        if(isset($_POST['upp'])){

            $tel      = post('tel');
            $fax      = post('fax');
            $email    = post('email');
            $address  = post('address');
            $map      = $_POST['map'];

            if(!$tel || !$fax || !$email || !$address || !$map){
                alert("Boş alan bırakmayınız","danger");
            }else{
                $up = $db->prepare("UPDATE ayarlar SET
                    tel =:t,
                    fax =:f,
                    eposta =:e,
                    adres =:a,
                    map =:m WHERE id=:id
                ");
                $result = $up->execute([
                    ':t' => $tel,
                    ':f' => $fax,
                    ':e' => $email,
                    ':a' => $address,
                    ':m' => $map,
                    ':id'=> 1
                ]);
                if($result){
                    alert("İletişim ayarları güncellendi","success");
                    go($_SERVER['HTTP_REFERER'],2);
                }else{
                    alert("Hata oluştu","danger");
                }
            }

        }

        ?>
<div class="tile">
<h3 class="tile-title">İletişim Ayarlarını Güncelle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">tel</label>
<input class="form-control"  value="<?php echo $arow->tel;?>" name="tel" type="text" placeholder="tel">
</div>

<div class="form-group">
<label class="control-label">fax</label>
<input class="form-control"  value="<?php echo $arow->fax;?>" name="fax" type="text" placeholder="fax">
</div>

<div class="form-group">
<label class="control-label">eposta</label>
<input class="form-control"  value="<?php echo $arow->eposta;?>" name="email" type="text" placeholder="eposta">
</div>

<div class="form-group">
<label class="control-label">adres</label>
<input class="form-control"  value="<?php echo $arow->adres;?>" name="address" type="text" placeholder="adres">
</div>

<div class="form-group">
<label class="control-label">harita</label>
<textarea name="map" class="form-control" rows="8" placeholder="harita"><?php echo $arow->map;?></textarea>
</div>



</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Ana Sayfaya Dön</a>
</div>

</form>


</div>
        <?php 
    break;

    case 'smtp':

        if(isset($_POST['upp'])){

            $smtphost  = post('smtphost');
            $smtpmail  = post('smtpmail');
            $smtpsifre = post('smtpsifre');
            $smtpsec   = post('smtpsec');
            $smtpport  = post('smtpport');
            $smtpkime  = post('smtpkime');

            if(!$smtphost || !$smtpmail || !$smtpsifre || !$smtpsec || !$smtpport || !$smtpkime){
                alert("Boş alan bırakmayınız","danger");
            }else{
                $up = $db->prepare("UPDATE ayarlar SET
                    smtphost =:h,
                    smtpmail =:m,
                    smtpsifre=:s,
                    smtpsec  =:se,
                    smtpport =:p,
                    smtpkime =:k WHERE id=:id
                ");
                $result = $up->execute([
                    ':h'  => $smtphost,
                    ':m'  => $smtpmail,
                    ':s'  => $smtpsifre,
                    ':se' => $smtpsec,
                    ':p'  => $smtpport,
                    ':k'  => $smtpkime,
                    ':id' => 1
                ]);
                if($result){
                    alert("SMTP ayarları güncellendi","success");
                    go($_SERVER['HTTP_REFERER'],2);
                }else{
                    alert("Hata oluştu","danger");
                }
            }

        }
        ?>
        
<div class="tile">
<h3 class="tile-title">SMTP Ayarları Güncelle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">SMTP Host</label>
<input class="form-control"  value="<?php echo $arow->smtphost;?>" name="smtphost" type="text" placeholder="SMTP Host">
</div>

<div class="form-group">
<label class="control-label">SMTP Mail</label>
<input class="form-control"  value="<?php echo $arow->smtpmail;?>" name="smtpmail" type="text" placeholder="SMTP Mail">
</div>

<div class="form-group">
<label class="control-label">SMTP Şifre</label>
<input class="form-control"  value="<?php echo $arow->smtpsifre;?>" name="smtpsifre" type="text" placeholder="SMTP şifre">
</div>


<div class="form-group">
<label class="control-label">SMTP Security ( tls - ssl )</label>
<input class="form-control"  value="<?php echo $arow->smtpsec;?>" name="smtpsec" type="text" placeholder="SMTP security">
</div>

<div class="form-group">
<label class="control-label">SMTP Port</label>
<input class="form-control"  value="<?php echo $arow->smtpport;?>" name="smtpport" type="text" placeholder="SMTP Port">
</div>

<div class="form-group">
<label class="control-label">SMTP Mailler Kime Gidecek</label>
<input class="form-control"  value="<?php echo $arow->smtpkime;?>" name="smtpkime" type="text" placeholder="SMTP Mailler Kime Gidecek">
</div>


</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Ana Sayfaya Dön</a>
</div>

</form>


</div>
        <?php 
    break;

    case 'logo':

        if(isset($_POST['upp'])){
            require_once 'inc/class.upload.php';
            $image = new upload($_FILES['cimage']);
            if($image->uploaded){

                $rname = sef_link($arow->sitebaslik)."-".uniqid();
                $image->allowed = array("image/*");
                $image->image_convert = 'png';
                $image->file_new_name_body = $rname;
                $image->file_max_size      = 200 * 1024; //max 1 mb
                $image->process("../uploads");

                if($image->processed){

                    $up = $db->prepare("UPDATE ayarlar SET sitelogo=:l WHERE id=:id");
                    $result  = $up->execute([
                        ':l' => $rname.'.png',
                        ':id'=> 1
                    ]);
                    if($result){
                        alert("Logo güncellendi","success");
                        go($_SERVER['HTTP_REFERER'],2);
                    }else{
                        alert("Hata oluştu","danger");
                    }

                }else{
                    alert("Resim yüklenemedi","danger");
                }

            }else{
                alert("Resim seçmediniz","danger");
            }
        }
        ?>
        
<div class="tile">
<h3 class="tile-title">Logo Güncelle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">


<div class="form-group">
<label class="control-label">Site Logo</label>
<img src="<?php echo $site;?>/uploads/<?php echo $arow->sitelogo;?>" width="100" height="100" />
<input class="form-control" type="file" name="cimage">
</div>



</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

        <?php 

    break;

    case 'general':

        if(isset($_POST['upp'])){

            $title      = post('title');
            $url        = post('url');
            $sitekeyw   = post('sitekeyw');
            $sitedesc   = post('sitedesc');
            $sitekdv    = post('sitekdv');
            $orderstatus= post('orderstatus');
            $sitestatus = post('sitestatus');

            if(!$title || !$url || !$sitekdv || !$sitekeyw || !$sitedesc || !$orderstatus || !$sitestatus){
                alert("Boş alan bırakmayınız","danger");
            }else{

                $up = $db->prepare("UPDATE ayarlar SET
                    sitebaslik  =:b,
                    siteurl     =:u,
                    sitekeyw    =:k,
                    sitedesc    =:d,
                    sitekdv     =:kdv,
                    sitesiparisdurum  =:sip,
                    sitedurum         =:du WHERE id=:id
                ");
                $result = $up->execute([
                    ':b' => $title,
                    ':u' => $url,
                    ':k' => $sitekeyw,
                    ':d' => $sitedesc,
                    ':kdv' => $sitekdv,
                    ':sip' => $orderstatus,
                    ':du'  => $sitestatus,
                    ':id'  => 1
                ]);
                if($result){
                    alert("Genel ayarlar güncellendi","success");
                    go($_SERVER['HTTP_REFERER'],2);
                }else{
                    alert("Hata oluştu","danger");
                }

            }
            

        }
        ?>

        
<div class="tile">
<h3 class="tile-title">Genel Ayarları Güncelle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Site Başlık</label>
<input class="form-control"  value="<?php echo $arow->sitebaslik;?>" name="title" type="text" placeholder="Site Başlık">
</div>

<div class="form-group">
<label class="control-label">Site URL</label>
<input class="form-control"  value="<?php echo $arow->siteurl;?>" name="url" type="text" placeholder="Site URL">
</div>

<div class="form-group">
<label class="control-label">Site Keywords</label>
<input class="form-control"  value="<?php echo $arow->sitekeyw;?>" name="sitekeyw" type="text" placeholder="Site Keywords">
</div>

<div class="form-group">
<label class="control-label">Site SEO Açıklama</label>
<input class="form-control"  value="<?php echo $arow->sitedesc;?>" name="sitedesc" type="text" placeholder="Site SEO Açıklama">
</div>


<div class="form-group">
<label class="control-label">Site KDV</label>
<input class="form-control"  value="<?php echo $arow->sitekdv;?>" name="sitekdv" type="number" placeholder="Site KDV">
</div>

<div class="form-group">
<label class="control-label">Sipariş Durum</label>
<select name="orderstatus" class="form-control">
    <option value="1" <?php echo $arow->sitesiparisdurum == 1 ? 'selected' : null;?>>Aktif</option>
    <option value="2" <?php echo $arow->sitesiparisdurum != 1 ? 'selected' : null;?>>Pasif</option>
</select>
</div>

<div class="form-group">
<label class="control-label">Site Durum</label>
<select name="sitestatus" class="form-control">
    <option value="1" <?php echo $arow->sitedurum == 1 ? 'selected' : null;?>>Aktif</option>
    <option value="2" <?php echo $arow->sitedurum != 1 ? 'selected' : null;?>>Pasif</option>
</select>
</div>


</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Ana Sayfaya Dön</a>
</div>

</form>


</div>

        <?php 
    break;

    case 'pageedit':

        $id = get('id');
        if(!$id){
            go(admin);
        }

        $page = $db->prepare("SELECT * FROM sayfalar WHERE id=:id");
        $page->execute([':id' => $id]);
        if($page->rowCount()){

            $pagerow = $page->fetch(PDO::FETCH_OBJ);

            if(isset($_POST['upp'])){

                $name   = post('pname');
                $seourl = post('purl');
                $status = post('status');


                if(!$seourl){
                    $sef = sef_link($name);
                }else{
                    $sef = $seourl;
                }
                $pcontent   = $_POST['pcontent'];

                if(!$name  || !$pcontent || !$status){
                alert("Tüm alanları doldurunuz","danger");
                }else{

                $already = $db->prepare("SELECT id,sef FROM sayfalar WHERE sef=:k AND id !=:id");
                $already->execute([':k' => $sef,':id'=>$id]);
                if($already->rowCount()){
                    alert("Bu sayfa zaten kayıtlı","danger");
                }else{

                require_once 'inc/class.upload.php';
                $image = new upload($_FILES['pimage']);
                if($image->uploaded){

                    $rname = $sef."-".uniqid();
                    $image->allowed = array("image/*");
                    $image->image_convert = 'webp';
                    $image->file_new_name_body = $rname;
                    $image->file_max_size      = 1024 * 1024; //max 1 mb
                    $image->process("../uploads");

                    if($image->processed){

                        $upp  = $db->prepare("UPDATE sayfalar SET
                            baslik =:k,
                            sef    =:s,
                            icerik =:ke,
                            kapak  =:de,
                            durum  =:d WHERE id=:id
                        ");

                        $result = $upp->execute([
                            ':k' => $name,
                            ':s' => $sef,
                            ':ke'=> $pcontent,
                            ':de'=> $rname.'.webp',
                            ':d' => $status,
                            ':id'=> $id
                        ]);

                        @unlink("../uploads/".$pagerow->kapak);

                    }else{
                        alert("Resim yüklenemedi","danger");
                        print_r($image->error);
                    }

                    }else{

                        $upp  = $db->prepare("UPDATE sayfalar SET
                            baslik =:k,
                            sef    =:s,
                            icerik =:ke,
                            durum  =:d WHERE id=:id
                        ");

                        $result = $upp->execute([
                            ':k' => $name,
                            ':s' => $sef,
                            ':ke'=> $pcontent,
                            ':d' => $status,
                            ':id'=> $id
                        ]);
                
                    }


                    if($result){

                        alert("Sayfa güncellendi","success");
                        go($_SERVER['HTTP_REFERER'],2);

                    }else{
                        alert("Hata oluştu","danger");
                        print_r($add->errorInfo());
                    }


                }

                }

            }
            ?>

            
<div class="tile">
<h3 class="tile-title"><?php echo $pagerow->baslik;?> Adlı Sayfayı Düzenle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Sayfa Adı</label>
<input class="form-control" value="<?php echo $pagerow->baslik;?>" name="pname" type="text" placeholder="Sayfa Adı">
</div>

<div class="form-group">
<label class="control-label">Sayfa SEO URL (örn: misyon-vizyon)</label>
<input class="form-control" value="<?php echo $pagerow->sef;?>" name="purl" type="text" placeholder="Sayfa SEO URL">
</div>

<div class="form-group">
<label class="control-label">Sayfa Kapak Resim</label>
<img src="<?php echo $site."/uploads/".$pagerow->kapak;?>" width="100" height="100" /> 
<span style="color:#b10021">Değiştirmek istemiyorsanız resim seçmeyiniz...</span>
<input class="form-control" type="file" name="pimage">
</div>

<div class="form-group">
<label class="control-label">Sayfa İçerik</label>
<textarea class="ckeditor" name="pcontent"><?php echo $pagerow->icerik;?></textarea>
</div>


<div class="form-group">
<label class="control-label">Durum</label>
<select name="status" class="form-control">
    <option value="1" <?php echo $pagerow->durum == 1 ? 'selected' : null;?>>Aktif</option>
    <option value="2" <?php echo $pagerow->durum != 1 ? 'selected' : null;?>>Pasif</option>
</select>
</div>


</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/pages.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

            <?php 

        }else{
            go(admin);
        }

    break;

    case 'messageread':
        $id = get('id');
        if(!$id){
            go(admin);
        }

        $message = $db->prepare("SELECT * FROM mesajlar WHERE id=:id");
        $message->execute([':id' => $id]);
        if($message->rowCount()){
            
            $messagerow = $message->fetch(PDO::FETCH_OBJ);

            $up = $db->prepare("UPDATE mesajlar SET mesajdurum=:d WHERE id=:id");
            $up->execute([':d'=>1,':id'=>$id]);
            ?>

            <div class="tile">
            <h3 class="tile-title"><?php echo $messagerow->mesajisim;?> adlı kişinin mesajı</h3>

            <div class="tile-body">

            <p><b>İsim: </b><?php echo $messagerow->mesajisim;?></p>
            <p><b>E-posta: </b><a href="mailto:<?php echo $messagerow->mesajposta;?>" target="_blank"><?php echo $messagerow->mesajposta;?></a></p>
            <p><b>Konu: </b><?php echo $messagerow->mesajkonu;?></p>
            <p><b>Tarih: </b><?php echo dt($messagerow->mesajtarih);?></p>
            <p><b>IP: </b><?php echo $messagerow->mesajip;?></p>
            <p><b>İçerik: </b><?php echo $messagerow->mesajicerik;?></p>

            <hr />
            <?php 
                if(isset($_POST['reply'])){
                    $content = post('content');
                    $email   = post('email');

                    if(!$content || !$email){
                        alert("Boş alan bırakmayınız","danger");
                    }else{

                        require_once 'inc/class.phpmailer.php';
                        require_once 'inc/class.smtp.php';
                        $mail = new PHPMailer();
                        $mail->Host       = $arow->smtphost;
                        $mail->Port       = $arow->smtpport;
                        $mail->SMTPSecure = $arow->smtpsec;
                        $mail->Username   = $arow->smtpmail;
                        $mail->Password   = $arow->smtpsifre;
                        $mail->SMTPAuth   = true;
                        $mail->IsSMTP();
                        $mail->AddAddress($email);

                        $mail->From       = $arow->smtpmail;
                        $mail->FromName   = $messagerow->mesajkonu;
                        $mail->CharSet    = 'UTF-8';
                        $mail->Subject    = $messagerow->mesajkonu." - Adlı mesajınıza yanıt verildi";
                        $mailcontent      = "
                        <p>".$content."</p>
                        
                        ";

                        $mail->MsgHTML($mailcontent);
                        if($mail->Send()){
                            alert("Yanıtınız başarıyla gönderildi","success");
                            go($_SERVER['HTTP_REFERER'],2);
                        }else{
                            alert("Hata oluştu","danger");
                        }


                    }
                }
            ?>
            <form action="" method="POST">
                <textarea class="form-control" name="content" rows="7" placeholder="Mesaj yanıtınız"></textarea>
                <input type="hidden" value="<?php echo $messagerow->mesajposta;?>" name="email" />
                <button type="submit" name="reply" class="btn btn-success">Mesajı Yanıtla</button>
            </form>



            </div>
            <div class="tile-footer">



            <a class="btn btn-secondary" href="<?php echo @$_SERVER['HTTP_REFERER'];?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
            </div>


            </div>

            <?php 

        }else{
            go(admin);
        }
    break;

    case 'bankedit':

        $id = get('id');
        if(!$id){
            go(admin);
        }

        $bank = $db->prepare("SELECT * FROM bankalar WHERE bankaid=:id");
        $bank->execute([':id' => $id]);
        if($bank->rowCount()){

            $bankrow = $bank->fetch(PDO::FETCH_OBJ);

            if(isset($_POST['upp'])){

                $name   = post('name');
                $hno    = post('hno');
                $sname  = post('sname');
                $iban   = post('iban');
                $status = post('status');

                if(!$iban || !$name || !$hno || !$sname || !$status){

                alert("Boş alan bırakmayınız","danger");

                }else{

                    $already = $db->prepare("SELECT bankaid,bankaiban FROM bankalar WHERE bankaiban=:k AND bankaid !=:id");
                    $already->execute([':k' => $iban,':id' => $id]);
                    if($already->rowCount()){
                        alert("Bu banka hesabı zaten kayıtlı","danger");
                    }else{

                        $upp = $db->prepare("UPDATE bankalar SET
                            bankaadi     =:b,
                            bankahesap   =:k,
                            bankasube    =:s,
                            bankaiban    =:i,
                            bankadurum   =:d WHERE bankaid=:id
                        ");

                        $result = $upp->execute([
                            ':b' => $name,
                            ':k' => $hno,
                            ':s' => $sname,
                            ':i' => $iban,
                            ':d' => $status,
                            ':id'=> $id
                        ]);

                        if($result){
                            alert("Banka hesabı güncellendi","success");
                            go($_SERVER['HTTP_REFERER'],2);
                        }else{
                            alert("Hata oluştu","danger");
                        
                        }

                    }

                }

            }
            ?>

            
<div class="tile">
<h3 class="tile-title"><?php echo $bankrow->bankaadi;?> Adlı Bankayı Güncelle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Banka Adı</label>
<input value="<?php echo $bankrow->bankaadi;?>" class="form-control" name="name" type="text" placeholder="Banka adı">
</div>

<div class="form-group">
<label class="control-label">Hesap No</label>
<input value="<?php echo $bankrow->bankahesap;?>"  class="form-control" name="hno" type="text" placeholder="Hesap No">
</div>

<div class="form-group">
<label class="control-label">Şube Adı/No</label>
<input value="<?php echo $bankrow->bankasube;?>"  class="form-control" name="sname" type="text" placeholder="Şube Adı ya da şube no">
</div>

<div class="form-group">
<label class="control-label">IBAN</label>
<input value="<?php echo $bankrow->bankaiban;?>"  class="form-control" name="iban" type="text" placeholder="IBAN">
</div>


<div class="form-group">
<label class="control-label">Durum</label>
<select name="status" class="form-control">
    <option value="1" <?php echo $bankrow->bankadurum == 1 ? 'selected' : null;?>>Aktif</option>
    <option value="2" <?php echo $bankrow->bankadurum != 1 ? 'selected' : null;?>>Pasif</option>
</select>
</div>

</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/banklist.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

            <?php 

        }else{
            go(admin);
        }

    break;

    case 'statusedit':
        $id = get('id');
        if(!$id){
            go(admin);
        }

        $status = $db->prepare("SELECT * FROM durumkodlari WHERE id=:id");
        $status->execute([':id' => $id]);
        if($status->rowCount()){

            $statusrow = $status->fetch(PDO::FETCH_OBJ);

            if(isset($_POST['up'])){

                $name  = post('name');
                $code  = post('code');
                $stat  = post('stat');

                if(!$name || !$code || !$stat){
                    alert('Lütfen boş alan bırakmayınız','danger');
                }else{

                    $already = $db->prepare("SELECT id,durumkodu FROM durumkodlari WHERE durumkodu=:k AND id !=:id");
                    $already->execute([':k'=>$code,':id'=>$id]);
                    if($already->rowCount()){

                        alert("Böyle bir durum zaten kayıtlı","danger");
                    
                    }else{

                        $up = $db->prepare("UPDATE durumkodlari SET
                            durumbaslik =:b,
                            durumkodu   =:k,
                            durumdurum  =:d WHERE id=:id 
                        ");
                        $result  = $up->execute([
                            ':b' => $name,
                            ':k' => $code,
                            ':d' => $stat,
                            ':id'=> $id
                        ]);
                        if($result){
                            alert("Durum başarıyla güncellendi","success");
                            go($_SERVER['HTTP_REFERER'],2);
                        }else{
                            alert("Hata oluştu","danger");
                        }

                    }
                    
                }

            }
            ?>
            
<div class="tile">
<h3 class="tile-title"><?php echo $statusrow->durumbaslik;?> Adlı Durumu Düzenle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Durum Başlık</label>
<input value="<?php echo $statusrow->durumbaslik;?>" class="form-control" name="name" type="text" placeholder="Durum Başlık">
</div>

<div class="form-group">
<label class="control-label">Durum Kodu</label>
<input value="<?php echo $statusrow->durumkodu;?>"  class="form-control" name="code" type="text" placeholder="Durum Kodu">
</div>


<div class="form-group">
<label class="control-label">Durum ( Aktif/Pasif )</label>
<select name="stat" class="form-control">

    <option value="1" <?php echo $statusrow->durumdurum == 1 ? 'selected' : null;?>>Aktif</option>
    <option value="2" <?php echo $statusrow->durumdurum != 1 ? 'selected' : null;?>>Pasif</option>

</select>
</div>


</div>
<div class="tile-footer">
<button class="btn btn-primary" name="up" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/statuslist.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>
            <?php 

        }else{
            go(admin);
        }
    break;

    case 'commentread':
        $id = get('id');
        if(!$id){
            go(admin);
        }

        $comments = $db->prepare("SELECT * FROM urun_yorumlar 
            INNER JOIN urunler ON urunler.urunkodu = urun_yorumlar.yorumurun
        WHERE urun_yorumlar.id=:id");
        $comments->execute([':id' => $id]);
        if($comments->rowCount()){

            $commentrow = $comments->fetch(PDO::FETCH_OBJ);
            ?>

              
<div class="tile">
<h3 class="tile-title"><?php echo $commentrow->urunbaslik;?> adlı ürüne yapılan yorum</h3>

<div class="tile-body">

<p><b>Ürün Kodu: </b><?php echo $commentrow->yorumurun;?></p>
<p><b>Ürün Adı: </b><a href="<?php echo $site."/product/".$commentrow->urunsef; ?>" target="_blank"><?php echo $commentrow->urunbaslik;?></a></p>
<p><b>Bayi Adı: </b><?php echo $commentrow->yorumisim;?></p>
<p><b>Tarih: </b><?php echo dt($commentrow->yorumtarih);?></p>
<p><b>IP: </b><?php echo $commentrow->yorumip;?></p>
<p><b>Yorum: </b><?php echo $commentrow->yorumicerik;?></p>





</div>
<div class="tile-footer">

<?php if($commentrow->yorumdurum == 1){ ?>

    <a  onclick="return confirm('onaylıyor musunuz?');"  class="btn btn-danger" href="<?php b2b('commentpassive',$id); ?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Onayı kaldır</a>


<?php }else{ ?>

    <a onclick="return confirm('onaylıyor musunuz?');" class="btn btn-success" href="<?php b2b('commentactive',$id); ?>"><i class="fa fa-fw fa-lg fa fa-check"></i>Onayla</a>

<?php } ?>

<a  onclick="return confirm('onaylıyor musunuz?');"  class="btn btn-warning" href="<?php b2b('commentdelete',$id);?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Yorumu sil</a>

<a class="btn btn-secondary" href="<?php echo admin;?>/comments.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>


</div>

            <?php 

        }else{
            go(admin);
        }
    break;

    case 'notificationdetail':

        $id = get('id');
        if(!$id){
            go(admin);
        }

        $notification = $db->prepare("SELECT * FROM havalebildirim WHERE id=:k");
        $notification->execute([':k' => $id]);
        if($notification->rowCount()){
            $notificationrow = $notification->fetch(PDO::FETCH_OBJ);

              #bayi bul 
              $bquery   = $db->prepare("SELECT bayikodu,bayiadi,bayimail FROM bayiler WHERE bayikodu=:k");
              $bquery->execute([':k' => $notificationrow->havalebayi]);
              $bqueryrow = $bquery->fetch(PDO::FETCH_OBJ);
              #bayi bul sonu


               #banka bul 
               $bankquery   = $db->prepare("SELECT bankaid,bankaadi FROM bankalar WHERE bankaid=:k");
               $bankquery->execute([':k' => $notificationrow->banka]);
               $bankqueryrow = $bankquery->fetch(PDO::FETCH_OBJ);
               #banka bul sonu
            
            ?>

            
<div class="tile">
<h3 class="tile-title"><?php echo $notificationrow->havalebayi;?> Nolu bayiye ait havale bildirimi</h3>

<div class="tile-body">

<p><b>Bayi Kodu: </b><?php echo $notificationrow->havalebayi;?></p>
<p><b>Bayi Adı: </b><?php echo $bqueryrow->bayiadi;?></p>
<p><b>Havale Tarih: </b><?php echo date('d.m.Y',strtotime($notificationrow->havaletarih));?></p>
<p><b>Havale Saat: </b><?php echo $notificationrow->havalesaat;?></p>
<p><b>Havale Tutarı: </b><?php echo $notificationrow->havaletutar." ₺";?></p>
<p><b>Havale Banka: </b><?php echo $bankqueryrow->bankaadi;?></p>
<p><b>Havale IP: </b><?php echo $notificationrow->havaleip;?></p>
<p><b>Havale Notu: </b> <?php echo $notificationrow->havalenot == "" ? "Belirtilmemiş" : $notificationrow->havalenot;?></p>

<hr />
<?php 

if($_POST){

    $title   = post('title');
    $content = post('content');
    $email   = post('email');

    if(!$title || !$content || !$email){
        alert("Boş alan bırakmayınız","danger");
    }else{

        if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
            alert("Geçersiz e-posta","danger");
        }else{

            require_once 'inc/class.phpmailer.php';
            require_once 'inc/class.smtp.php';

            $mail = new PHPMailer();
            $mail->Host       = $arow->smtphost;
            $mail->Port       = $arow->smtpport;
            $mail->SMTPSecure = $arow->smtpsec;
            $mail->Username   = $arow->smtpmail;
            $mail->Password   = $arow->smtpsifre;
            $mail->SMTPAuth   = true;
            $mail->IsSMTP();
            $mail->AddAddress($email);

            $mail->From       = $arow->smtpmail;
            $mail->FromName   = $title;
            $mail->CharSet    = 'UTF-8';
            $mail->Subject    = $title;
            $mailcontent      = "
            <p>".$content."</p>
            
            ";

            $mail->MsgHTML($mailcontent);
            if($mail->Send()){
                alert("Mail başarıyla gönderildi","success");
                go($_SERVER['HTTP_REFERER'],2);
            }else{
                alert("Hata oluştu","danger");
            }

        }

    }

}

?>
<form action="" method="POST">
    <input type="text" name="title" class="form-control"placeholder="Mail başlığı" />
    <textarea name="content" class="form-control" rows="6" placeholder="Mail İçeriği"></textarea>
    <input type="hidden" value="<?php echo $bqueryrow->bayimail;?>" name="email" />
    <button type="submit" class="btn btn-primary">Mail Gönder</button>
</form>


</div>
<div class="tile-footer">
<a class="btn btn-secondary" href="<?php echo admin;?>/notification.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>


</div>

            <?php 

        }else{
            go(admin);
        }

    break;

    case 'orderdetail':
        $code = get('id');
        if(!$code){
            go(admin);
        }


        $order = $db->prepare("SELECT * FROM siparisler WHERE sipariskodu=:k");
        $order->execute([':k' => $code]);
        if($order->rowCount()){

            $orderrow = $order->fetch(PDO::FETCH_OBJ);

            ##adresbul 
            $address = $db->prepare("SELECT * FROM bayi_adresler WHERE id=:id");
            $address->execute([':id' => $orderrow->siparisadres]);
            $addressrow = $address->fetch(PDO::FETCH_OBJ);
            ##adresbul sonu
            ?>

            <div class="tile">
            <section class="invoice">
              <div class="row mb-4">
                <div class="col-6">
                  <h2 class="page-header"><i class="fa fa-globe"></i> <?php echo $arow->sitebaslik;?></h2>
                </div>
                <div class="col-6">
                  <h5 class="text-right">Sipariş Tarihi: <?php echo date('d.m.Y',strtotime($orderrow->siparistarih))." | ".$orderrow->siparissaat;?></h5>
                </div>
              </div>
              <div class="row invoice-info">
                <div class="col-4">Sipariş Bayi Bilgileri
                  <address><strong><?php echo $orderrow->siparisisim;?></strong><br>
                  <b>Adres : </b><?php echo $addressrow->adrestarif;?>
                  <br><b>Telefon: </b><?php echo $orderrow->siparistel;?></address>
                </div>
                
                <div class="col-4"><b>Sipariş No #<?php echo $code;?></b><br></div>
              </div>

              <?php 
                $orderproducts = $db->prepare("SELECT * FROM siparis_urunler WHERE sipkodu=:k");
                $orderproducts->execute([':k' => $code]);
                if($orderproducts->rowCount()){
              ?>
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th>ÜRÜN KODU</th>
                        <th>ÜRÜN ADI</th>
                        <th>BİRİM FİYAT</th>
                        <th>ADET</th>
                        <th>TOPLAM FİYAT</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                       $total = 0;
                       foreach($orderproducts as $pro){ ?>
                        <tr>
                        <td><?php echo $pro['sipurun'];?></td>
                        <td><?php echo $pro['sipurunadi'];?></td>
                        <td><?php echo $pro['sipbirim']." ₺";?></td>
                        <td><?php echo $pro['sipadet'];?></td>
                        <td><?php echo $pro['siptoplam']." ₺";?></td>
                      </tr>
                      <?php
                        $total += $pro['siptoplam'];
                        } ?>
                    </tbody>
                  </table>

                </div>
          
              </div>
              <?php } ?>

              <div align="right">
                <div class="col-3">
                    <h4>GENEL TOPLAM : <?php echo $total." ₺";?></h4>

                    <form action="<?php b2b('orderupdate');?>" method="POST">
                        <select name="orderstatus" class="form-control">
                            <option value="0" readonly>Sipariş durumu</option>
                            <?php 
                                $statuslist = $db->prepare("SELECT * FROM durumkodlari WHERE durumdurum=:d");
                                $statuslist->execute([':d' => 1]);
                                if($statuslist->rowCount()){
                                    foreach($statuslist as $stat){
                                        ?>
                                        <option <?php echo $stat['durumkodu'] == $orderrow->siparisdurum ? 'selected' : null;?> value="<?php echo $stat['durumkodu'];?>"><?php echo $stat['durumbaslik'];?></option>
                                        <?php 
                                    }
                                }
                            ?>
                        </select>

                        <select name="mail" class="form-control">
                            <option value="1">Müşteri mail ile bilgilendirilsin</option>
                            <option value="2" selected>Müşteri bilgilendirilmesin</option>
                        </select>
                        <input type="hidden" value="<?php echo $code;?>" name="code" />
                        <button type="submit" class="btn btn-primary">İşlem Yap</button>
                    </form>    
            
                </div>
              </div>
            </section>
          </div>

            <?php 

        }else{
            go(admin);
        }

    break;

  

    case 'orderupdate':
        if($_POST){

            $code  = post('code');
            $email = post('mail');
            $status= post('orderstatus');

            if(!$code || !$email || !$status){
                alert("Boş alan bırakmayınız","danger");
            }else{

                $order = $db->prepare("SELECT * FROM siparisler WHERE sipariskodu=:k");
                $order->execute([':k' => $code]);
                if($order->rowCount()){

                    $orderrow = $order->fetch(PDO::FETCH_OBJ);

                    #bayimail adresibul 
                    $bquery   = $db->prepare("SELECT bayikodu,bayimail FROM bayiler WHERE bayikodu=:k");
                    $bquery->execute([':k' => $orderrow->siparisbayi]);
                    $bqueryrow = $bquery->fetch(PDO::FETCH_OBJ);
                    #bayimail adresi bul sonu


                     #durum bul 
                     $dquery   = $db->prepare("SELECT durumkodu,durumbaslik FROM durumkodlari WHERE durumkodu=:k");
                     $dquery->execute([':k' => $status]);
                     $dqueryrow = $dquery->fetch(PDO::FETCH_OBJ);
                     #durum bul sonu

                    $up = $db->prepare("UPDATE siparisler SET siparisdurum=:d WHERE sipariskodu=:k");
                    $result = $up->execute([':d'=>$status,':k'=>$code]);
                    if($result){


                        alert("Sipariş başarıyla güncellendi","success");
                        if($email == 1){

                            require_once 'inc/class.phpmailer.php';
                            require_once 'inc/class.smtp.php';

                            $mail = new PHPMailer();
                            $mail->Host       = $arow->smtphost;
                            $mail->Port       = $arow->smtpport;
                            $mail->SMTPSecure = $arow->smtpsec;
                            $mail->Username   = $arow->smtpmail;
                            $mail->Password   = $arow->smtpsifre;
                            $mail->SMTPAuth   = true;
                            $mail->IsSMTP();
                            $mail->AddAddress($bqueryrow->bayimail);
            
                            $mail->From       = $arow->smtpmail;
                            $mail->FromName   = "Sipariş Bilgisi Değişikliği";
                            $mail->CharSet    = 'UTF-8';
                            $mail->Subject    = "Sipariş Bilgisi Değişikliği";
                            $mailcontent      = "
                            <p><b>Siparişiniz hakkında değişiklik meydana geldi siparişinizin yeni durumu:<br></b>".$dqueryrow->durumbaslik."</p>
                            
                            ";
            
                            $mail->MsgHTML($mailcontent);
                            $mail->Send();

                        }


                        go($_SERVER['HTTP_REFERER'],2);



                    }else{
                        alert("Hata oluştu","danger");
                    }

                }else{
                    alert("Böyle bir sipariş yok","danger");
                }

            }

        }
    break;

    case 'productskill':

        
        $code = get('id');
        if(!$code){
            go(admin);
        }

        $query = $db->prepare("SELECT urunbaslik,urunkodu FROM urunler WHERE urunkodu=:k");
        $query->execute([':k' => $code]);
        if($query->rowCount()){
            $row = $query->fetch(PDO::FETCH_OBJ);

            if(isset($_POST['add'])){

                $title   = post('title');
                $content = post('content');
                if(!$title || !$content){
                    alert("Boş alan bırakmayınız","danger");
                }else{
                    $add = $db->prepare("INSERT INTO urun_ozellikler SET

                        ozellikurun   =:u,
                        ozellikbaslik =:b,
                        ozellikicerik =:i,
                        ozellikekleyen=:ek,
                        ozellikdurum  =:du

                    ");

                    $result = $add->execute([
                        ':u'  => $code,
                        ':b'  => $title,
                        ':i'  => $content,
                        ':ek' => $aid,
                        ':du' => 1
                    ]);

                    if($result){
                        go($_SERVER['HTTP_REFERER']);
                    }else{
                        alert("Hata oluştu","danger");
                    }
                }


            }
           
            ?>

            <div class="tile">
            <h3 class="tile-title"><?php echo $row->urunbaslik;?> Adlı Ürüne Özellik Ekleme</h3>
            <form action="" method="POST" enctype="multipart/form-data">
            <div class="tile-body">

            <div class="form-group">
            <label class="control-label">Özellik Başlık</label>
            <input class="form-control" type="text" name="title" placeholder="Özellik başlığı">
            </div>

            <div class="form-group">
            <label class="control-label">Özellik İçerik</label>
            <textarea class="form-control" rows="5" name="content" placeholder="Özellik içeriği"></textarea>
            </div>



            </div>
            <div class="tile-footer">
            <button class="btn btn-primary" name="add" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Ürüne Özellik Ekle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/products.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
            </div>

            </form>

            <hr />
            <?php 
                $skills = $db->prepare("SELECT * FROM urun_ozellikler WHERE ozellikurun=:u");
                $skills->execute([':u' => $code]);
                if($skills->rowCount()){ 
            ?>
            <h3>Ürüne ait özellikler</h3>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>BAŞLIK</th>
                            <th>İÇERİK</th>
                            <th>DURUM</th>
                            <th>SIRALAMA</th>
                            <th>İŞLEMLER</th>
                        </tr>
                    </thead>
                    <tbody id="page_list">
                        <?php foreach($skills as $skill){ ?>
                            <tr id="<?php echo $skill['id'];?>">
                                <td><?php echo $skill['id'];?></td>
                                <td><?php echo $skill['ozellikbaslik'];?></td>
                                <td><?php echo $skill['ozellikicerik'];?></td>
                                <td><?php echo $skill['ozellikdurum'] == 1 ? '<span class="badge badge-success ">Aktif</span>' : '<span class="badge badge-danger">Pasif</span>';?></td>
                 
                                <td><?php echo $skill['siralama'];?></td>

                                <td>
                                   
                                    <a onclick="return confirm('Onaylıyor musunuz?');" title="Özellik sil" href="<?php b2b('productskilldelete',$skill['id']);?>"><i class="fa fa-close"></i></a>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
            
            
<script>
      $(document).ready(function(){
        $("#page_list").sortable({
          placeholder : 'ui-state-higlight',
          update      : function(event, ui){

            var page_id_array = new Array();
            $("#page_list tr").each(function(){
              page_id_array.push($(this).attr('id'));
            });

            $.ajax({
               url     : "<?php echo admin;?>/orderby.php?table=urun_ozellikler",
               method  : "POST",
               data    : {page_id_array:page_id_array},
               success : function(data){
                 alert("Sıralama güncellendi");
                 window.location.reload();
               }
            })


          }
        });
      });
    </script>
        </div>

            <?php 
                }else{
                    alert("Bu ürüne ait özellik bulunmuyor","danger");
                }


        }else{
            go(admin);
        }

    break;

    case 'productphotos':
    
        $code = get('id');
        if(!$code){
            go(admin);
        }

        $query = $db->prepare("SELECT urunsef,urunbaslik,urunkodu FROM urunler WHERE urunkodu=:k");
        $query->execute([':k' => $code]);
        if($query->rowCount()){
            $row = $query->fetch(PDO::FETCH_OBJ);

            if(isset($_POST['add'])){

                require_once 'inc/class.upload.php';
                $image = new upload($_FILES['pimage']);
                if($image->uploaded){

                    $rname = $row->urunsef."-".uniqid();
                    $image->allowed = array("image/*");
                    $image->image_convert = 'webp';
                    $image->file_new_name_body = $rname;
                    $image->file_max_size      = 1024 * 1024; //max 1 mb
                    $image->process("../uploads/product/");

                    if($image->processed){

                        $up = $db->prepare("INSERT INTO urun_resimler SET
                            resimurun =:u,
                            resimdosya=:b,
                            resimekleyen=:ek,
                            resimdurum  =:du

                        ");
                        $result = $up->execute([
                            ':b' => $rname.'.webp',
                            ':u' => $code,
                            ':ek'=> $aid,
                            ':du'=> 1
                        ]);

                        if($result){
                            @unlink("../uploads/product/".$row->urunbanner);
                            alert("Resim eklendi...","success");
                            go($_SERVER['HTTP_REFERER'],2);
                        }else{
                            alert("Hata oluştu","danger");
                        }

                    }else{
                        alert("Resim yüklenmedi","danger");
                    }

                }else{
                    alert("Resim seçmediniz","danger");
                }


            }

            ?>

            <div class="tile">
            <h3 class="tile-title"><?php echo $row->urunbaslik;?> Adlı Ürüne Çoklu Foto Ekleme</h3>
            <form action="" method="POST" enctype="multipart/form-data">
            <div class="tile-body">

            <div class="form-group">
            <label class="control-label">Ürün Resmi</label>
            <input class="form-control" type="file" name="pimage">
            </div>



            </div>
            <div class="tile-footer">
            <button class="btn btn-primary" name="add" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Ürüne Resim Ekle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/products.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
            </div>

            </form>

            <hr />
            <?php 
                $photos = $db->prepare("SELECT * FROM urun_resimler WHERE resimurun=:u");
                $photos->execute([':u' => $code]);
                if($photos->rowCount()){ 
            ?>
            <h3>Bu ürüne eklenmiş fotoğraflar (<?php echo $photos->rowCount();?>)</h3>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>RESİM</th>
                            <th>DURUM</th>
                            <th>SIRALAMA</th>
                            <th>İŞLEMLER</th>
                        </tr>
                    </thead>
                    <tbody id="page_list">
                        <?php foreach($photos as $photo){ ?>
                            <tr id="<?php echo $photo['id'];?>">
                                <td><?php echo $photo['id'];?></td>
                                <td><img src="<?php echo $site."/uploads/product/".$photo['resimdosya'];?>" width="100" height="100"/></td>
                               
                                <td><?php echo $photo['resimdurum'] == 1 ? '<span class="badge badge-success ">Aktif</span>' : '<span class="badge badge-danger">Pasif</span>';?></td>
                                <td><?php echo $photo['siralama'];?></td>
                 
                                <td>
                                    <?php if($photo['resimdurum'] == 1){ ?>
                                    <a onclick="return confirm('Onaylıyor musunuz?');" title="Resmi pasif yap" href="<?php b2b('productimagepassive',$photo['id']);?>"><i class="fa fa-lock"></i></a>
                                    <?php }else{ ?>
                                        <a onclick="return confirm('Onaylıyor musunuz?');" title="Resmi aktif yap" href="<?php b2b('productimageactive',$photo['id']);?>"><i class="fa fa-check"></i></a>
                                    <?php } ?>
                                    <a onclick="return confirm('Onaylıyor musunuz?');" title="Resmi sil" href="<?php b2b('productimagedelete',$photo['id']);?>"><i class="fa fa-close"></i></a>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>

                   
<script>
      $(document).ready(function(){
        $("#page_list").sortable({
          placeholder : 'ui-state-higlight',
          update      : function(event, ui){

            var page_id_array = new Array();
            $("#page_list tr").each(function(){
              page_id_array.push($(this).attr('id'));
            });

            $.ajax({
               url     : "<?php echo admin;?>/orderby.php?table=urun_resimler",
               method  : "POST",
               data    : {page_id_array:page_id_array},
               success : function(data){
                 alert("Sıralama güncellendi");
                 window.location.reload();
               }
            })


          }
        });
      });
    </script>


            <?php }else{
                alert("Bu ürüne ait resim bulunmuyor","danger");
            } ?>

            </div>

            <?php 

        }else{
            go(admin);
        }

    break;


    case 'productskilldelete':
        $id = get('id');
        if(!$id){
            go(admin);
        }

        $query = $db->prepare("SELECT * FROM urun_ozellikler WHERE id=:k");
        $query->execute([':k' => $id]);
        if($query->rowCount()){
      
            $del = $db->prepare("DELETE FROM urun_ozellikler WHERE id=:k");
            $result = $del->execute([':k' => $id]);
            if($result){ 
                go($_SERVER['HTTP_REFERER']);
            }else{
                alert("Hata oluştu","danger");
            }
            
        }else{
            go(admin);
        }
    break;

    case 'productimagedelete':
        $id = get('id');
        if(!$id){
            go(admin);
        }

        $query = $db->prepare("SELECT * FROM urun_resimler WHERE id=:k");
        $query->execute([':k' => $id]);
        if($query->rowCount()){
            
            $row = $query->fetch(PDO::FETCH_OBJ);

            $del = $db->prepare("DELETE FROM urun_resimler WHERE id=:k");
            $result = $del->execute([':k' => $id]);
            if($result){ 
                @unlink("../uploads/product/".$row->resimdosya);
                go($_SERVER['HTTP_REFERER']);
            }else{
                alert("Hata oluştu","danger");
            }
            
        }else{
            go(admin);
        }
    break;

    case 'productcoverimagedelete':
        $code = get('id');
        if(!$code){
            go(admin);
        }

        $query = $db->prepare("SELECT urunkodu,urunbanner FROM urunler WHERE urunkodu=:k");
        $query->execute([':k' => $code]);
        if($query->rowCount()){
            $row = $query->fetch(PDO::FETCH_OBJ);
            @unlink("../uploads/product/".$row->urunbanner);
            go($_SERVER['HTTP_REFERER']);
        }else{
            go(admin);
        }
    break;

    case 'productimageactive':
        $id = get('id');
        if(!$id){
            go(admin);
        }
        $query = $db->prepare("SELECT * FROM urun_resimler WHERE id=:k");
        $query->execute([':k' => $id]);
        if($query->rowCount()){
            $up = $db->prepare("UPDATE urun_resimler SET resimdurum=:d WHERE id=:k");
            $up->execute([':d' => 1,':k'=>$id]);
            go($_SERVER['HTTP_REFERER']);
        }else{
            go(admin);
        }
    break;

    case 'productimagepassive':
        $id = get('id');
        if(!$id){
            go(admin);
        }
        $query = $db->prepare("SELECT * FROM urun_resimler WHERE id=:k");
        $query->execute([':k' => $id]);
        if($query->rowCount()){
            $up = $db->prepare("UPDATE urun_resimler SET resimdurum=:d WHERE id=:k");
            $up->execute([':d' => 2,':k'=>$id]);
            go($_SERVER['HTTP_REFERER']);
        }else{
            go(admin);
        }
    break;

    case 'productbanner':
        $code = get('id');
        if(!$code){
            go(admin);
        }

        $query = $db->prepare("SELECT urunkodu,urunsef,urunbanner FROM urunler WHERE urunkodu=:k");
        $query->execute([':k' => $code]);
        if($query->rowCount()){

            $row = $query->fetch(PDO::FETCH_OBJ);

            if(isset($_POST['upp'])){

                require_once 'inc/class.upload.php';
                $image = new upload($_FILES['pimage']);
                if($image->uploaded){

                    $rname = $row->urunsef."-".uniqid();
                    $image->allowed = array("image/*");
                    $image->image_convert = 'webp';
                    $image->file_new_name_body = $rname;
                    $image->file_max_size      = 1024 * 1024; //max 1 mb
                    $image->process("../uploads/product/");

                    if($image->processed){

                        $up = $db->prepare("UPDATE urunler SET urunbanner=:b WHERE urunkodu=:k");
                        $result = $up->execute([':b' => $rname.'.webp',':k' => $code]);

                        if($result){
                            @unlink("../uploads/product/".$row->urunbanner);
                            alert("Banner resmi güncellendi","success");
                            go($_SERVER['HTTP_REFERER'],2);
                        }else{
                            alert("Hata oluştu","danger");
                        }

                    }else{
                        alert("Resim yüklenmedi","danger");
                    }

                }else{
                    alert("Resim seçmediniz","danger");
                }

            }
            ?>

            
<div class="tile">
<h3 class="tile-title">Ürün Banner Resmi</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Banner Resim</label>
<img src="<?php echo $site."/uploads/product/".$row->urunbanner;?>" width="100" height="100" /><a href="<?php b2b('productcoverimagedelete',$row->urunkodu);?>" onclick="return confirm('kapak resmini silmek istiyor musunuz?');">(<i class="fa fa-close"></i>)</a>
<input class="form-control" type="file" name="pimage">
</div>



</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/products.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

            <?php 

        }else{
            go(admin);
        }
    break;

    case 'productedit':
        $code = get('id');
        if(!$code){
            go(admin);
        }

        $query = $db->prepare("SELECT * FROM urunler WHERE urunkodu=:k");
        $query->execute([':k' => $code]);
        if($query->rowCount()){

            $row = $query->fetch(PDO::FETCH_OBJ);

            if(isset($_POST['upp'])){

                $pname   = post('pname');
                $purl    = post('purl');
                if(!$purl){
                $sef = sef_link($pname);
                }else{
                $sef = $purl;
                }
                $pcat    = post('pcat');
                $pcode   = post('pcode');
                $pprice  = post('pprice');
                $pstock  = post('pstock');
                $pseok   = post('pseok');
                $pseod   = post('pseod');
                $pv      = post('pv');
                $status  = post('status');
                $pcontent   = $_POST['pcontent'];

                if(!$pname  || !$pcat || !$pcode || !$pprice || !$pstock || !$pseok || !$pseod || !$pv || !$pcontent || !$status){
                alert("Tüm alanları doldurunuz","danger");
                }else{

                $already = $db->prepare("SELECT urunsef,urunkodu FROM urunler WHERE (urunsef=:k OR urunkodu=:kk) AND urunkodu !=:kkk AND urunsef !=:sef");
                $already->execute([':k' => $sef,':kk'=>$pcode,':kkk'=> $pcode,':sef'=>$sef]);
                if($already->rowCount()){
                alert("Bu ürün koduna ya da ürün seflinkine ait ürün zaten kayıtlı","danger");
                }else{

                require_once 'inc/class.upload.php';
                $image = new upload($_FILES['pimage']);
                if($image->uploaded){

                    $rname = $sef."-".uniqid();
                    $image->allowed = array("image/*");
                    $image->image_convert = 'webp';
                    $image->file_new_name_body = $rname;
                    $image->file_max_size      = 1024 * 1024; //max 1 mb
                    $image->process("../uploads/product/");

                    if($image->processed){

                        $add  = $db->prepare("UPDATE urunler SET
                            urunkat     =:k,
                            urunbaslik  =:b,
                            urunsef     =:s,
                            urunicerik  =:i,
                            urunkapak   =:ka,
                            urunfiyat   =:f,
                            urunstok    =:st,
                            urunkeyw    =:ke,
                            urundesc    =:de,
                            urundurum   =:du,
                            urunvitrin  =:vi WHERE urunkodu=:ko
                        ");

                        $result = $add->execute([
                            
                            ':k'  => $pcat,
                            ':b'  => $pname,
                            ':s'  => $sef,
                            ':i'  => $pcontent,
                            ':ka' => $rname.'.webp',
                            ':f'  => $pprice,
                            ':st' => $pstock,
                            ':ke' => $pseok,
                            ':de' => $pseod,
                            ':du' => $status,
                            ':vi' => $pv,
                            ':ko' => $pcode,

                        ]);
                        @unlink("../uploads/product/".$row->urunkapak);

                        

                    }else{
                        alert("Resim yüklenemedi","danger");
                        print_r($image->error);
                    }

                }else{
                   
                    $add  = $db->prepare("UPDATE urunler SET
                            urunkat     =:k,
                            urunbaslik  =:b,
                            urunsef     =:s,
                            urunicerik  =:i,
                            urunfiyat   =:f,
                            urunstok    =:st,
                            urunkeyw    =:ke,
                            urundesc    =:de,
                            urundurum   =:du,
                            urunvitrin  =:vi WHERE urunkodu=:ko
                        ");

                        $result = $add->execute([
                            
                            ':k'  => $pcat,
                            ':b'  => $pname,
                            ':s'  => $sef,
                            ':i'  => $pcontent,
                            ':f'  => $pprice,
                            ':st' => $pstock,
                            ':ke' => $pseok,
                            ':de' => $pseod,
                            ':du' => $status,
                            ':vi' => $pv,
                            ':ko' => $pcode,

                        ]);

                }


                if($result){

                    alert("Ürün güncellendi","success");
                    go($_SERVER['HTTP_REFERER'],2);

                }else{
                    alert("Hata oluştu","danger");
                    print_r($add->errorInfo());
                }



                }

                }

            }
            ?>

            
<div class="tile">
<h3 class="tile-title">Yeni Ürün Ekle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Ürün Kodu</label>
<input class="form-control" value="<?php echo $row->urunkodu	;?>" name="pcode" type="text" placeholder="Ürün Kodu">
</div>

<div class="form-group">
<label class="control-label">Ürün Adı</label>
<input class="form-control" value="<?php echo $row->urunbaslik	;?>" name="pname" type="text" placeholder="Ürün Adı">
</div>

<div class="form-group">
<label class="control-label">Ürün SEO URL (örn: asus-pc-i5)</label>
<input class="form-control" value="<?php echo $row->urunsef;?>" name="purl" type="text" placeholder="Ürün SEO URL">
</div>

<div class="form-group">
<label class="control-label">Ürün Kategorisi</label>
<select name="pcat" class="form-control">
<option value="0">Kategori seçiniz</option>
<?php 
    $cat = $db->prepare("SELECT * FROM urun_kategoriler WHERE katdurum=:d");
    $cat->execute([':d' => 1]);
    if($cat->rowCount()){
        foreach($cat as $ca){
            ?>
            <option <?php echo $ca['id'] == $row->urunkat ? 'selected' : null;?> value="<?php echo $ca['id'];?>"><?php echo $ca['katbaslik'];?></option>
            <?php 
        }
    }
?>
</select>
</div>



<div class="form-group">
<label class="control-label">Ürün Kapak Resim</label>
<img src="<?php echo $site;?>/uploads/product/<?php echo $row->urunkapak;?>" width="100" height="100" /><span style="color:#b10021">(Değiştirmek istemiyorsanız resim seçmeyiniz..)</span>
<input class="form-control" type="file" name="pimage">
</div>

<div class="form-group">
<label class="control-label">Ürün Stok Adet</label>
<input class="form-control" value="<?php echo $row->urunstok;?>" name="pstock" type="number" placeholder="Ürün Stok Adet">
</div>

<div class="form-group">
<label class="control-label">Ürün Fiyat</label>
<input class="form-control" value="<?php echo $row->urunfiyat;?>" name="pprice" type="text" placeholder="Ürün fiyat">
</div>

<div class="form-group">
<label class="control-label">Ürün SEO Keywords</label>
<input class="form-control" value="<?php echo $row->urunkeyw;?>" name="pseok" type="text" placeholder="Ürün SEO Keywords">
</div>

<div class="form-group">
<label class="control-label">Ürün SEO Description</label>
<input class="form-control" value="<?php echo $row->urundesc;?>" name="pseod" type="text" placeholder="Ürün SEO Description">
</div>

<div class="form-group">
<label class="control-label">Ürün İçerik</label>
<textarea class="ckeditor" name="pcontent"><?php echo $row->urunicerik;?></textarea>
</div>

<div class="form-group">
<label class="control-label">Ürün Durumu</label>
<select name="status" class="form-control">
<option value="0">Ürün durumu seçiniz</option>
<option value="1" <?php echo $row->urundurum == 1 ? 'selected' : null;?>>Aktif</option>
<option value="2" <?php echo $row->urundurum == 2 ? 'selected' : null;?>>Pasif</option>
</select>
</div>

<div class="form-group">
<label class="control-label">Vitrin Durumu</label>
<select name="pv" class="form-control">
<option value="0">Vitrin durumu seçiniz</option>
<option value="1" <?php echo $row->urunvitrin == 1 ? 'selected' : null;?>>Vitrinde görünsün</option>
<option value="2" <?php echo $row->urunvitrin == 2 ? 'selected' : null;?>>Kategori listesinde görünsün</option>
</select>
</div>



</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/products.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

            <?php 

        }else{
            go(admin);
        }
    break;

    case 'categoryedit':
        $id = get('id');
        if(!$id){
            go(admin);
        }

        $query = $db->prepare("SELECT * FROM urun_kategoriler WHERE id=:id");
        $query->execute([':id' => $id]);
        if($query->rowCount()){

            $row = $query->fetch(PDO::FETCH_OBJ);

            if(isset($_POST['upp'])){

                $name   = post('name');
                $seourl = post('seourl');
                if(!$seourl){
                $sef = sef_link($name);
                }else{
                $sef = $seourl;
                }
                $keyw   = post('seok');
                $desc   = post('seod');
                $status   = post('cstatus');

                if(!$name || !$keyw || !$desc || !$status){
                alert("Tüm alanları doldurunuz","danger");
                }else{

                $already = $db->prepare("SELECT id,katsef FROM urun_kategoriler WHERE katsef=:k AND id !=:id");
                $already->execute([':k' => $sef,':id' => $id]);
                if($already->rowCount()){
                    alert("Bu kategori zaten kayıtlı","danger");
                    }else{

                        require_once 'inc/class.upload.php';
                        $image = new upload($_FILES['cimage']);
                        if($image->uploaded){

                        $rname = $sef."-".uniqid();
                        $image->allowed = array("image/*");
                        $image->image_convert = 'webp';
                        $image->file_new_name_body = $rname;
                        $image->file_max_size      = 1024 * 1024; //max 1 mb
                        $image->process("../uploads");

                        if($image->processed){

                            $add  = $db->prepare("UPDATE urun_kategoriler SET
                                katbaslik =:k,
                                katsef    =:s,
                                katkeyw   =:ke,
                                katdesc   =:de,
                                katresim  =:re,
                                katdurum  =:du WHERE id=:id
                            ");

                            $result = $add->execute([
                                ':k' => $name,
                                ':s' => $sef,
                                ':ke'=> $keyw,
                                ':de'=> $desc,
                                ':re'=> $rname.'.webp',
                                ':du'=> $status,
                                ':id'=> $id
                            ]);
                            @unlink("../uploads/".$row->katresim);

                        

                        }else{
                            alert("Resim yüklenemedi","danger");
                            print_r($image->error);
                        }

                        }else{

                            $add  = $db->prepare("UPDATE urun_kategoriler SET
                                katbaslik =:k,
                                katsef    =:s,
                                katkeyw   =:ke,
                                katdesc   =:de,
                                katdurum  =:du WHERE id=:id
                            ");

                            $result = $add->execute([
                                ':k' => $name,
                                ':s' => $sef,
                                ':ke'=> $keyw,
                                ':de'=> $desc,
                                ':du'=> $status,
                                ':id'=> $id
                            ]);
                            
                        }


                        if($result){

                            alert("Kategori güncellendi","success");
                            go($_SERVER['HTTP_REFERER'],2);

                        }else{
                            alert("Hata oluştu","danger");
                            print_r($add->errorInfo());
                        }

                    }

                }


            }
            ?>

<div class="tile">
<h3 class="tile-title">Kategori Güncelle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Kategori Adı</label>
<input class="form-control" value="<?php echo $row->katbaslik;?>" name="name" type="text" placeholder="Kategori Adı">
</div>

<div class="form-group">
<label class="control-label">Kategori SEO URL (örn: canavar-oyun-bilgisayarlari)</label>
<input class="form-control" value="<?php echo $row->katsef;?>" name="seourl" type="text" placeholder="Kategori SEO URL">
</div>


<div class="form-group">
<label class="control-label">Kategori SEO Keywords</label>
<input class="form-control" value="<?php echo $row->katkeyw;?>" name="seok" type="text" placeholder="Kategori SEO Keywords">
</div>

<div class="form-group">
<label class="control-label">Kategori SEO Description</label>
<input class="form-control" value="<?php echo $row->katdesc;?>" name="seod" type="text" placeholder="Kategori SEO Description">
</div>

<div class="form-group">
<label class="control-label">Kategori Resim</label>
<img src="<?php echo $site;?>/uploads/<?php echo $row->katresim;?>" width="100" height="100" /> <span style="color:#b10021">(Değiştirmek istemiyorsanız resim seçmeyiniz...)</span>
<input class="form-control" type="file" name="cimage">
</div>


<div class="form-group">
<label class="control-label">Kategori Durum</label>
    <select name="cstatus" class="form-control">
        <option value="1" <?php echo $row->katdurum == 1 ? 'selected' : null; ?>>Aktif</option>
        <option value="2" <?php echo $row->katdurum == 2 ? 'selected' : null; ?>>Pasif</option>
    </select>
</div>

</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/categories.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

            <?php 

        }else{
            go(admin);
        }
    break;

    case 'customeraddress':

        $s    = @intval(get('s'));
        if(!$s){
            $s= 1;
        }
    
        $code = get('id');
        if(!$code){
        go(admin);
        }
    
        $bquery = $db->prepare("SELECT * FROM bayiler WHERE bayikodu=:k");
        $bquery->execute([':k' => $code]);
        if($bquery->rowCount()){
            $row = $bquery->fetch(PDO::FETCH_OBJ);
        }
        
        $query = $db->prepare("SELECT * FROM bayi_adresler WHERE adresbayi=:k");
        $query->execute([':k' => $code]);
    
        $total = $query->rowCount();
        $lim   = 50;
        $show  = $s * $lim - $lim;
    
     
    
        $query = $db->prepare("SELECT * FROM bayi_adresler WHERE adresbayi=:k ORDER BY id DESC LIMIT :show,:lim");
        $query->bindValue(':show',(int) $show,PDO::PARAM_INT);
        $query->bindValue(':lim',(int) $lim,PDO::PARAM_INT);
        $query->bindValue(':k',$code,PDO::PARAM_STR);
        $query->execute();
    
        if($s > ceil($total / $lim)){
            $s = 1;
          }
    
        if($query->rowCount()){
    
    
            ?>
    
                <div class="tile">
                <h3 class="tile-title">Bayi Adresleri (<?php echo $total;?>)</h3>
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>#ID</th>
                        <th>Adres Bayi</th>
                        <th>Adres Başlık</th>
                        <th>Adres Tarif</th>
                        <th>Adres Durum</th>
                        <th>İşlem</th>
                      </tr>
                    </thead>
                    <tbody>
    
                      <?php foreach($query as $pow){ ?>
                        
                        <tr> 
                        <td><?php echo $pow['id'];?></td>
                        <td><?php echo $row->bayiadi;?></td>
                        <td><?php echo $pow['adresbaslik'];?></td>
                        <td><?php echo $pow['adrestarif'];?></td>
                        <td><?php echo $pow['adresdurum'] == 1 ? '<span class="badge badge-success ">Aktif</span>' : '<span class="badge badge-danger ">Pasif</span>';?></td>
                        <td><a onclick="return confirm('Onaylıyor musunuz?');"  href="<?php b2b('customeraddressactive',$pow['id']);?>"><i class="fa fa-check"></i></a> | <a onclick="return confirm('Onaylıyor musunuz?');" href="<?php b2b('customeraddressdelete',$pow['id']);?>"><i class="fa fa-close"></i></a></td>
    
                     
                        
                      </tr>
    
                      <?php } ?>
    
                    </tbody>
                  </table>
                </div>
    
                
              <div>
                <ul class="pagination">
                  <?php 
                    if($total > $lim){
                      pagination($s, ceil($total/$lim),'process.php?process=customeraddress&id='.$code.'&s=');
                    }
                  ?>	
                </ul>
              </div>
    
              </div>
    
    
            <?php
    
    
        }else{
            alert("Bayiye ait adres bulunmamaktadır","danger");
        }
        
        
    break;

case 'customerlog':

    $s    = @intval(get('s'));
    if(!$s){
        $s= 1;
    }

    $code = get('id');
    if(!$code){
    go(admin);
    }

    $bquery = $db->prepare("SELECT * FROM bayiler WHERE bayikodu=:k");
    $bquery->execute([':k' => $code]);
    if($bquery->rowCount()){
        $row = $bquery->fetch(PDO::FETCH_OBJ);
    }
    
    $query = $db->prepare("SELECT * FROM bayilog WHERE logbayi=:k");
    $query->execute([':k' => $code]);

    $total = $query->rowCount();
    $lim   = 50;
    $show  = $s * $lim - $lim;

 

    $query = $db->prepare("SELECT * FROM bayilog WHERE logbayi=:k ORDER BY logtarih DESC LIMIT :show,:lim");
    $query->bindValue(':show',(int) $show,PDO::PARAM_INT);
    $query->bindValue(':lim',(int) $lim,PDO::PARAM_INT);
    $query->bindValue(':k',$code,PDO::PARAM_STR);
    $query->execute();

    if($s > ceil($total / $lim)){
        $s = 1;
      }

    if($query->rowCount()){


        ?>

            <div class="tile">
            <h3 class="tile-title">Banka  Listesi (<?php echo $total;?>)</h3>
            <div class="table-responsive">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>#ID</th>
                    <th>Bayi</th>
                    <th>Açıklama</th>
                    <th>Tarih</th>
                    <th>IP</th>
                  </tr>
                </thead>
                <tbody>

                  <?php foreach($query as $pow){ ?>
                    
                    <tr> 
                    <td><?php echo $pow['id'];?></td>
                    <td><?php echo $row->bayiadi;?></td>
                    <td><?php echo $pow['logaciklama'];?></td>
                    <td><?php echo dt($pow['logtarih']);?></td>
                    <td><?php echo $pow['logip'];?></td>

                 
                    
                  </tr>

                  <?php } ?>

                </tbody>
              </table>
            </div>

            
          <div>
            <ul class="pagination">
              <?php 
                if($total > $lim){
                  pagination($s, ceil($total/$lim),'process.php?process=customerlog&id='.$code.'&s=');
                }
              ?>	
            </ul>
          </div>

          </div>


        <?php


    }else{
        alert("Bayiye ait log kaydı bulunmamaktadır","danger");
    }
    
    
break;

case 'customerlogo':
$code = get('id');
if(!$code){
go(admin);
}

$query = $db->prepare("SELECT * FROM bayiler WHERE bayikodu=:k");
$query->execute([':k' => $code]);
if($query->rowCount()){

$row = $query->fetch(PDO::FETCH_OBJ);

if(isset($_POST['upp'])){

    require_once 'inc/class.upload.php';
    $image  = new Upload($_FILES['bimage']);
    if($image->uploaded){

        $rname = $code."-".uniqid();
        $image->allowed = array("image/*");
        $image->image_convert = 'webp';
        $image->file_new_name_body = $rname;
        $image->file_max_size      = 1024 * 1024; //max 1 mb
        $image->process("../uploads/customer");

        if($image->processed){

            $up = $db->prepare("UPDATE bayiler SET bayilogo=:logo WHERE bayikodu=:k");
            $up->execute([':logo' => $rname.'.webp',':k'=>$code]);
            if($up){
                @unlink("../uploads/customer/".$row->bayilogo);
                alert("Bayi logosu güncellendi","success");
                go($_SERVER['HTTP_REFERER'],2);

            }else{
                alert("Hata oluştu","danger");
            }

        }else{
            alert("Resim yüklenemedi","danger");
        }

    }else{
        alert("Resim seçmediniz","danger");
    }

}
?>


<div class="tile">
<h3 class="tile-title"><?php echo $row->bayiadi."(".$code.")";?> Adlı Bayiyi Güncelliyorsunuz</h3>

<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Bayi Logo</label>
<img src="<?php echo $site.'/uploads/customer/'.$row->bayilogo;?>" width="250" height="250" />
<input class="form-control" name="bimage" type="file">
</div>

</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/customers.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>
</div>

<?php 

}else{
    go(admin);
}

break;

case 'customeredit':
$code = get('id');
if(!$code){
go(admin);
}

$query = $db->prepare("SELECT * FROM bayiler WHERE bayikodu=:k");
$query->execute([':k' => $code]);
if($query->rowCount()){

$row = $query->fetch(PDO::FETCH_OBJ);

if(isset($_POST['upp'])){

$bname  = post('bname');
$bmail  = post('bmail');
$bpass  = post('bpass');
$bgift  = post('bgift');
$bphone = post('bphone');
$bfax   = post('bfax');
$bvno   = post('bvno');
$bvd    = post('bvd');
$bweb   = post('bweb');
$bstatus= post('bstatus');

if(!$bname || !$bmail || !$bphone || !$bvd || !$bvno || !$bstatus){
alert("Web site, indirim oranı ve fax dışındakileri doldurunuz","danger");
}else{

    if(!filter_var($bmail,FILTER_VALIDATE_EMAIL)){
        alert("Hatalı e-posta","danger");
    }else{

        $already = $db->prepare("SELECT bayikodu,bayimail FROM bayiler WHERE bayimail=:m AND bayikodu !=:k");
        $already->execute([':m'=>$bmail,':k'=>$code]);
        if($already->rowCount()){
            alert("Bu e-posta adresi sistemde kayıtlı","danger");
        }else{
            
            if($_POST['bpass'] == ""){

                $up = $db->prepare("UPDATE bayiler SET
                    bayiadi          =:a,
                    bayimail         =:m,
                    bayiindirim      =:i,
                    bayitelefon      =:t,
                    bayifax          =:f,
                    bayivergino      =:v,
                    bayivergidairesi =:d,
                    bayisite         =:si,
                    bayidurum        =:du WHERE bayikodu=:k
                ");

                $up->execute([
                    ':a'   => $bname,
                    ':m'   => $bmail,
                    ':i'   => $bgift,
                    ':t'   => $bphone,
                    ':f'   => $bfax,
                    ':v'   => $bvno,
                    ':d'   => $bvd,
                    ':si'  => $bweb,
                    ':du'  => $bstatus,
                    ':k'   => $code
                ]);

            }else{

                $up = $db->prepare("UPDATE bayiler SET
                    bayiadi          =:a,
                    bayimail         =:m,
                    bayiindirim      =:i,
                    bayitelefon      =:t,
                    bayifax          =:f,
                    bayivergino      =:v,
                    bayivergidairesi =:d,
                    bayisite         =:si,
                    bayidurum        =:du,
                    bayisifre        =:sif WHERE bayikodu=:k
                ");

                $up->execute([
                    ':a'   => $bname,
                    ':m'   => $bmail,
                    ':i'   => $bgift,
                    ':t'   => $bphone,
                    ':f'   => $bfax,
                    ':v'   => $bvno,
                    ':d'   => $bvd,
                    ':si'  => $bweb,
                    ':du'  => $bstatus,
                    ':sif' => sha1(md5($bpass)),
                    ':k'   => $code
                ]);

            }

            if($up){
                alert("Bayi başarıyla güncellendi","success");
                go($_SERVER['HTTP_REFERER'],2);
            }else{
                alert("Hata oluştu","danger");
            }

        }

    }

}

}
?>

<div class="tile">
<h3 class="tile-title"><?php echo $row->bayiadi."(".$code.")";?> Adlı Bayiyi Güncelliyorsunuz</h3>

<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Bayi Adı</label>
<input class="form-control" name="bname" type="text" placeholder="Bayi adı" value="<?php echo $row->bayiadi;?>">
</div>

<div class="form-group">
<label class="control-label">Bayi Mail</label>
<input class="form-control" name="bmail" type="text" placeholder="Bayi mail" value="<?php echo $row->bayimail;?>">
</div>

<div class="form-group">
<label class="control-label">Bayi Şifre</label>
<span style="color:#b10021">Değiştirmek istemiyorsanız boş bırakınız...</span>
<input class="form-control" name="bpass" type="text" placeholder="Bayi şifresi" value="">
</div>

<div class="form-group">
<label class="control-label">Bayi İndirim Oranı (%)</label>
<input class="form-control" name="bgift" type="number" placeholder="Bayi indirim oranı" value="<?php echo $row->bayiindirim;?>">
</div>


<div class="form-group">
<label class="control-label">Bayi Telefon</label>
<input class="form-control" name="bphone" type="number" placeholder="Bayi telefon" value="<?php echo $row->bayitelefon;?>">
</div>

<div class="form-group">
<label class="control-label">Bayi Fax</label>
<input class="form-control" name="bfax" type="number" placeholder="Bayi telefon" value="<?php echo $row->bayifax;?>">
</div>

<div class="form-group">
<label class="control-label">Bayi Vergi No</label>
<input class="form-control" name="bvno" type="text" placeholder="Bayi vergi no" value="<?php echo $row->bayivergino;?>">
</div>

<div class="form-group">
<label class="control-label">Bayi Vergi Dairesi</label>
<input class="form-control" name="bvd" type="text" placeholder="Bayi vergi dairesi" value="<?php echo $row->bayivergidairesi;?>">
</div>

<div class="form-group">
<label class="control-label">Bayi Web Site</label>
<input class="form-control" name="bweb" type="text" placeholder="Bayi web sitesi" value="<?php echo $row->bayisite;?>">
</div>


<div class="form-group">
<label class="control-label">Bayi Durum</label>
    
<select name="bstatus" class="form-control">
    <option value="1" <?php echo $row->bayidurum == 1 ? 'selected' :null;?>>Aktif</option>
    <option value="2" <?php echo $row->bayidurum == 2 ? 'selected' :null;?>>Pasif</option>
</select>

</div>

</div>
<div class="tile-footer">
<button class="btn btn-primary" name="upp" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/customers.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>
</div>
<?php 

}else{
go(admin);
}
break;


case 'orderdelete':
$code = get('id');
if(!$code){
go(admin);
}

$query = $db->prepare("SELECT sipariskodu,siparisdurum FROM siparisler WHERE sipariskodu=:b");
$query->execute([':b' => $code]);
if($query->rowCount()){
$row = $query->fetch(PDO::FETCH_OBJ);

if(isset($_POST['up'])){

$status = post('orderstatus');
if(!$status){
alert('durum seçiniz','danger');
}else{
$up = $db->prepare("UPDATE siparisler SET siparisdurum=:d WHERE sipariskodu=:k");
$up->execute([':d' => $status,':k'=>$code]);
if($up){
    alert('Sipariş güncellendi','success');
    go(admin."/orders.php",2);
}else{
    alert('Hata oluştu','danger');
}
}

}

?>


<div class="tile">
<h3 class="tile-title">Sipariş silme ekreanı</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Sipariş Durumu Seçiniz</label>
<select name="orderstatus" class="form-control">
<?php 
$dcode = $db->prepare("SELECT * FROM durumkodlari WHERE durumdurum=:d");
$dcode->execute([':d' => 1]);
if($dcode->rowCount()){
    foreach($dcode as $dco){
        ?>
        
        <option <?php echo $dco['durumkodu'] == $row->siparisdurum ? 'selected' : null;?> value="<?php echo $dco['durumkodu'];?>"><?php echo $dco['durumbaslik'];?></option>
        <?php 
    }
}
?>
</select>
</div>


</div>
<div class="tile-footer">
<button class="btn btn-primary" name="up" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Sipariş Durumunu Güncelle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/categories.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

<?php 

}else{
go(admin);
}
break;

case 'categorydelete':
$id = get('id');
if(!$id){
go(admin);
}

##silinmeyen kategoriyi buluyoruz
$dquery = $db->prepare("SELECT id,silinmeyen_kat FROM urun_kategoriler WHERE silinmeyen_kat=:si");
$dquery->execute([':si' => 1]);
$queryrow = $dquery->fetch(PDO::FETCH_OBJ);

##silinmeyen kategoriyi buluyoruz sonu


$query = $db->prepare("SELECT * FROM urun_kategoriler WHERE id=:b");
$query->execute([':b' => $id]);
if($query->rowCount()){
$row  = $query->fetch(PDO::FETCH_OBJ);
if($row->silinmeyen_kat == 1){
alert('Bu kategori silinmez olarak ayarlanmıştır','danger');
}else{

$up = $db->prepare("UPDATE urunler SET urunkat=:k WHERE urunkat=:kk");
$up->execute([':k' => $queryrow->id,':kk'=>$id]);
if($up){

$delete = $db->prepare('DELETE FROM urun_kategoriler WHERE id=:id');
$result = $delete->execute([':id' => $id]);
if($result){
    alert("Kategori silindi ve içerikleri silinmez kategoriye aktarıldı","success");
    @unlink("../uploads/".$row->katresim);
    go(admin."/categories.php",2);
}else{
    alert("Hata oluştu","danger");
}

}

}



}else{
go(admin);
}
break;


case 'statusdelete':
$id = get('id');
if(!$id){
go(admin);
}

##silinmeyen durum buluyoruz
$dquery = $db->prepare("SELECT id,durumkodu,silinmeyen_durum FROM durumkodlari WHERE silinmeyen_durum=:si");
$dquery->execute([':si' => 1]);
$queryrow = $dquery->fetch(PDO::FETCH_OBJ);

##silinmeyen durum buluyoruz sonu


$query = $db->prepare("SELECT * FROM durumkodlari WHERE durumkodu=:b");
$query->execute([':b' => $id]);
if($query->rowCount()){
$row  = $query->fetch(PDO::FETCH_OBJ);
if($row->silinmeyen_durum == 1){
alert('Bu durum silinmez olarak ayarlanmıştır','danger');
}else{

$up = $db->prepare("UPDATE siparisler SET siparisdurum=:k WHERE siparisdurum=:kk");
$up->execute([':k' => $queryrow->durumkodu,':kk'=>$id]);
if($up){

$delete = $db->prepare('DELETE FROM durumkodlari WHERE durumkodu=:id');
$result = $delete->execute([':id' => $id]);
if($result){
    alert("Durum kodu silindi ve bu durum koduna ait tüm siparişlerin durumu silinmez duruma göre ayarlandı","success");
    go(admin."/statuslist.php",2);
}else{
    alert("Hata oluştu","danger");
}

}

}



}else{
go(admin);
}
break;



case 'customeraddressactive':
    $code = get('id');
    if(!$code){
    go(admin);
    }
    
    $query = $db->prepare("SELECT id FROM bayi_adresler WHERE id=:b");
    $query->execute([':b' => $code]);
    if($query->rowCount()){
    $delete = $db->prepare("UPDATE bayi_adresler SET adresdurum=:d WHERE id=:b");
    $result = $delete->execute([':d' => 1,':b'=>$code]);
    if($result){
    alert('Bayi adresi aktif edildi..','success');
    go($_SERVER['HTTP_REFERER'],2);
    }else{
    alert('Hata oluştu','danger');
    }
    
    }else{
    go(admin);
    }
    break;

case 'customeraddressdelete':
    $code = get('id');
    if(!$code){
    go(admin);
    }
    
    $query = $db->prepare("SELECT id FROM bayi_adresler WHERE id=:b");
    $query->execute([':b' => $code]);
    if($query->rowCount()){
    $delete = $db->prepare("UPDATE bayi_adresler SET adresdurum=:d WHERE id=:b");
    $result = $delete->execute([':d' => 2,':b'=>$code]);
    if($result){
    alert('Bayi adresi pasife alındı','success');
    go($_SERVER['HTTP_REFERER'],2);
    }else{
    alert('Hata oluştu','danger');
    }
    
    }else{
    go(admin);
    }
    break;


case 'bankdelete':
$code = get('id');
if(!$code){
go(admin);
}

$query = $db->prepare("SELECT bankaid FROM bankalar WHERE bankaid=:b");
$query->execute([':b' => $code]);
if($query->rowCount()){
$delete = $db->prepare("UPDATE bankalar SET bankadurum=:d WHERE bankaid=:b");
$result = $delete->execute([':d' => 2,':b'=>$code]);
if($result){
alert('Banka hesabı pasife alındı','success');
go(admin."/banklist.php",2);
}else{
alert('Hata oluştu','danger');
}

}else{
go(admin);
}
break;


case 'messagedelete':
$code = get('id');
if(!$code){
go(admin);
}

$query = $db->prepare("SELECT id FROM mesajlar WHERE id=:b");
$query->execute([':b' => $code]);
if($query->rowCount()){
$delete = $db->prepare("DELETE FROM mesajlar WHERE id=:b");
$result = $delete->execute([':b'=>$code]);
if($result){
alert('Mesaj silindi','success');
go($_SERVER['HTTP_REFERER'],2);
}else{
alert('Hata oluştu','danger');
}

}else{
go(admin);
}
break;


case 'pagedelete':
$code = get('id');
if(!$code){
go(admin);
}

$query = $db->prepare("SELECT id,kapak FROM sayfalar WHERE id=:b");
$query->execute([':b' => $code]);
if($query->rowCount()){
$row    = $query->fetch(PDO::FETCH_OBJ);
$delete = $db->prepare("DELETE FROM sayfalar WHERE id=:b");
$result = $delete->execute([':b'=>$code]);
if($result){
alert('Sayfa silindi','success');
@unlink('../uploads/'.$row->kapak);
go($_SERVER['HTTP_REFERER'],2);
}else{
alert('Hata oluştu','danger');
}

}else{
go(admin);
}
break;


case 'customerdelete':
$code = get('id');
if(!$code){
go(admin);
}

$query = $db->prepare("SELECT bayikodu FROM bayiler WHERE bayikodu=:b");
$query->execute([':b' => $code]);
if($query->rowCount()){
$delete = $db->prepare("UPDATE bayiler SET bayidurum=:d WHERE bayikodu=:b");
$result = $delete->execute([':d' => 2,':b'=>$code]);
if($result){
alert('Bayi pasife alındı','success');
go(admin."/customers.php",2);
}else{
alert('Hata oluştu','danger');
}

}else{
go(admin);
}
break;


case 'cartdelete':
$code = get('id');
if(!$code){
go(admin);
}

$query = $db->prepare("SELECT sepeturun FROM sepet WHERE sepeturun=:b");
$query->execute([':b' => $code]);
if($query->rowCount()){
$delete = $db->prepare("DELETE FROM sepet WHERE sepeturun=:b");
$result = $delete->execute([':b'=>$code]);
if($result){
alert('Ürün sepetten silindi','success');
go(admin."/cart.php",2);
}else{
alert('Hata oluştu','danger');
}

}else{
go(admin);
}
break;

case 'notificationdelete':
$code = get('id');
if(!$code){
go(admin);
}

$query = $db->prepare("SELECT id FROM havalebildirim WHERE id=:b");
$query->execute([':b' => $code]);
if($query->rowCount()){
$delete = $db->prepare("DELETE FROM havalebildirim WHERE id=:b");
$result = $delete->execute([':b'=>$code]);
if($result){
alert('Havale bildirimi silindi','success');
go(admin."/notification.php",2);
}else{
alert('Hata oluştu','danger');
}

}else{
go(admin);
}
break;


case 'commentactive':
$id = get('id');
if(!$id){
go(admin);
}

$query = $db->prepare("SELECT id FROM urun_yorumlar WHERE id=:b");
$query->execute([':b' => $id]);
if($query->rowCount()){
$up = $db->prepare("UPDATE urun_yorumlar SET yorumdurum=:d WHERE id=:b");
$result = $up->execute([':d'=>1,':b'=>$id]);
if($result){
alert('Ürün yorumu onaylandı','success');
go($_SERVER['HTTP_REFERER'],2);
}else{
alert('Hata oluştu','danger');
}

}else{
go(admin);
}
break;


case 'commentpassive':
    $id = get('id');
    if(!$id){
    go(admin);
    }
    
    $query = $db->prepare("SELECT id FROM urun_yorumlar WHERE id=:b");
    $query->execute([':b' => $id]);
    if($query->rowCount()){
    $up = $db->prepare("UPDATE urun_yorumlar SET yorumdurum=:d WHERE id=:b");
    $result = $up->execute([':d'=>2,':b'=>$id]);
    if($result){
    alert('Ürün yorumu pasife alındı','success');
    go($_SERVER['HTTP_REFERER'],2);
    }else{
    alert('Hata oluştu','danger');
    }
    
    }else{
    go(admin);
    }
    break;


case 'commentdelete':
$code = get('id');
if(!$code){
go(admin);
}

$query = $db->prepare("SELECT id FROM urun_yorumlar WHERE id=:b");
$query->execute([':b' => $code]);
if($query->rowCount()){
$delete = $db->prepare("DELETE FROM urun_yorumlar WHERE id=:b");
$result = $delete->execute([':b'=>$code]);
if($result){
alert('Ürün yorumu silindi','success');
go(admin."/comments.php",2);
}else{
alert('Hata oluştu','danger');
}

}else{
go(admin);
}
break;



case 'productdelete':
$code = get('id');
if(!$code){
go(admin);
}

$query = $db->prepare("SELECT urunkodu FROM urunler WHERE urunkodu=:b");
$query->execute([':b' => $code]);
if($query->rowCount()){
$delete = $db->prepare("UPDATE urunler SET urundurum=:d WHERE urunkodu=:b");
$result = $delete->execute([':d' => 2,':b'=>$code]);
if($result){
alert('Ürün pasife alındı','success');
go(admin."/products.php",2);
}else{
alert('Hata oluştu','danger');
}

}else{
go(admin);
}
break;

case 'newproduct':


if(isset($_POST['add'])){

$pname   = post('pname');
$purl    = post('purl');
if(!$purl){
$sef = sef_link($pname);
}else{
$sef = $purl;
}
$pcat    = post('pcat');
$pcode   = post('pcode');
$pprice  = post('pprice');
$pstock  = post('pstock');
$pseok   = post('pseok');
$pseod   = post('pseod');
$pv      = post('pv');
$pcontent   = $_POST['pcontent'];

if(!$pname  || !$pcat || !$pcode || !$pprice || !$pstock || !$pseok || !$pseod || !$pv || !$pcontent){
alert("Tüm alanları doldurunuz","danger");
}else{

$already = $db->prepare("SELECT urunsef,urunkodu FROM urunler WHERE urunsef=:k OR urunkodu=:kk");
$already->execute([':k' => $sef,':kk'=>$pcode]);
if($already->rowCount()){
alert("Bu ürün koduna ya da ürün seflinkine ait ürün zaten kayıtlı","danger");
}else{

require_once 'inc/class.upload.php';
$image = new upload($_FILES['pimage']);
if($image->uploaded){

    $rname = $sef."-".uniqid();
    $image->allowed = array("image/*");
    $image->image_convert = 'webp';
    $image->file_new_name_body = $rname;
    $image->file_max_size      = 1024 * 1024; //max 1 mb
    $image->process("../uploads/product/");

    if($image->processed){

        $add  = $db->prepare("INSERT INTO urunler SET
            urunkat     =:k,
            urunbaslik  =:b,
            urunsef     =:s,
            urunicerik  =:i,
            urunkapak   =:ka,
            urunfiyat   =:f,
            urunkodu    =:ko,
            urunstok    =:st,
            urunkeyw    =:ke,
            urundesc    =:de,
            urunekleyen =:ek,
            urunvitrin  =:vi
        ");

        $result = $add->execute([
            
            ':k'  => $pcat,
            ':b'  => $pname,
            ':s'  => $sef,
            ':i'  => $pcontent,
            ':ka' => $rname.'.webp',
            ':f'  => $pprice,
            ':ko' => $pcode,
            ':st' => $pstock,
            ':ke' => $pseok,
            ':de' => $pseod,
            ':ek' => $aid,
            ':vi' => $pv,

        ]);

        if($result){

            alert("Ürün eklendi","success");
            go(admin."/products.php",2);

        }else{
            alert("Hata oluştu","danger");
            print_r($add->errorInfo());
        }

    }else{
        alert("Resim yüklenemedi","danger");
        print_r($image->error);
    }

}else{
    alert("Resim seçmediniz","danger");
    print_r($image->error);
}



}

}

}


?>

<div class="tile">
<h3 class="tile-title">Yeni Ürün Ekle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Ürün Adı</label>
<input class="form-control" name="pname" type="text" placeholder="Ürün Adı">
</div>

<div class="form-group">
<label class="control-label">Ürün SEO URL (örn: asus-pc-i5)</label>
<input class="form-control" name="purl" type="text" placeholder="Ürün SEO URL">
</div>

<div class="form-group">
<label class="control-label">Ürün Kategorisi</label>
<select name="pcat" class="form-control">
<option value="0">Kategori seçiniz</option>
<?php 
    $cat = $db->prepare("SELECT * FROM urun_kategoriler WHERE katdurum=:d");
    $cat->execute([':d' => 1]);
    if($cat->rowCount()){
        foreach($cat as $ca){
            echo '<option value="'.$ca['id'].'">'.$ca['katbaslik'].'</option>';
        }
    }
?>
</select>
</div>

<div class="form-group">
<label class="control-label">Ürün Kodu</label>
<input class="form-control" name="pcode" type="text" placeholder="Ürün Kodu">
</div>

<div class="form-group">
<label class="control-label">Ürün Kapak Resim</label>
<input class="form-control" type="file" name="pimage">
</div>

<div class="form-group">
<label class="control-label">Ürün Stok Adet</label>
<input class="form-control" name="pstock" type="number" placeholder="Ürün Stok Adet">
</div>

<div class="form-group">
<label class="control-label">Ürün Fiyat</label>
<input class="form-control" name="pprice" type="text" placeholder="Ürün fiyat">
</div>

<div class="form-group">
<label class="control-label">Ürün SEO Keywords</label>
<input class="form-control" name="pseok" type="text" placeholder="Ürün SEO Keywords">
</div>

<div class="form-group">
<label class="control-label">Ürün SEO Description</label>
<input class="form-control" name="pseod" type="text" placeholder="Ürün SEO Description">
</div>

<div class="form-group">
<label class="control-label">Ürün İçerik</label>
<textarea class="ckeditor" name="pcontent"></textarea>
</div>

<div class="form-group">
<label class="control-label">Vitrin Durumu</label>
<select name="pv" class="form-control">
<option value="0">Vitrin durumu seçiniz</option>
<option value="1">Vitrinde görünsün</option>
<option value="2">Kategori listesinde görünsün</option>
</select>
</div>



</div>
<div class="tile-footer">
<button class="btn btn-primary" name="add" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Ekle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/products.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

<?php 
break;


case 'newpage':


if(isset($_POST['add'])){

$name   = post('pname');
$seourl = post('purl');
if(!$seourl){
$sef = sef_link($name);
}else{
$sef = $seourl;
}
$pcontent   = $_POST['pcontent'];

if(!$name  || !$pcontent){
alert("Tüm alanları doldurunuz","danger");
}else{

$already = $db->prepare("SELECT sef FROM sayfalar WHERE sef=:k");
$already->execute([':k' => $sef]);
if($already->rowCount()){
alert("Bu sayfa zaten kayıtlı","danger");
}else{

require_once 'inc/class.upload.php';
$image = new upload($_FILES['pimage']);
if($image->uploaded){

$rname = $sef."-".uniqid();
$image->allowed = array("image/*");
$image->image_convert = 'webp';
$image->file_new_name_body = $rname;
$image->file_max_size      = 1024 * 1024; //max 1 mb
$image->process("../uploads");

if($image->processed){

    $add  = $db->prepare("INSERT INTO sayfalar SET
        baslik =:k,
        sef    =:s,
        icerik =:ke,
        kapak  =:de,
        ekleyen=:ek
    ");

    $result = $add->execute([
        ':k' => $name,
        ':s' => $sef,
        ':ke'=> $pcontent,
        ':de'=> $rname.'.webp',
        ':ek'=> $aid
    ]);

    if($result){

        alert("Sayfa eklendi","success");
        go(admin."/pages.php",2);

    }else{
        alert("Hata oluştu","danger");
        print_r($add->errorInfo());
    }

}else{
    alert("Resim yüklenemedi","danger");
    print_r($image->error);
}

}else{
alert("Resim seçmediniz","danger");
print_r($image->error);
}



}

}

}


?>

<div class="tile">
<h3 class="tile-title">Yeni Sayfa Ekle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Sayfa Adı</label>
<input class="form-control" name="pname" type="text" placeholder="Sayfa Adı">
</div>

<div class="form-group">
<label class="control-label">Sayfa SEO URL (örn: misyon-vizyon)</label>
<input class="form-control" name="purl" type="text" placeholder="Sayfa SEO URL">
</div>

<div class="form-group">
<label class="control-label">Sayfa Kapak Resim</label>
<input class="form-control" type="file" name="pimage">
</div>

<div class="form-group">
<label class="control-label">Sayfa İçerik</label>
<textarea class="ckeditor" name="pcontent"></textarea>
</div>



</div>
<div class="tile-footer">
<button class="btn btn-primary" name="add" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Ekle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/pages.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

<?php 
break;



case 'newbank':
if(isset($_POST['add'])){

$name   = post('name');
$hno    = post('hno');
$sname  = post('sname');
$iban   = post('iban');

if(!$iban || !$name || !$hno || !$sname){
alert("Boş alan bırakmayınız","danger");
}else{

$already = $db->prepare("SELECT bankaiban FROM bankalar WHERE bankaiban=:k");
$already->execute([':k' => $iban]);
if($already->rowCount()){
alert("Bu banka hesabı zaten kayıtlı","danger");
}else{

$add = $db->prepare("INSERT INTO bankalar SET
    bankaadi     =:b,
    bankahesap   =:k,
    bankasube    =:s,
    bankaiban    =:i,
    bankaekleyen =:ek
");

$result = $add->execute([
    ':b' => $name,
    ':k' => $hno,
    ':s' => $sname,
    ':i' => $iban,
    ':ek'=> $aid
]);

if($result){
    alert("Banka hesabı eklendi","success");
    go(admin."/banklist.php",2);
}else{
    alert("Hata oluştu","danger");
    print_r($add->errorInfo());
}

}

}

}
?>

<div class="tile">
<h3 class="tile-title">Yeni Banka Ekle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Banka Adı</label>
<input class="form-control" name="name" type="text" placeholder="Banka adı">
</div>

<div class="form-group">
<label class="control-label">Hesap No</label>
<input class="form-control" name="hno" type="text" placeholder="Hesap No">
</div>

<div class="form-group">
<label class="control-label">Şube Adı/No</label>
<input class="form-control" name="sname" type="text" placeholder="Şube Adı ya da şube no">
</div>

<div class="form-group">
<label class="control-label">IBAN</label>
<input class="form-control" name="iban" type="text" placeholder="IBAN">
</div>


</div>
<div class="tile-footer">
<button class="btn btn-primary" name="add" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Ekle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/banklist.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

<?php 
break;    

case 'newstatus':
if(isset($_POST['add'])){

$name = post('name');
$code = post('code');

if(!$name || !$code){
alert("Boş alan bırakmayınız","danger");
}else{

$already = $db->prepare("SELECT durumkodu FROM durumkodlari WHERE durumkodu=:k");
$already->execute([':k' => $code]);
if($already->rowCount()){
alert("Bu durum kodu zaten kayıtlı","danger");
}else{

$add = $db->prepare("INSERT INTO durumkodlari SET
durumbaslik =:b,
durumkodu   =:k,
durumekleyen=:ek
");

$result = $add->execute([
':b' => $name,
':k' => $code,
':ek'=> $aid
]);

if($result){
alert("Durum eklendi","success");
go(admin."/statuslist.php",2);
}else{
alert("Hata oluştu","danger");
print_r($add->errorInfo());
}

}

}

}
?>

<div class="tile">
<h3 class="tile-title">Yeni Durum Ekle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Durum Başlık</label>
<input class="form-control" name="name" type="text" placeholder="Durum Başlık">
</div>

<div class="form-group">
<label class="control-label">Durum Kodu</label>
<input class="form-control" name="code" type="text" placeholder="Durum Kodu">
</div>


</div>
<div class="tile-footer">
<button class="btn btn-primary" name="add" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Ekle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/statuslist.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

<?php 
break;

case 'newcategory':


if(isset($_POST['add'])){

$name   = post('name');
$seourl = post('seourl');
if(!$seourl){
$sef = sef_link($name);
}else{
$sef = $seourl;
}
$keyw   = post('seok');
$desc   = post('seod');

if(!$name || !$keyw || !$desc){
alert("Tüm alanları doldurunuz","danger");
}else{

$already = $db->prepare("SELECT katsef FROM urun_kategoriler WHERE katsef=:k");
$already->execute([':k' => $sef]);
if($already->rowCount()){
alert("Bu kategori zaten kayıtlı","danger");
}else{

require_once 'inc/class.upload.php';
$image = new upload($_FILES['cimage']);
if($image->uploaded){

$rname = $sef."-".uniqid();
$image->allowed = array("image/*");
$image->image_convert = 'webp';
$image->file_new_name_body = $rname;
$image->file_max_size      = 1024 * 1024; //max 1 mb
$image->process("../uploads");

if($image->processed){

    $add  = $db->prepare("INSERT INTO urun_kategoriler SET
        katbaslik =:k,
        katsef    =:s,
        katkeyw   =:ke,
        katdesc   =:de,
        katresim  =:re,
        katekleyen=:ek
    ");

    $result = $add->execute([
        ':k' => $name,
        ':s' => $sef,
        ':ke'=> $keyw,
        ':de'=> $desc,
        ':re'=> $rname.'.webp',
        ':ek'=> $aid
    ]);

    if($result){

        alert("Kategori eklendi","success");
        go(admin."/categories.php",2);

    }else{
        alert("Hata oluştu","danger");
        print_r($add->errorInfo());
    }

}else{
    alert("Resim yüklenemedi","danger");
    print_r($image->error);
}

}else{
alert("Resim seçmediniz","danger");
print_r($image->error);
}



}

}

}


?>

<div class="tile">
<h3 class="tile-title">Yeni Kategori Ekle</h3>
<form action="" method="POST" enctype="multipart/form-data">
<div class="tile-body">

<div class="form-group">
<label class="control-label">Kategori Adı</label>
<input class="form-control" name="name" type="text" placeholder="Kategori Adı">
</div>

<div class="form-group">
<label class="control-label">Kategori SEO URL (örn: canavar-oyun-bilgisayarlari)</label>
<input class="form-control" name="seourl" type="text" placeholder="Kategori SEO URL">
</div>


<div class="form-group">
<label class="control-label">Kategori SEO Keywords</label>
<input class="form-control" name="seok" type="text" placeholder="Kategori SEO Keywords">
</div>

<div class="form-group">
<label class="control-label">Kategori SEO Description</label>
<input class="form-control" name="seod" type="text" placeholder="Kategori SEO Description">
</div>

<div class="form-group">
<label class="control-label">Kategori Resim</label>
<input class="form-control" type="file" name="cimage">
</div>



</div>
<div class="tile-footer">
<button class="btn btn-primary" name="add" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Kayıt Ekle</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="<?php echo admin;?>/categories.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Listeye Dön</a>
</div>

</form>


</div>

<?php 
break;

}
?>





<div class="clearix"></div>

</div>
</main>
<?php require_once 'inc/footer.php';?>
