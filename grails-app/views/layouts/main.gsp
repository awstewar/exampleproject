<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="theBox"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script type="text/javascript" src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
		<link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet" />
		<link href="${resource(dir: 'css', file: 'bootstrap-responsive.min.css')}" rel="stylesheet"/>
		<style type="text/css">
	      body {  
	        padding-top: 60px;
	        padding-bottom: 40px;
	      }
	    </style>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          </a>
          <a class="brand" href="#">theBox</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li class="nav-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul>
            <sec:ifLoggedIn>
              <div class="pull-right dropdown">
                <h6 class="dropdown-toggle" data-toggle="dropdown"><sec:loggedInUserInfo field="username"/></h6>
                <ul class="dropdown-menu">
                  <li><a href="">Profile</a></li>
                  <li><a href="">Boxes</a></li>
                  <li><a class="btn" href="">Sign Out</a></li>
                </ul>
              </div>
            </sec:ifLoggedIn>
            <sec:ifNotLoggedIn>
              <div class="pull-right">
                <a class="btn btn-primary" href="${createLink(controller:'login', action:'auth')}">Sign In</a>
              </div>
            </sec:ifNotLoggedIn>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    	<div class="container">
			  <g:layoutBody/>
  			<footer>
  	        	<p>&copy; Company 2012</p>
  	    </footer>
      </div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>