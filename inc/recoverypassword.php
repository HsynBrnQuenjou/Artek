<?php 

require_once '../system/function.php';

if( @$_SESSION['login'] == @sha1(md5(IP().$bcode)) ){
    go(site);
}

if($_POST){

   
    $code     = post('code');
    $bmail    = post('email');
    $pass1    = post('password1');
    $pass2    = post('password2');
    $criypto  = sha1(md5($pass1));

    if(!$pass1 || !$pass2){
        echo 'empty';
    }else{

        $row = $db->prepare("SELECT * FROM bayiler WHERE sifirlamakodu=:k AND bayimail=:m");
        $row->execute([':k' => $code,':m' => $bmail]);
        if($row->rowCount()){

            $up = $db->prepare("UPDATE bayiler SET 
            
            sifirlamakodu=:s,
            bayisifre    =:ss
            
            WHERE bayimail=:k AND sifirlamakodu=:m");

            $up->execute([':s' => '',':ss' => $criypto,':k'=>$bmail,':m'=>$code]);

            require_once 'class.phpmailer.php';
            require_once 'class.smtp.php';

            $mail = new PHPMailer();
            $mail->Host       = $arow->smtphost;
            $mail->Port       = $arow->smtpport;
            $mail->SMTPSecure = $arow->smtpsec;
            $mail->Username   = $arow->smtpmail;
            $mail->Password   = $arow->smtpsifre;
            $mail->SMTPAuth   = true;
            $mail->IsSMTP();
            $mail->AddAddress($bmail);

            $mail->From       = $arow->smtpmail;
            $mail->FromName   = " Artek | Şifre Sıfırlama";
            $mail->CharSet    = 'UTF-8';
            $mail->Subject    = "Şifreniz başarıyla sıfırlandı";
            $mailcontent      = '
            <p>Şifreniz başarıyla sıfırlandı, bu işlemi siz yapmadıysanız lütfen bizimle iletişime geçiniz...</p>
            <p><b>İletişim linki:</b> <a href="'.site.'/contact-us">'.site.'/contact-us</a></p>
            ';

            $mail->MsgHTML($mailcontent);
            if($mail->Send()){
                echo 'ok';
            }
            

        }else{
            echo 'error';
        }

    }

}


?>