<%-- 
    Document   : signup
    Created on : May 20, 2023, 11:46:48 AM
    Author     : Hassan Mahfuj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
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
                    <form action="create.jsp">
                        <div>
                            <label class="col-form-label" for="fullname">Full Name</label>
                            <input class="form-control ${empty param.errmsg ? '' : 'is-invalid'}" id="fullname" name="fullname" />
                        </div>
                        <div>
                            <label class="col-form-label" for="email">Email</label>
                            <input class="form-control ${empty param.errmsg ? '' : 'is-invalid'}" id="email" name="email" />
                        </div>
                        <div>
                            <label class="col-form-label" for="password">Password</label>
                            <input class="form-control ${empty param.errmsg ? '' : 'is-invalid'}" type="password" id="password" name="password" />
                        </div>
                        <div class="mt-2">${param.errmsg}</div>
                        <div class="mt-4">
                            <button class="btn btn-success w-100" type="submit">Create account</button>
                        </div>
                    </form>
                    <div class="mt-2 text-center">
                        Have an account already? <a class="text-decoration-none" href="index.jsp" >Log in</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
