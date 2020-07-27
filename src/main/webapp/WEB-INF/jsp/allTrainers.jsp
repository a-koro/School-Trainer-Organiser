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

            <div class="row justify-content-end">
                <div class="col">
                    <a href="/preInsertTrainer" class="btn btn-dark my-3">Add Trainer</a>
                </div>
            </div>

            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col" class="d-none d-sm-table-cell">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col" class="d-none d-md-table-cell">Subject</th>
                        <th scope="col" class="d-none d-md-table-cell">e-mail</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${allTrainers}" var="trainer">
                        <tr>
                            <th scope="row" class="d-none d-sm-table-cell">${trainer.trainerId}</th>
                            <td>${trainer.firstName}</td>
                            <td>${trainer.lastName}</td>
                            <td class="d-none d-md-table-cell">${trainer.subject}</td>
                            <td class="d-none d-md-table-cell">${trainer.email}</td>
                            <td><a href="/editTrainer/${trainer.trainerId}" class="btn btn-primary"><i class="fas fa-edit"></i></a></td>
                            <td><a href="deleteTrainer/${trainer.trainerId}" class="btn btn-primary"><i class="fas fa-trash-alt"></i></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>


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