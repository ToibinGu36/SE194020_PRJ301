<%-- 
    Document   : index
    Created on : Jan 5, 2026, 11:19:45 AM
    Author     : Dang Khoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FPTU Form</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body { background-color: #f4f4f4; font-family: sans-serif; }
            .container { margin-top: 40px; }
            .card-header { background-color: #f58220; color: white; }
            .btn-fpt { border: 1px solid #ced4da; background: #fff; margin-right: 5px; }
            .btn-fpt:hover { background: #f8f9fa; }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow-sm">
                        <div class="card-header text-center py-3">
                            <h4 class="mb-0">HTML Forms</h4>
                        </div>
                        <div class="card-body p-4">
                            <form action="MainController" method="POST">
                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label">Textbox</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="txtTextbox" class="form-control form-control-sm">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label">Password</label>
                                    <div class="col-sm-9">
                                        <input type="password" name="txtPassword" class="form-control form-control-sm">
                                    </div>
                                </div>
                                <input type="hidden" name="hiddenField" value="FPTU">
                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label">Male</label>
                                    <div class="col-sm-9">
                                        <input type="checkbox" name="chkMale" class="form-check-input" checked>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label">Status</label>
                                    <div class="col-sm-9">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="status" value="Single" checked>
                                            <label class="form-check-label">Single</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="status" value="Married">
                                            <label class="form-check-label">Married</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="status" value="Divorced">
                                            <label class="form-check-label">Divorced</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label">ComboBox</label>
                                    <div class="col-sm-9">
                                        <select name="cboCourse" class="form-select form-select-sm">
                                            <option>JSP and Servlet</option>
                                            <option>EJB</option>
                                            <option>Core Java</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label">Multiple</label>
                                    <div class="col-sm-9">
                                        <select name="listCourses" class="form-select form-select-sm" multiple size="3">
                                            <option selected>JSP and Servlet</option>
                                            <option>EJB</option>
                                            <option>Core Java</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label">TextArea</label>
                                    <div class="col-sm-9">
                                        <textarea name="txtArea" class="form-control form-control-sm" rows="3">This is a form parameters demo!!!!</textarea>
                                    </div>
                                </div>
                                <div class="mt-4">
                                    <button type="submit" name="btAction" value="Submit" class="btn btn-fpt shadow-sm">Submit Query</button>
                                    <button type="button" class="btn btn-fpt shadow-sm">Register</button>
                                    <button type="reset" class="btn btn-fpt shadow-sm">Reset</button>
                                    <button type="button" class="btn btn-fpt shadow-sm">JavaScript</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
