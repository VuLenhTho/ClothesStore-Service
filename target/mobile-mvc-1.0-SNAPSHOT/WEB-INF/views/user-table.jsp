<%@include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Mobile</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/template/assets/images/favicon.png"/>">
    <!-- wysihtml5 -->
    <link rel="stylesheet" href="<c:url value="/template/assets/plugins/wysihtml5/css/bootstrap-wysihtml5.css"/>">
    <!-- Custom Stylesheet -->
    <link href="<c:url value="/template/css/style.css"/>" rel="stylesheet">
    <script src="<c:url value="/template/js/modernizr-3.6.0.min.js"/>"></script>
</head>
<body class="v-light vertical-nav fix-header fix-sidebar">
<div id="preloader">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10"/>
        </svg>
    </div>
</div>
<div id="main-wrapper">
    <%@include file="/common/admin/header.jsp" %>
    <%@include file="/common/admin/menu.jsp" %>
    <div class="content-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <a href="/newUser">
                            <button type="button" class="btn btn-rounded btn-info"><span class="btn-icon-left"><i
                                    class="fa fa-plus color-info"></i> </span>Add
                            </button>
                        </a>
                        <br>
                        <br>
                        <h4 class="card-title">Table User</h4>
                        <div class="table-responsive">
                            <table class="table muted-table-bordered">
                                <thead class="thead-muted">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">User Name</th>
                                    <th scope="col">Full Name</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${users}" var="user">
                                    <tr>
                                        <th>${user.id}</th>
                                        <td>${user.userName}</td>
                                        <td>${user.fullName}</td>
                                        <td>${user.phone}</td>
                                        <td>${user.email}</td>
                                        <td>
                                            <a href="/user/${user.id}"><i class="icon-pencil"></i></a>
                                            <a href="/users"><i class="icon-trash"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="/common/admin/footer.jsp" %>
</div>


<!-- Common JS -->
<script src="<c:url value="/template/assets/plugins/common/common.min.js"/>"></script>
<!-- Custom script -->
<script src="<c:url value="/template/js/custom.min.js"/>"></script>
<script src="<c:url value="/template/assets/plugins/wysihtml5/js/wysihtml5-0.3.0.js"/>"></script>
<script src="<c:url value="/template/assets/plugins/wysihtml5/js/bootstrap-wysihtml5.js"/>"></script>
<script src="<c:url value="/template/assets/plugins/wysihtml5/js/wysihtml5-init.js"/>"></script>
</body>
</html>