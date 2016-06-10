<!doctype html>
<!--

  Instructions:

  - Save this file.
  - Replace "USER" with your GitHub username.
  - Replace "REPO" with your GitHub repo name.
  - Replace "Your Project" with your project name.
  - Upload this file (or commit to GitHub Pages).

  Customize as you see fit!

-->
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width">

        <link rel="apple-touch-icon" sizes="57x57" href="../assets/image/favicon/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="../assets/image/favicon/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="../assets/image/favicon/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="../assets/image/favicon/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="../assets/image/favicon/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="../assets/image/favicon/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="../assets/image/favicon/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="../assets/image/favicon/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="../assets/image/favicon/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="../assets/image/favicon/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="../assets/image/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="../assets/image/favicon/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="../assets/image/favicon/favicon-16x16.png">
        <link rel="manifest" href="../assets/image/favicon/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="../assets/image/favicon/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">

        <title>La alvaroteca documentation</title>

        <!-- Flatdoc -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src='https://cdn.rawgit.com/rstacruz/flatdoc/v0.9.0/legacy.js'></script>
        <script src='https://cdn.rawgit.com/rstacruz/flatdoc/v0.9.0/flatdoc.js'></script>

        <!-- Flatdoc theme -->
        
        <link  href='https://cdn.rawgit.com/rstacruz/flatdoc/v0.9.0/theme-white/style.css' rel='stylesheet'>
        <script src='https://cdn.rawgit.com/rstacruz/flatdoc/v0.9.0/theme-white/script.js'></script>

        <!-- Meta -->
        <meta content="Your Project" property="og:title">
        <meta content="Your Project description goes here." name="description">

        <!-- Initializer -->
        <script>
            Flatdoc.run({
                fetcher: Flatdoc.file('../documents/readme.md')
            });
        </script>
    </head>
    <body role='flatdoc'>

        <div style="background-color: black">
            <div class="top-bar-left ">
                <ul class="dropdown menu" data-dropdown-menu>
                    <li class="menu-text"><a href="{{url("")}}"><img src="{{url('assets/image/logoCabecera.png')}}" width="300px" /></a>
                    </li>
                </ul>
            </div>
        </div>

        <div class='content-root'>
            <div class='menubar'>
                <div class='menu section' role='flatdoc-menu'></div>
            </div>
            <div role='flatdoc-content' class='content'></div>
        </div>

    </body>
</html>