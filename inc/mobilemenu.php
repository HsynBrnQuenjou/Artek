<?php echo !defined('security') ? die("HACK") : null; ?>

<div class="mobile-menu-area">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-12 d-block d-md-none">
							<div class="mobile-menu">
								<nav id="dropdown">
									<ul>
									<li><a href="<?php echo site;?>">ANA SAYFA</a></li>
										<li><a href="<?php echo site;?>">ÜRÜNLER</a></li>

										<?php if(!isset($_SESSION['login'])){ ?>

										<li><a href="<?php echo site;?>/login-register">KAYIT OL</a></li>
										<li><a href="<?php echo site;?>/login-register">GİRİŞ YAP</a></li>

										<?php }else{ ?>

										<li><a href="<?php echo site;?>/profile?process=profile">HESABIM</a></li>
										<li><a onclick="return confirm('Onaylıyor musunuz?');" href="<?php echo site;?>/log-out">ÇIKIŞ YAP</a></li>
										<?php } ?>

										<li><a href="<?php echo site;?>/contact-us">BİZE ULAŞIN</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>