<%-- 
    Document   : navbar
    Created on : Jul 16, 2020, 5:29:19 PM
    Author     : korov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" 
              crossorigin="anonymous">

        <!-- FontAwesomeIcons CSS link (CDN) -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
              integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" 
              crossorigin="anonymous">

        <link href="/css/style.css" rel="stylesheet">
        <title>Legacy Private School</title>
    </head>
    <body>
        <!-- NAVBAR -->
        <nav class="navbar navbar-expand-md navbar-light bg-light rounded mt-3 py-0">
            <a href="/" class="navbar-brand d-sm-inline d-none"><img src="/img/logo.png" width="60px" height="60px" alt="logo">&nbsp;Legacy Private School</a>
            <a href="/" class="navbar-brand d-sm-none"><img src="/img/logo.png" width="60px" height="60px" alt="logo"></a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarMenu">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Home</a>
                    </li>
                    <!-- At the next line I accidentaly added a dash between item and dropdown and the drop down list appeared to the left -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Trainer
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/preInsertTrainer">Add Trainer</a>
                            <a class="dropdown-item" href="/listOfTrainers">List Of Trainers</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">About</a>
                    </li>
                </ul>
                <form class="navbar-form my-2" method="post" action="/searchResults">
                    <div class="input-group">
                        <input type="text" name="input" placeholder="Search Trainer" class="form-control" />
                        <div class="input-group-append">
                            <button class="btn btn-secondary">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </nav>
    </body>
</html>
