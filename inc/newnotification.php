<?php 

require_once '../system/function.php';

if( @$_SESSION['login'] != @sha1(md5(IP().$bcode)) ){
    go(site);
}

if($_POST){

    $hbank      = post('hbank');
    $hdate      = post('hdate');
    $hhour      = post('hhour');
    $hprice     = post('hprice');
    $hdesc      = post('hdesc');

    if(!$hbank || !$hdate || !$hhour || !$hprice ){

        echo 'empty';

    }else{
       
        if(!is_numeric($hprice)){
            echo 'number';
        }else{


            $result = $db->prepare("INSERT INTO havalebildirim SET
                havalebayi  =:b,
                havaletarih =:t,
                havalesaat  =:s,
                havaletutar =:tu,
                havalenot   =:n,
                banka       =:ba,
                havaleip    =:i
            ");

            $result->execute([
                ':b'   => $bcode,
                ':t'   => $hdate,
                ':s'   => $hhour,
                ':tu'  => $hprice,
                ':n'   => $hdesc,
                ':ba'  => $hbank,
                ':i'   => IP()
            ]);

            if($result->rowCount()){


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
                $mail->AddAddress($arow->smtpkime);

                $mail->From       = $arow->smtpmail;
                $mail->FromName   = "Yavuz Selim | B2B Havale Bildirimi";
                $mail->CharSet    = 'UTF-8';
                $mail->Subject    = "Havale bildirimi";
                $mailcontent      = "
                <p><b>Bayi Kodu :</b>".$bcode."</p>
                <p><b>Tarih:</b>".$hdate."</p>
                <p><b>Saat:</b>".$hhour."</p>
                <p><b>Tutar:</b>".$hprice."</p>
                <p><b>Not :</b>".$hdesc."</p>
                <p><b>IP :</b>".IP()."</p>
                ";

                $mail->MsgHTML($mailcontent);
                $mail->Send();

                $log = $db->prepare("INSERT INTO bayilog SET
                    logbayi     =:b,
                    logip       =:i,
                    logaciklama =:a
                ");
                $log->execute([
                    ':b'   => $bcode,
                    ':i'   => IP(),
                    ':a'   => "Yeni havale bildirimi yaptı"
                ]);

                echo 'ok';
            }else{
                echo 'error';
            }


        }

        
    }

}

?>