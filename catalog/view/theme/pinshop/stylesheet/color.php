<?php header("Content-type: text/css"); ?>
<?php 

function hex2rgb($hex) {
   $hex = str_replace("#", "", $hex);
 
   if(strlen($hex) == 3) {
      $r = hexdec(substr($hex,0,1).substr($hex,0,1));
      $g = hexdec(substr($hex,1,1).substr($hex,1,1));
      $b = hexdec(substr($hex,2,1).substr($hex,2,1));
   } else {
      $r = hexdec(substr($hex,0,2));
      $g = hexdec(substr($hex,2,2));
      $b = hexdec(substr($hex,4,2));
   }
   $rgb = array($r, $g, $b);
   //return implode(",", $rgb); // returns the rgb values separated by commas
   return $rgb; // returns an array with the rgb values
}

include("../config.php");

$colrgb = hex2rgb($color);

if (isset($background)) {echo "body {background:url('../images/back-".$background.".png') repeat;}";}

if ($footer_show == "no") { echo "
#footer {
        display:none;}
";}

echo "


.logo {
    background:url(../".$logo.") 10px 0 no-repeat;
    background-size:".$logo_width."px ".$logo_height."px;
    -webkit-background-size:".$logo_width."px ".$logo_height."px;
    -moz-background-size:".$logo_width."px ".$logo_height."px;
    }


@media only screen and (-webkit-device-pixel-ratio: 2){
.logo { 
    background:url(../".$logo_retina.") 10px 0 no-repeat; 
    background-size:".$logo_width."px ".$logo_height."px;
    -webkit-background-size:".$logo_width."px ".$logo_height."px;
    -moz-background-size:".$logo_width."px ".$logo_height."px;
    }
}

.dropdown-menu-customwidth {
min-width:".$dropdown_min_width."px !important;
}

.colorback {
    background-color: ".$color.";
    color:".$color_back.";
}
.colorback:hover {
    background-color: ".$color.";
    color:".$color_back.";
}
.colorfront {
    color:".$color.";
    }
.colorbackwhite {
    background-color: ".$color_back.";
    color:".$color.";
    }
.colorwhite {
    color:".$color_back.";
    }  
.triangle {
    border-style: solid;
    border-width: 0 40px 40px 0;
    border-color: transparent ".$color." transparent transparent;
    }   
.button {
    background-color: ".$color.";
    color:".$color_back.";
    }    
.warning {
    margin:20px 0px;}
input:focus {
  border-color: rgba(".$colrgb[0].", ".$colrgb[1].", ".$colrgb[2].", 0.5) !important;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(".$colrgb[0].", ".$colrgb[1].", ".$colrgb[2].", 0.4) !important;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(".$colrgb[0].", ".$colrgb[1].", ".$colrgb[2].", 0.4) !important;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(".$colrgb[0].", ".$colrgb[1].", ".$colrgb[2].", 0.4) !important;
  outline: 0;
  outline: thin dotted \9;
  /* IE6-9 */
}


";


if ($subpages == "full") { echo "
@media (max-width: 1420px) and (min-width: 1200px) {
.container {
width: 1170px !important;
}
}

@media (max-width: 1720px) and (min-width: 1420px) {
.container {
width: 1400px !important;
}
}

@media (max-width: 2000px) and (min-width: 1720px) {
.container {
width: 1635px !important;
}
}


@media (max-width: 2200px) and (min-width: 2000px) {
.container {
width: 1875px !important;
}
#headerunder {
    min-width: 20%;
}
}


@media (min-width: 2200px) {
.container {
width: 2100px !important;
}
#headerunder {
    min-width: 15%;
}
}
";}

?>
