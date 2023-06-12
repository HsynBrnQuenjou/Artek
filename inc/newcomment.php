<?php 

require_once '../system/function.php';

if( @$_SESSION['login'] != @sha1(md5(IP().$bcode)) ){
    go(site);
}

if($_POST){

    $comment      = post('commentcontent');
    $product      = post('productcode');

    if(!$comment || !$product ){

        echo 'empty';

    }else{
       
        if(strlen($comment) < 0){
            echo 'char';
        }else{


            $result = $db->prepare("INSERT INTO urun_yorumlar SET
                yorumbayi  =:b,
                yorumurun =:t,
                yorumisim  =:s,
                yorumicerik =:tu,
                yorumdurum   =:n,
                yorumip       =:ba
            ");

            $result->execute([
                ':b'   => $bcode,
                ':t'   => $product,
                ':s'   => $bname,
                ':tu'  => $comment,
                ':n'   => 2,
                ':ba'   => IP()
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
                    ':a'   => $product." nolu ürüne yorum yaptı"
                ]);

                echo 'ok';
            }else{
                echo 'error';
            }


        }

        
    }

}

?>