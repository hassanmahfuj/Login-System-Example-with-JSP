<%-- 
    Document   : home
    Created on : May 20, 2023, 11:56:38 AM
    Author     : Hassan Mahfuj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
        <style>
            .bg-color {
                background-color: #f8f9fa;
            }
        </style>
    </head>
    <body class="container bg-color">
        <div class="row mt-4">
            <div class="col-9">
                <h1>Welcome, ${sessionScope["fullname"]}</h1>
            </div>
            <div class="col-3">
                <div>
                    <button class="btn btn-danger w-100">Logout</button>
                </div>
            </div>
        </div>
    </body>
</html>
