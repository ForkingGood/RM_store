<?php echo $header; ?>
<div class="container container2" ><?php echo $content_top; ?>
    <?php 
    $noshow = false;
    if (!$products) { 
        $text = $text_empty;
        $noshow = true;
    } else {
        $text = "";}
    ?>
    <div style="margin:0 auto;">
    <div class="categorytitle"><?php echo $heading_title; ?> 
    
        <?php if (!$noshow) { ?>
            <div class="btn-group inline">
            <a data-toggle="dropdown" href="#">
                <div class="reorder colorback"><i class="icon-th"></i></div>
            </a>
            <ul class="dropdown-menu">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <li rel="<?php echo $sorts['href']; ?>"><a href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a></li>
            <?php } else { ?>
            <li rel="<?php echo $sorts['href']; ?>"><a href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a></li>
            <?php } ?>
            <?php } ?>
            </ul>
            </div>
            </div>
        <?php } else { ?>
            </div>
            <br/>
            <div class="row-fluid alcent noprod ">
                <i class="icon-bullhorn bigcircle colorbackwhite"></i>
                <span><?php echo $text;?></span></div>
                <?php if ($categories && !$products ) { ?>
                <span class="refine alcent"><h2 class="alcent"><?php echo $text_refine; ?></h2>
                    <ul>
                      <?php foreach ($categories as $category) { ?>
                      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                      <?php } ?>
                    </ul>
                </span>
            <?php } ?>
            </div>
            
            
        
        
        <?php } ?>
    
    <?php if ($description) { ?>
    <div class="category_desc">
    <?php echo $description; ?>
    </div>
    <?php } ?>
    <div id="pinboard">
    
                <?php echo $special_block; 
                ?>
        </div>
        <?php 
        $category = $this->request->get["path"];
        if ($category != "") {
            $category = explode("_",$category);
            $category = $category[count($category)-1];
            } else {
            $category = 0;
            }
        ?>
        <nav id="page-nav">
                <?php
                if (isset($this->request->get['sort'])) {
                    $sort = $this->request->get['sort'];
                    $order = $this->request->get['order'];
                    } else {
                    $sort = 'p.date_added';
                    $order = 'DESC';}
                    ?>
                <a href="index.php?route=common/pagination&c=<?php echo $category;?>&path=<?php echo $category;?>&sort=<?php echo $sort;?>&order=<?php echo $order;?>&p=2"></a>
        </nav>
    </div>
</div>

<!--
<div id="content">
  <?php if ($thumb || $description) { ?>
  <div class="category-info">
    <?php if ($thumb) { ?>
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  </div>
  <?php } ?>
</div>
-->

<?php echo $footer; ?>