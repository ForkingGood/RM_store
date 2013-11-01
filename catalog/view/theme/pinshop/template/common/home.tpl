<?php echo $header; ?>
<div class="container container2"><?php echo $content_top; ?>
    <div style="margin:0 auto;">
        <div id="pinboard">
                <?php echo $special_block; 
                ?>
        </div>
                    <nav id="page-nav">
                <a href="index.php?route=common/pagination&c=0&p=2"></a>
            </nav>
    </div>
</div>
<div id="content"><?php echo $content_bottom; 
?></div>
<?php echo $footer; ?>