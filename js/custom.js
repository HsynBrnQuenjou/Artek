var url = "http://artek.epizy.com";


function registerbutton(){

   
    document.getElementById("registerbuton").disabled = true;


    var data = $("#bregisterform").serialize();
    $.ajax({
        type : "POST",
        url  : url + "/inc/register.php",
        data : data,
        success : function(result){

            if($.trim(result) == "empty"){
                alert("Lütfen boş alan bırakmayınız");
                document.getElementById("registerbuton").disabled = false;

            }else if($.trim(result) == "format"){
                alert("E-posta formatı hatalı");
                document.getElementById("registerbuton").disabled = false;


            }else if($.trim(result) == "match"){
                alert("Şifreler uyuşmadı");
                document.getElementById("registerbuton").disabled = false;


            }else if($.trim(result) == "already"){
                alert("Bu e-posta adına ait bir bayi zaten kayıtlı");
                document.getElementById("registerbuton").disabled = false;


            }else if($.trim(result) == "error"){
                alert("Bir hata oluştu...");
                document.getElementById("registerbuton").disabled = false;


            }else if($.trim(result) == "ok"){
                alert("Üyeliğiniz başarıyla oluştuldu... Yönetici onayından sonra aktifleştirilecektir...");
                window.location.href = url;
            }

        }
    });

}


function passwordbutton(){

   
    document.getElementById("passwordbuton").disabled = true;


    var data = $("#passwordform").serialize();
    $.ajax({
        type : "POST",
        url  : url + "/inc/changepassword.php",
        data : data,
        success : function(result){

            if($.trim(result) == "empty"){
                alert("Lütfen boş alan bırakmayınız");
                document.getElementById("passwordbuton").disabled = false;

            }else if($.trim(result) == "match"){
                alert("Şifreler uyuşmadı");
                document.getElementById("passwordbuton").disabled = false;


            }else if($.trim(result) == "error"){
                alert("Bir hata oluştu...");
                document.getElementById("passwordbuton").disabled = false;


            }else if($.trim(result) == "ok"){
                alert("Şifreniz başarıyla güncellendi");
                window.location.href = url + "/profile?process=profile";
            }

        }
    });

}




function addressbutton(){
   // alert("asdas");
   
    document.getElementById("addressbuton").disabled = true;


    var data = $("#addressform").serialize();
    $.ajax({
        type : "POST",
        url  : url + "/inc/addressupdate.php",
        data : data,
        success : function(result){

            if($.trim(result) == "empty"){
                alert("Lütfen boş alan bırakmayınız");
                document.getElementById("addressbuton").disabled = false;

            }else if($.trim(result) == "error"){
                alert("Bir hata oluştu...");
                document.getElementById("addressbuton").disabled = false;


            }else if($.trim(result) == "ok"){
                alert("Adresiniz başarıyla güncellendi");
                window.location.href = url + "/profile?process=address";
            }

        }
    });

}


function newaddress(){
    // alert("asdas");
    
     document.getElementById("newaddres").disabled = true;
 
 
     var data = $("#newaddressform").serialize();
     $.ajax({
         type : "POST",
         url  : url + "/inc/newaddress.php",
         data : data,
         success : function(result){
 
             if($.trim(result) == "empty"){
                 alert("Lütfen boş alan bırakmayınız");
                 document.getElementById("newaddres").disabled = false;
 
             }else if($.trim(result) == "error"){
                 alert("Bir hata oluştu...");
                 document.getElementById("newaddres").disabled = false;
 
 
             }else if($.trim(result) == "ok"){
                 alert("Adresiniz başarıyla eklendi");
                 window.location.reload();
             }
 
         }
     });
 
 }
 


 
function newnotification(){
    // alert("asdas");
    
     document.getElementById("newnotificationn").disabled = true;
 
 
     var data = $("#newnotificationform").serialize();
     $.ajax({
         type : "POST",
         url  : url + "/inc/newnotification.php",
         data : data,
         success : function(result){
 
             if($.trim(result) == "empty"){
                 alert("Lütfen boş alan bırakmayınız");
                 document.getElementById("newnotificationn").disabled = false;
 
             }else if($.trim(result) == "error"){
                 alert("Bir hata oluştu...");
                 document.getElementById("newnotificationn").disabled = false;
 
 
             }else if($.trim(result) == "number"){
                alert("Havale tutarı sayısal ifade olmalıdır...");
                document.getElementById("newnotificationn").disabled = false;


            }else if($.trim(result) == "ok"){
                 alert("Havale bildiriminiz gönderildi, yönetici kontrolünden sonra tarafınıza ulaşım sağlanacaktır");
                 window.location.href = url + "/profile?process=newnotification";
             }
 
         }
     });
 
 }


 function newcomment(){
    // alert("asdas");
    
     document.getElementById("newcommentt").disabled = true;
 
 
     var data = $("#commentform").serialize();
     $.ajax({
         type : "POST",
         url  : url + "/inc/newcomment.php",
         data : data,
         success : function(result){
 
             if($.trim(result) == "empty"){
                 alert("Lütfen boş alan bırakmayınız");
                 document.getElementById("newcommentt").disabled = false;
 
             }else if($.trim(result) == "error"){
                 alert("Bir hata oluştu...");
                 document.getElementById("newcommentt").disabled = false;
 
 
             }else if($.trim(result) == "char"){
                alert("Yorumunuz en az 500 karakter olmalıdır...");
                document.getElementById("newcommentt").disabled = false;


            }
            else if($.trim(result) == "ok"){
                 alert("Yorumunuz gönderildi, yönetici kontrolünden sonra yayınlanacaktır...");
                 window.location.reload();
             }
 
         }
     });
 
 }

 function addcart(){

    document.getElementById("addcartt").disabled = true;

    var data = $("#addcartform").serialize();
    $.ajax({
        type : "POST",
        url  : url + "/inc/addcart.php",
        data : data,
        success : function(result){

            if($.trim(result) == "empty"){
                alert("Ürün adeti belirtiniz");
                document.getElementById("addcartt").disabled = false;

            }else if($.trim(result) == "login"){
                alert("Sepete eklemek için giriş yapmalısınız");
                document.getElementById("addcartt").disabled = false;

            }else if($.trim(result) == "qty"){
                alert("En az 1 adet seçmelisiniz");
                document.getElementById("addcartt").disabled = false;

            }else if($.trim(result) == "error"){
                alert("Hata oluştu");
                document.getElementById("addcartt").disabled = false;

            }else if($.trim(result) == "ok"){
                alert("Ürün sepete eklendi");
                window.location.reload();
            }

        }
    });


 }



function addcartTwo(productCode) {
    var data = {
        pcode: productCode,
        adet: 1
    };

    $.ajax({
        type: "POST",
        url: url + "/inc/addcart.php",
        data: data,
        success: function(result) {
            if ($.trim(result) == "empty") {
                alert("Ürün adeti belirtiniz");
            } else if ($.trim(result) == "login") {
                alert("Sepete eklemek için giriş yapmalısınız");
            } else if ($.trim(result) == "error") {
                alert("Hata oluştu");
            } else if ($.trim(result) == "ok") {
                alert("Ürün sepete eklendi");
                window.location.reload();
            }
        },
        complete: function() {
            // İşlem tamamlandığında, düğmenin devre dışı bırakma özelliğini kaldırın
            document.getElementById("addcartt").disabled = false;
        }
    });

    // Düğmeyi tıklanabilirlikten devre dışı bırakın
    document.getElementById("addcartt").disabled = true;
}






 function sendmessage(){
    // alert("asdas");
    
     document.getElementById("sendmessages").disabled = true;
 
 
     var data = $("#contactform").serialize();
     $.ajax({
         type : "POST",
         url  : url + "/inc/sendmessage.php",
         data : data,
         success : function(result){
 
             if($.trim(result) == "empty"){
                 alert("Lütfen boş alan bırakmayınız");
                 document.getElementById("sendmessages").disabled = false;
 
             }else if($.trim(result) == "error"){
                 alert("Bir hata oluştu...");
                 document.getElementById("sendmessages").disabled = false;
 
 
             }else if($.trim(result) == "format"){
                alert("E-posta formatı hatalı...");
                document.getElementById("sendmessages").disabled = false;


            }else if($.trim(result) == "char"){
                alert("Mesajınız en az 100 karakter olmalıdır...");
                document.getElementById("sendmessages").disabled = false;


            }else if($.trim(result) == "ok"){
                 alert("Mesajınız gönderildi, en kısa sürede dönüş sağlanacaktır...");
                 window.location.href = url + "/thank-you";
             }
 
         }
     });
 
 }


function profilebutton(){

   
    document.getElementById("profilebuton").disabled = true;


    var data = $("#profileform").serialize();
    $.ajax({
        type : "POST",
        url  : url + "/inc/profileupdate.php",
        data : data,
        success : function(result){

            if($.trim(result) == "empty"){
                alert("Lütfen boş alan bırakmayınız");
                document.getElementById("profilebuton").disabled = false;

            }else if($.trim(result) == "format"){
                alert("E-posta formatı hatalı");
                document.getElementById("profilebuton").disabled = false;


            }else if($.trim(result) == "already"){
                alert("Bu e-posta adına ait bir bayi zaten kayıtlı");
                document.getElementById("profilebuton").disabled = false;


            }else if($.trim(result) == "error"){
                alert("Bir hata oluştu...");
                document.getElementById("profilebuton").disabled = false;


            }else if($.trim(result) == "ok"){
                alert("Profiliniz başarıyla güncellendi...");
                window.location.reload();
            }

        }
    });

}



function loginbutton(){

    document.getElementById("loginbuton").disabled = true;


    var data = $("#bloginform").serialize();
    $.ajax({
        type : "POST",
        url  : url + "/inc/login.php",
        data : data,
        success : function(result){
            if($.trim(result) == "empty"){
                alert('Boş alan bırakmayınız');
                document.getElementById("loginbuton").disabled = false;
            }else if($.trim(result) == "error"){
                alert('Bayi kodu, e-posta veya şifre yanlış');
                document.getElementById("loginbuton").disabled = false;

            }else if($.trim(result) == "passive"){
                alert('Üyeliğiniz pasif durumdadır');
                document.getElementById("loginbuton").disabled = false;

            }else if($.trim(result) == "ok"){
                //alert('Başarıyla giriş yaptınız, yönlendiriliyorsunuz...');
                window.location.href = url;
            }
        }
    })

}




function passwordbutton2(){

    document.getElementById("passwordbuton2").disabled = true;


    var data = $("#passwordform2").serialize();
    $.ajax({
        type : "POST",
        url  : url + "/inc/passwordrecovery.php",
        data : data,
        success : function(result){
            if($.trim(result) == "empty"){
                alert('Boş alan bırakmayınız');
                document.getElementById("passwordbuton2").disabled = false;
            }else if($.trim(result) == "error"){
                alert('Bu bilgilere ait bayi bulunmuyor');
                document.getElementById("passwordbuton2").disabled = false;
            }else if($.trim(result) == "ok"){
                alert('Şifre sıfırlama linki mail adresinize gönderilmiştir...');
                window.location.href = url;
            }
        }
    })

}



function passwordbutton3(){

    document.getElementById("passwordbuton3").disabled = true;


    var data = $("#passwordform3").serialize();
    $.ajax({
        type : "POST",
        url  : url + "/inc/recoverypassword.php",
        data : data,
        success : function(result){
            if($.trim(result) == "empty"){
                alert('Boş alan bırakmayınız');
                document.getElementById("passwordbuton3").disabled = false;
            }else if($.trim(result) == "error"){
                alert('Bu sıfırlama koduna ait veri bulunmuyor');
                document.getElementById("passwordbuton3").disabled = false;
            }else if($.trim(result) == "ok"){
                alert('Şifreniz başarıyla sıfırlanmıştır...');
                window.location.href = url+"/login-register";
            }
        }
    })

}



function ordercompleted(){
    // alert("asdas");
    
     document.getElementById("ordercomplet").disabled = true;
 
 
     var data = $("#orderformz").serialize();
     $.ajax({
         type : "POST",
         url  : url + "/inc/neworder.php",
         data : data,
         success : function(result){
 
             if($.trim(result) == "empty"){
                 alert("Lütfen boş alan bırakmayınız");
                 document.getElementById("ordercomplet").disabled = false;
 
             }else if($.trim(result) == "error"){
                 
                 alert("Bir hata oluştu...");
                 document.getElementById("ordercomplet").disabled = false;
 
 
             }else if($.trim(result) == "ok"){
                 alert("Siparişiniz için teşekkür ederiz...");
                 window.location.href = url+"/order-complete";
             }
 
         }
     });
 
 }