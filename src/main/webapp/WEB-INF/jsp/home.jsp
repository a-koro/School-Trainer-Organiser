<%-- 
    Document   : home
    Created on : 21-Jun-2020, 13:10:56
    Author     : korov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
        <div class="container">

            <%@include file="navbar.jsp" %>

            <!-- CAROUSEL -->
            <div id="myCarousel" class="carousel slide my-3" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCaousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCaousel" data-slide-to="1"></li>
                    <li data-target="#myCaousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="/img/slider001.jpg" class="d-block w-100 rounded">
                    </div>
                    <div class="carousel-item">
                        <img src="/img/slider002.jpg" class="d-block w-100 rounded">
                    </div>
                    <div class="carousel-item">
                        <img src="/img/slider003.jpg" class="d-block w-100 rounded">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div> 

            <!-- Jumbotron -->
            <div class="jumbotron mt-3 bg-info text-white">
                <h1 class="display-4 text-center">School News</h1>
                <p class="lead">
                    2020 graduation
                </p>
                <hr class="my-4">
                <p>Graduating seniors with the class of 2020 may not have had the chance 
                    for a physical graduation celebration because of Covid-19, but 
                    celebrities and even former presidents came together to make sure 
                    their shining moment was special.</p>
                <div class="d-none d-sm-block col-sm-6">
                    <img src="/img/news001.jpg" class="rounded" alt="jumbotron image">
                </div>
            </div>


            <!-- Footer -->
            <footer class="page-footer font-small blue bg-light">
                <div class="footer-copyright text-center py-3">© 2020 Copyright:
                    <a href="#" class="text-dark"> Korove.sys</a>
                </div>
            </footer>
        </div>








        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>