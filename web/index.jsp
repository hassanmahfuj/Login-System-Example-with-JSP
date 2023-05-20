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
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
                    <form action="auth.jsp">
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
                            <button class="btn btn-primary w-100" type="submit">Log in</button>
                        </div>
                    </form>
                    <div class="mt-2 text-center">
                        <a class="text-decoration-none" href="#" id="forgetPassLink">Forgot Password?</a>
                    </div>
                    <hr>
                    <div class="mt-4 text-center">
                        <button class="btn btn-success" onclick="window.location.href='signup.jsp'">Create new account</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="forgetPassModal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5">Forgot Password?</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Sit back, relax and try to remember your loved password!
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            document.getElementById("forgetPassLink").addEventListener("click", function () {
                $('#forgetPassModal').modal('show');
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </body>
</html>
