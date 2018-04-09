
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foundation for Sites</title>
    <link rel="stylesheet" href="css/foundation.css">
    <link rel="stylesheet" href="css/app.css">
  </head>
  <body>
<div id="topbar" class="top-bar">
<div class="top-bar-left">
<ul class="dropdown menu" data-dropdown-menu>
  <img src="images/logo.png" >
</div>
  <div class="top-bar-left">
    <ul class="menu">
      <li><input type="search" placeholder="Find a movie "></li>
      <li><button id="btnS" type="button" class="button"><img src="images/search-icon.png"></button></li>
    </ul>
  </div>

<div class="top-bar-right">
<ul class="menu">


  <li><button id="btnL" type="button" class="button">Login</button></li>
</ul>
</div>

</div>





</ul>
<script src="js/vendor/jquery.js"></script>
<script src="js/vendor/what-input.js"></script>
<script src="js/vendor/foundation.js"></script>
<script src="js/app.js"></script>
</body>
</html>

<?php
	require_once('admin/phpscripts/config.php');
	if(isset($_GET['id'])) {
		//get the movie
		$tbl = "tbl_movies";
		$col = "movies_id";
		$id = $_GET['id'];
		$getMovie = getSingle($tbl, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
</head>
<body>

	<?php
		if(!is_string($getMovie)) {
			$row=mysqli_fetch_array($getMovie);
			echo "<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
			<p>{$row['movies_title']}</p>
			<p>{$row['movies_year']}</p>
			<p>{$row['movies_storyline']}</p>
			<a href=\"index.php\">Back...</a>
			";

		}else{
			echo "<p>{$getMovie}</p>";
		}

	?>
	<footer class="row">
	<div class="large-1 cell">
	  <img   src="images/logo.png">
	<div class="row">

	<div class="large-12 cell">
	<hr>
	</div>
	<div class="large-6 cell">
	<p id="footerT">Copyright © 2018 Inc.
	Rights reserved.</p>
	</div>
	</div>
	</div>
	</footer>
</body>

</html>
