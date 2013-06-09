<?php if ($logged) { ?>
<div class="navbar navbar-fixed-top">
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container">
                <a class="brand" href="#">ITuiJian</a>
                <div class="nav-collapse">
                    <ul class="nav">
                        <li id="h_dashboard" ><a href="<?php echo $home; ?>" ><?php echo $text_dashboard; ?></a></li>
                        <li class="dropdown" id="h_catalog">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><?php echo $text_catalog; ?> <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo $category; ?>"><?php echo $text_category; ?></a></li>
                                <li><a href="<?php echo $product; ?>"><?php echo $text_product; ?></a></li>
                                <li class="divider"></li>
                                <li><a href="<?php echo $option; ?>"><?php echo $text_option; ?></a></li>
                                <li class="divider"></li>
                                <li><a href="<?php echo $review; ?>"><?php echo $text_review; ?></a></li>
                                <li><a href="<?php echo $information; ?>"><?php echo $text_information; ?></a></li>
                            </ul>
                        </li>
                        <li class="dropdown" id="h_extension">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $text_extension; ?><b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo $module; ?>"><?php echo $text_module; ?></a></li>
                                <li><a href="<?php echo $feed; ?>"><?php echo $text_feed; ?></a></li>
                                <li><a href="<?php echo $tool; ?>"><?php echo $text_tool; ?></a></li>
                                <li class="divider"></li>
                                <li><a href="<?php echo $layout; ?>"><?php echo $text_layout; ?></a></li>
                                <li><a href="<?php echo $banner; ?>"><?php echo $text_banner; ?></a></li> 
                                <li><a href="<?php echo $media; ?>" target="_blank"><?php echo $text_media?></a></li> 
                            </ul>
                        </li>
                        <li class="dropdown" id="h_sale">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $text_sale; ?><b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo $customer; ?>"><?php echo $text_customer; ?></a></li>
                                <li><a href="<?php echo $customer_group; ?>"><?php echo $text_customer_group; ?></a></li>
                                <li class="divider"></li>
                                <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li> 
                                <li><a href="<?php echo $message; ?>"><?php echo $text_word; ?></a></li>
                            </ul>
                        </li>
                        <li class="dropdown" id="h_system">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $text_system; ?><b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo $setting; ?>"><?php echo $text_setting; ?></a></li>
                                <li><a href="<?php echo $parameter; ?>"><?php echo $text_localisation?></a></li>
                                <li class="divider"></li>
                                <li><a href="<?php echo $user; ?>"><?php echo $text_user; ?></a></li>
                                <li><a href="<?php echo $user_group; ?>"><?php echo $text_user_group; ?></a></li>
                                <li class="divider"></li>
                                <li><a href="<?php echo $error_log; ?>"><?php echo $text_error_log; ?></a></li>
                                <li><a href="<?php echo $backup; ?>"><?php echo $text_backup; ?></a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav pull-right">
                        <li class="dropdown">
                            <a  class="dropdown-toggle" data-toggle="dropdown"><?php echo $text_front;?><b class="caret"></b></a>
 		</li>
		<li class="dropdown">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $logged; ?> <b class="caret"></b></a>
			  <ul class="dropdown-menu">
			      <li><a href="<?php echo $logout; ?>" >  <?php echo $text_logout; ?></a></li>
	 		 </ul>
  		</li>
 	 </ul>
  </div><!-- /.nav-collapse -->
  </div>
  </div><!-- /navbar-inner -->
  </div>
  </div>
<?php } ?>
<script type="text/javascript"><!--
function getURLVar(urlVarName) {
	var urlHalves = String(document.location).toLowerCase().split('?');
	var urlVarValue = '';
	
	if (urlHalves[1]) {
		var urlVars = urlHalves[1].split('&');

		for (var i = 0; i <= (urlVars.length); i++) {
			if (urlVars[i]) {
				var urlVarPair = urlVars[i].split('=');
				
				if (urlVarPair[0] && urlVarPair[0] == urlVarName.toLowerCase()) {
					urlVarValue = urlVarPair[1];
				}
			}
		}
	}
	
	return urlVarValue;
                                } 

$(document).ready(function() {
	route = getURLVar('route');
	
	if (!route) {
		$('#h_dashboard').addClass('active');
	} else {
		part = route.split('/');
		
		url = part[0];
		
		if (part[1]) {
			url += '/' + part[1];
		}
		
		$('a[href*=\'' + url + '\']').parents('li[id]').addClass('active');
	}
                                });
                                //--></script> 