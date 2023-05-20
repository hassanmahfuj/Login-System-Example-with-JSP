<%-- 
    Document   : index
    Created on : May 20, 2023, 11:06:50 AM
    Author     : Hassan Mahfuj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login JSP</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
        <style>
            .bg-color {
                background-color: #f8f9fa;
            }
        </style>
    </head>
    <body class="container bg-color">
        <div class="row vh-100">
            <div class="col-6 d-flex justify-content-center align-items-center">
                <h1>Welcome<br>JSP Login System</h1>
            </div>
            <div class="col-6 d-flex justify-content-center align-items-center">
                <div class="w-75 bg-white p-4 rounded shadow">
                    <form>
                        <div>
                            <label class="col-form-label" for="email">Email</label>
                            <input class="form-control" id="email" name="email" />
                        </div>
                        <div>
                            <label class="col-form-label" for="password">Password</label>
                            <input class="form-control" type="password" id="password" name="password" />
                        </div>
                        <div class="mt-4">
                            <button class="btn btn-primary w-100" type="submit">Log in</button>
                        </div>
                    </form>
                    <div class="mt-2 text-center">
                        <a class="text-decoration-none" href="#" >Forgotten Password?</a>
                    </div>
                    <hr>
                    <div class="mt-4 text-center">
                        <button class="btn btn-success" onclick="window.location.href = 'signup.jsp'">Create new account</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
