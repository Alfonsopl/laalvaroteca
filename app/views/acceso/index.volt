<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>La Alvaroteca</title>

    <link rel="stylesheet" href="slick/slick.css">
    <link rel="stylesheet" href="slick/slick-theme.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/app.css">
</head>

<body>

    <div id="widemenu" class="top-bar">
        <div class="top-bar-left">
            <ul class="menu">
                <li class="menu-text"><a href="{{url("")}}"<img src="assets/image/logoCabecera.png" width="300px" /></a>
                </li>
            </ul>
        </div>
    </div>

    <div class="page-heading primary-bg ">
        <h1 class="bold blanco">Acceso</h1>
    </div>
    <div id="user-menu-content">  
        <div class=" row column ">
            {{ flash.output() }}
            <form class="access" method="post">
                <div>
                    <div>
                        <label>Email:</label>
                        <input type="email" name="email" class="radius">
                    </div>
                    <div>
                        <label>Password:</label>
                        <input type="password" name="password" class="radius">
                    </div>
                    <input type="submit" value='submit' class="button success radius bold expand">
                </div>
            </form>
        </div>
    </div>
    <script src="bower_components/jquery/dist/jquery.js"></script>
    <script src="bower_components/what-input/what-input.js"></script>
    <script src="bower_components/foundation-sites/dist/foundation.js"></script>
    <script src="js/app.js"></script>
</body>

</html>