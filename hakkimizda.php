<?php 
define('security', true);

require_once 'inc/header.php';
?>
<head>
<style>
	body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }
    
    .slider {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      margin: 20px;
    }
    
    .slider img {
      width: 300px;
      height: 300px;
      margin: 20px;
      cursor: pointer;
      object-fit: contain;
    }
    
    .lightbox {
      display: none;
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.7);
      align-items: center;
      justify-content: center;
    }
    
    .lightbox-image {
      max-width: 80%;
      max-height: 80%;
    }

    .row {
      display: flex;
      justify-content: center;
    }

    .column {
      flex: 1;
    }

    @media screen and (max-width: 600px) {
      .slider img {
        width: 200px;
        height: 200px;
      }
    }

  .hakkimizda {
    background-color: #f5f5f5; /* Light Gray */
    padding: 20px;
    margin: 40px;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }

  h1 {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 10px;
  }

  p {
    margin-bottom: 10px;
  }

  .highlight {
    color: #008000; /* Lime Green */
    font-weight: bold;
  }

  .quote {
    font-style: italic;
    color: #730362; /* Gray */
  }
	</style>
    <script>
    function openLightbox(image) {
      var lightbox = document.querySelector(".lightbox");
      var lightboxImage = document.querySelector(".lightbox-image");
      
      lightboxImage.src = image.src;
      lightbox.style.display = "flex";
    }

    function closeLightbox() {
      var lightbox = document.querySelector(".lightbox");
      lightbox.style.display = "none";
    }
  </script>
    </head>
<div class="wrapper">
    <?php require_once 'inc/menu.php'; ?>

    <div class="heading-banner-area overlay-bg" style="background: url(<?php echo site;?>/uploads/Topic_Banner_Short.jpg) no-repeat scroll center center / cover;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading-banner">
                        <div class="heading-banner-title">
                            <h2>Hakkımızda</h2>
                        </div>
                        <div class="breadcumbs pb-15">
                            <ul>
                                <li><a href="<?php echo site;?>">Ana Sayfa</a></li>
                                <li>Hakkımızda</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <body>

<div class="slider">
    <div class="row">
      <div class="column">
        <img src="https://www.iyigunler.net/images/haberler/2018/04/monster_notebook_2_oyun_magazasini_izmirde_acti.jpg" onclick="openLightbox(this)" alt="Slider Resim 1">
      </div>
      <div class="column">
        <img src="https://i4.hurimg.com/i/hurriyet/75/750x422/5eddb6fc7af5071ccc666eed.jpg" onclick="openLightbox(this)" alt="Slider Resim 2">
      </div>
      <div class="column">
        <img src="https://www.technopat.net/wp-content/uploads/2022/06/Monster-Notebook-Avrupa-Yakasi-Deneyim-Magazasi-ve-Teknik-Servis-Merkezi-Acildi.jpg" onclick="openLightbox(this)" alt="Slider Resim 3">
      </div>
    </div>
    <div class="row">
      <div class="column">
        <img src="https://pchocasi.com.tr/wp-content/uploads/2019/02/monster-notebook.jpg" onclick="openLightbox(this)" alt="Slider Resim 4">
      </div>
      <div class="column">
        <img src="https://i.ytimg.com/vi/Pc9H3Og5C9M/maxresdefault.jpg" onclick="openLightbox(this)" alt="Slider Resim 5">
      </div>
      <div class="column">
        <img src="https://egirisim.com/wp-content/uploads/2020/02/monster-genel-mudurluk.jpeg" onclick="openLightbox(this)" alt="Slider Resim 6">
      </div>
    </div>
  </div>

  <div class="lightbox" onclick="closeLightbox()">
    <img class="lightbox-image" src="" alt="Lightbox Resim">
  </div>

  <div class="hakkimizda">
  <h1>ARTEK Hakkında</h1>
  <p>
    ARTEK, 2013 yılında İstanbul'da kurulan yenilikçi bir bilgisayar ve çevre bileşenleri satan firma olarak faaliyetlerine başladı.
    Kuruluş hikayesi, <span onclick="window.open('https://www.linkedin.com/in/%C3%B6mer-faruk-tamga%C3%A7/', '_blank');" style="cursor: pointer;" class="highlight">Ömer Faruk Tamgaç</span> ve <span onclick="window.open('https://www.linkedin.com/in/baran-h%C3%BCseyin-ken%C3%A7%C3%BC-2b407a227/', '_blank');" style="cursor: pointer;" class="highlight">Baran Hüseyin Kençü</span>'nün ortak bir vizyonu paylaşmalarıyla şekillendi.
    İkisi de bilgisayar teknolojilerine olan ilgilerini bir iş fırsatına dönüştürmek isteyen genç girişimcilerdi.
  </p>
  <p>
    Ömer ve Baran, ARTEK'i kurarken, müşterilere en iyi kalitede bilgisayar bileşenlerini sunmayı, rekabetçi fiyatlarla birlikte mükemmel bir alışveriş deneyimi sağlamayı hedefledi.
    İşe başlamadan önce, piyasadaki ihtiyaçları ve rekabeti detaylı bir şekilde analiz ettiler. Bu analizler sonucunda, ARTEK'in potansiyelinin yüksek olduğunu ve bu alanda fark yaratabileceklerini gördüler.
  </p>
  <p class="quote">"ARTEK, hızlı bir şekilde büyüdü ve sektörde kendine saygın bir konum edindi."</p>
  <p>
    ARTEK, aynı zamanda sektördeki gelişmeleri takip etmeye ve müşterilere en yeni trendleri sunmaya büyük önem verir.
    İnovasyon ve teknolojik ilerleme, ARTEK'in iş yapma şeklinin temel bir parçasıdır.
    Yüksek kaliteli ürünlerin yanı sıra, müşterilere uzman teknik destek ve satış sonrası hizmetler sunarak, onların memnuniyetini sağlamaya ve uzun vadeli ilişkiler kurmaya özen gösterir.
  </p>
  <p>
    ARTEK, başarılarını müşterilerinin güvenine ve çalışanlarının tutkulu çalışmasına borçludur.
  </p>
</div>

    <?php require_once 'inc/footer.php'; ?>
</div>

<?php require_once 'inc/mobile_menu.php'; ?>

<script>
    function openLightbox(image) {
      var lightbox = document.querySelector(".lightbox");
      var lightboxImage = document.querySelector(".lightbox-image");
      
      lightboxImage.src = image.src;
      lightbox.style.display = "flex";
    }

    function closeLightbox() {
      var lightbox = document.querySelector(".lightbox");
      lightbox.style.display = "none";
    }
  </script>
</body>
</html>