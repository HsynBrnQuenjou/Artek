<?php 

require_once '../system/function.php';


if($_POST){


    if($arow->sitesiparisdurum == 1){

    $qty       = post('qty');
    $pcode     = post('pcode');

    if( @$_SESSION['login'] == @sha1(md5(IP().$bcode)) ){

        if(!$qty || !$pcode){
            echo 'empty';
        }else{
    
            if($qty < 1){
                echo 'qty';
            }else{

                $prow   = $db->prepare("SELECT urunkodu,urunfiyat,urundurum FROM urunler WHERE urunkodu=:k");
                $prow->execute([':k' => $pcode]);
                $productrow = $prow->fetch(PDO::FETCH_OBJ);

                if(@$bgift > 0){

                    $calc  = $productrow->urunfiyat * $bgift / 100;
                    $price = $productrow->urunfiyat - $calc;

                }else{
                    $price = $productrow->urunfiyat;
                }

              

                $totalprice = $price * $qty;
                $tax        = $totalprice * $arow->sitekdv / 100;
                $subtotal   = $totalprice + $tax;

                $currentcart = $db->prepare("SELECT sepeturun,sepetbayi,sepetadet FROM sepet WHERE sepeturun=:u AND sepetbayi=:b");
                $currentcart->execute([':u' => $productrow->urunkodu,':b'=>$bcode]);

                if($currentcart->rowCount()){

                    $currentcartrow = $currentcart->fetch(PDO::FETCH_OBJ);
                    $currentqty     = $currentcartrow->sepetadet + $qty;

                    $totalprice     = $price * $currentqty;
                    $tax            = $totalprice * $arow->sitekdv / 100;
                    $subtotal       = $totalprice + $tax;

                    $result = $db->prepare("UPDATE sepet SET
                       
                        sepetadet  =:a,
                        birimfiyat =:bi,
                        toplamfiyat=:tf,
                        kdv        =:ka WHERE sepeturun=:u AND sepetbayi=:b
                    ");

                    $result->execute([

                        ':a'   => $currentqty,
                        ':bi'  => $price,
                        ':tf'  => $subtotal,
                        ':ka'  => $arow->sitekdv,
                        ':u'   => $productrow->urunkodu,
                        ':b'   => $bcode
                    ]);

                    if($result->rowCount()){
                        echo 'ok';
                    }else{
                        echo 'error';
                    }

                }else{

                    $result = $db->prepare("INSERT INTO sepet SET
                        sepetbayi  =:b,
                        sepeturun  =:u,
                        sepetadet  =:a,
                        birimfiyat =:bi,
                        toplamfiyat=:tf,
                        sepettarih =:ta,
                        sepetsilinme =:si,
                        kdv        =:ka
                    ");

                    $result->execute([
                        ':b'   => $bcode,
                        ':u'   => $productrow->urunkodu,
                        ':a'   => $qty,
                        ':bi'  => $price,
                        ':tf'  => $subtotal,
                        ':ta'  => date('Y-m-d'),
                        ':si'  => date('Y-m-d', strtotime( date('Y-m-d') . " +7 days")),
                        ':ka'  => $arow->sitekdv
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
                            ':a'   => $productrow->urunkodu." nolu ürünü sepete ekledi"
                        ]);
                        echo 'ok';
                    }else{
                        echo 'error';
                    }

                }

            }
    
        }     

    }else{
        echo 'login';
    }

   
    }else{
        echo 'error';
    }

}


?>