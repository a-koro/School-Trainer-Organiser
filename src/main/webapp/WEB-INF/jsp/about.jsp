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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <!-- FontAwesomeIcons CSS link (CDN) -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
        integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" 
        crossorigin="anonymous">
        
        <link href="/css/style.css" rel="stylesheet">
        <title>Legacy Private School</title>
    </head>
    <body>
        <div class="container">

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
<!--                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search Trainer" aria-label="Search">
                    </form>-->
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
            
            <br>
            <h3>Legacy Private School Mission</h3>
            <br>
            <p>The Legacy School of Athens is an academic community comprised 
                of students, faculty, and parents united in a philosophy which is 
                dedicated to fostering in all of its students a love of learning, 
                self-discipline and self-knowledge. The community upholds the belief 
                that what a school chooses to teach is reflected in its regard for 
                its human relationships, in its appreciation of cultural diversity 
                and the manner in which it interacts with all of its members. The 
                community is proud of its “sense of family” and the friendships and 
                camaraderie that it inspires.</p>
            <br>
            <p>The curriculum is broad-based and flexible. A low faculty student 
                ratio caters to the individual needs of the student and contributes 
                to a learning environment, which stimulates personal, intellectual, 
                artistic, social, and physical development. The close interaction of 
                all members of the LPS community effectively encourages the students 
                to achieve high personal standards of academic success, maximizes 
                each student’s potential and contributes to his or her total 
                educational experience.</p>
            <br>
            <p>Furthermore, LPS adheres to the IBO philosophy, endeavouring to 
                develop the individual talents of young people and teach them to 
                relate the experience of the classroom to the realities of the world 
                outside. Beyond intellectual rigour and high academic standards, 
                strong emphasis is placed on the ideas of international understanding 
                and responsible citizenship, to enable LPS students to become 
                critical and compassionate thinkers, lifelong learners and informed 
                participants in local and world affairs, conscious of the shared 
                humanity that binds all people together while respecting the variety 
                of cultures and attitudes that makes for the richness of life.</p>
            <br>
            <p>LPS Core Values</p>
            <br>
            <p>We believe that:</p>
            <ul>
                <li>
                    Education is about connectedness; academic studies, therefore, need to 
                    fit into a human & global context
                </li>
                <li>
                    Students need to be prepared for the moral & social challenges that await 
                    them in the reality of today’s world
                </li>
                <li>
                    Students must develop to be internationally –minded individuals, 
                    tolerant and respectful of differences, who will recognize their common 
                    humanity and help create a better and more peaceful world.
                </li>
                <li>
                    The school curriculum must be broad-based so as to stimulate the 
                    holistic development of the students (personal, intellectual, emotional, 
                    physical, social, academic and artistic)
                </li>
                <li>
                    The school curriculum must aim to increase understanding of 
                    languages and cultures as well as explore globally significant ideas and issues.
                </li>
                <li>
                    The school’s aim should focus on developing the attitudes and 
                    skills students need for both academic and personal success.
                </li>
                <li>
                    Teaching is inclusive and values diversity; it, therefore has 
                    to aim at creating learning opportunities that enable every student 
                    to develop and pursue appropriate personal goals.
                </li>
            </ul>


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