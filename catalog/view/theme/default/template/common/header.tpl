<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/form.css" />

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.9.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/flick/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>

<script type="text/javascript" src="catalog/view/javascript/common.js"></script>

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->

<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
</head>
<body>
<div class="page_margins">
<?php echo $topnav; ?>
<div id="container" class="page">
<div id="header">
   <?php if (count($languages) > 1) { ?>
	  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		<div id="language">
		  <?php foreach ($languages as $language) { ?>
		  &nbsp;<img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>').submit(); $(this).parent().parent().submit();" />
		  <?php } ?>
		  <input type="hidden" name="language_code" value="" />
		  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
		</div>
	  </form>
	  <?php } ?>
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <div id="search">
    <?php if ($filter_name) { ?>
    <input type="text" name="filter_name" class="search_content" value="<?php echo $filter_name; ?>" />
    <?php } else { ?>
    <input type="text" name="filter_name" class="search_content" placeholder="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
    <?php } ?>
    
    <div class="button-search">
  	  <a  class="button"><span><?php echo $text_search; ?></span></a>
  	</div>
    <div class="clear"></div>
  </div>
	 <div class="links">
	  <a rel="nofollow" href="<?php echo $home; ?>"><?php echo $text_home; ?></a>
	  <a rel="nofollow" href="<?php echo $wishlist; ?>" id="wishlist_total"><?php echo $text_wishlist; ?></a>
	  <a rel="nofollow" href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
	  <a rel="nofollow" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
	 </div>
</div>
<?php if ($categories) { ?>
<div id="menu">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul class="step1">
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li <?php if($i==0) {?> class="first"<?php }?> ><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
<?php if(isset($menu)) {?>
<?php echo $menu; ?>
<?php } ?>
<div id="notification"></div>
