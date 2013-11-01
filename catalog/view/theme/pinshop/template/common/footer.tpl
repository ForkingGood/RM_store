<div class="bigfooticon colorbackwhite handpoint" id="footericon"><i class="icon-eject"></i></div>

<div id="footer" class="colorback">
    <div class="container">
        <div class="inner footmenu">
          <div class="span3">
              <div class="btn-group">
                <a class="btn dropdown-toggle colorback" data-toggle="dropdown" href="#">
                    <?php echo $text_information; ?>
                    <i class="icon-caret-up"></i>
                </a>
                <ul class="dropdown-menu bottom-up">
                  <?php foreach ($informations as $information) { ?>
                  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                  <?php } ?>
                </ul>
              </div>
          </div>
           <div class="span3">
              <div class="btn-group">
                <a class="btn dropdown-toggle colorback" data-toggle="dropdown" href="#">
                    <?php echo $text_service; ?>
                    <i class="icon-caret-up"></i>
                </a>
                <ul class="dropdown-menu bottom-up">
                    <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                    <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                    <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                </ul>
              </div>
          </div>         
           <div class="span3">
              <div class="btn-group">
                <a class="btn dropdown-toggle colorback" data-toggle="dropdown" href="#">
                    <?php echo $text_extra; ?>
                    <i class="icon-caret-up"></i>
                </a>
                <ul class="dropdown-menu bottom-up">
                    <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                    <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                </ul>
              </div>
          </div>  
           <div class="span3">
              <div class="btn-group">
                <a class="btn dropdown-toggle colorback" data-toggle="dropdown" href="#">
                    <?php echo $text_account; ?>
                    <i class="icon-caret-up"></i>
                </a>
                <ul class="dropdown-menu bottom-up">
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                </ul>
              </div>
          </div>  
          
        </div>
    </div>
</div>
<div id="powered"><?php 
$break = array("<br>","<br/>","<br />");
echo str_replace($break,"&nbsp;",$powered); ?></div>

<script type="text/javascript">

$(document).ready(function() {
		$().UItoTop({ easingType: 'easeOutQuart'});

        function setCookie(name, value, lifetime_days) {
            var exp = new Date();
            exp.setDate(new Date().getDate() + lifetime_days);
            document.cookie = name + '=' + value + ';expires=' + exp.toUTCString() + ';path=/';
        }
        
        function getCookie(name) {
            if(document.cookie) {
                var regex = new RegExp(escape(name) + '=([^;]*)', 'gm'),
                matches = regex.exec(document.cookie);
                if(matches) {
                    return matches[1];
                }
            }
        }
        // show list if cookie exists
        if(getCookie('showfooter') == 5) {
            $('#footer').show();
        }   
        if(getCookie('showfooter') == 9) {
            $('#footer').hide();
        }  
        
        // click handler to toggle elements and handle cookie
        $('#footericon').click(function() {
            // check the current state
            if($('#footer').is(':hidden')) {
                // set cookie
                setCookie('showfooter', '5', 365);
            } else {
                // delete cookie
                setCookie('showfooter', '9', 365);
            }
            // toggle
            $('#footer').slideToggle('fast');
            return false;
        });
    });

</script>
</div>
</body></html>