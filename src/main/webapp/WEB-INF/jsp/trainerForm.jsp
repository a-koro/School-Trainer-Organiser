<%-- 
    Document   : trainerForm
    Created on : 22-Jun-2020, 09:46:08
    Author     : korov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
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

        <link rel="stylesheet" href="/css/style.css">
        <title>Legacy Private School</title>
    </head>
    <body>
        <div class="container">
            
            <%@include file="navbar.jsp" %>
<!--             NAVBAR 
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
                         At the next line I accidentaly added a dash between item and dropdown and the drop down list appeared to the left 
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
            </nav>-->

            <div class="row">
                <div class="col mt-5">
                    <h3 class="text-center">
                        Add new Trainer
                    </h3>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-8 offset-lg-4 offset-md-3 offset-sm-2 my-2 py-2 bg-light">
                <springForm:form action="doInsertTrainer" method="post" modelAttribute="formTrainer">
                    <div class="form-group">
                        <label>First Name</label>
                        <springForm:input path="firstName" cssClass="form-control" pattern="[A-Za-z ]{2,}" title="Invalid first name" maxlength="40" required="required"/>
                        <springForm:errors path="firstName" cssClass="error"/>
                    </div>
                    <div class="form-group">
                        <label>Last Name</label>
                        <springForm:input path="lastName" cssClass="form-control" pattern="[A-Za-z ]{2,}" title="Invalid last name" maxlength="40" required="required"/>
                        <springForm:errors path="lastName" cssClass="error"/>
                    </div>
                    <div class="form-group">
                        <label>Subject</label>
                        <springForm:input path="subject" cssClass="form-control" title="Invalid subject" minlength="2" maxlength="40" required="required"/>
                        <springForm:errors path="subject" cssClass="error"/>
                    </div>
                    <div class="form-group">
                        <label>e-mail</label>
                        <springForm:input path="email" cssClass="form-control" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Invalid e-mail address" maxlength="40" required="required"/>
                        <springForm:errors path="email" cssClass="error"/>
                    </div>
                    <button class="btn btn-primary bg-dark color-light border-light" type="submit">Add</button>
                </springForm:form>
            </div>
        </div>

        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
