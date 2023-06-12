<?php 

    require_once 'system/function.php';

    $log = $db->prepare("INSERT INTO bayilog SET
        logbayi     =:b,
        logip       =:i,
        logaciklama =:a
    ");
    $log->execute([
        ':b'   => $bcode,
        ':i'   => IP(),
        ':a'   => "Çıkış yapıldı"
    ]);

    session_destroy();
    header('Location:'.site);

?>