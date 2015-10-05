<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">

        <script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/lib/angular.js"></script>
        <script type="text/javascript" src="js/lib/angular-route.js"></script>
        <script type="text/javascript" src="js/lib/angular-resource.js"></script>
        <script type="text/javascript" src="js/app.js"></script>

        <link href="bootstrap-theme.css" rel="stylesheet" />
        <link href="bootstrap-theme.min.css" rel="stylesheet" />
        <link href="bootstrap.css" rel="stylesheet" />
        <link href="bootstrap.min.css" rel="stylesheet" />
        <link href="style.css" rel="stylesheet">
        

    </head>
    <body>
        <!--menu-->
        <div  class="container-fluid" ng-app="app">
            <div ng-view></div>
        </div>
    </body>
</html>
