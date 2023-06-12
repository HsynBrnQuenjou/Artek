<?php 

require_once '../system/function.php';


if($_POST){



    $name      = post('name');
    $email     = post('email');
    $subject   = post('subject');
    $message   = post('message');

    if(isset($_SESSION['login'])){
       $bcode  = $bcode;
    }else{
        $bcode = "Belirtilmemiş";
    }

    if(!$name || !$email || !$message ){

        echo 'empty';

    }else{
       
        if(strlen($message) < 100){
            echo 'char';
        }else{


            if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
                echo 'format';
            }else{

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
                $mail->FromName   = "Yavuz Selim | B2B İletişim";
                $mail->CharSet    = 'UTF-8';
                $mail->Subject    = $subject;
                $mailcontent      = "
                <p><b>Adı:</b>".$name."</p>
                <p><b>E-posta:</b>".$email."</p>
                <p><b>Konu:</b>".$subject."</p>
                <p><b>Mesaj:</b>".$message."</p>
                <p><b>ip:</b>".IP()."</p>
                ";

                $mail->MsgHTML($mailcontent);
                $mail->Send();

                $result = $db->prepare("INSERT INTO mesajlar SET
                    mesajisim  =:i,
                    mesajposta =:p,
                    mesajkonu  =:k,
                    mesajicerik=:ic,
                    mesajip    =:ip
                ");

                $result->execute([
                    ':i'  => $name,
                    ':p'  => $email,
                    ':k'  => $subject,
                    ':ic' => $message,
                    ':ip' => IP()
                ]);

                if($result->rowCount()){


                   

                    
                    $log = $db->prepare("INSERT INTO bayilog SET
                        logbayi     =:b,
                        logip       =:i,
                        logaciklama =:a
                    ");
                    $log->execute([
                        ':b'   => $bcode,
                        ':i'   => IP(),
                        ':a'   => "Yeni mesaj gönderimi yaptı"
                    ]);
                    echo 'ok';
                }else{
                    echo 'error';
                }

            }


        }

        
    }

}

?>