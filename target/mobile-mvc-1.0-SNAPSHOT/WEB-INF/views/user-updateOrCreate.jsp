<%@include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <c:if test="${user == null}">
        <title>Add new account</title>
    </c:if>
    <title>Update account</title>
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
        <div class="container">
            <div class="row page-titles">
                <div class="col p-0">
                    <h4>Hello, <span>Welcome here</span></h4>
                </div>
                <div class="col p-0">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">From</a>
                        </li>
                        <li class="breadcrumb-item active">Validation</li>
                    </ol>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-validation">


                                <form id="formUpdateOrCreate">
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label" for="val-username">Username <span
                                                class="text-danger">*</span>
                                        </label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="val-username" name="userName"
                                                   placeholder="Enter a username.." value="${user.userName}">
                                        </div>
                                    </div>
                                    <c:if test="${user == null}">
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">Password <span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="password" class="form-control" id="val-Password1"
                                                       name="password" placeholder="Enter a Password..">
                                            </div>
                                        </div>
                                    </c:if>

                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label" for="val-username">Full Name <span
                                                class="text-danger">*</span>
                                        </label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="val-password" name="fullName"
                                                   placeholder="Enter a Full Name.." value="${user.fullName}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label" for="val-username">Email <span
                                                class="text-danger">*</span>
                                        </label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="val-email" name="email"
                                                   placeholder="Enter a Email.." value="${user.email}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label" for="val-username">Phone <span
                                                class="text-danger">*</span>
                                        </label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="val-phone" name="phone"
                                                   placeholder="Enter a Phone.." value="${user.phone}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label" for="val-username">Sex <span
                                                class="text-danger">*</span>
                                        </label>
                                        <div class="col-lg-6">
                                            <select class="form-control" id="sex" name="sex">
                                                <option value="true" selected="selected"> Nam</option>
                                                <option value="false"> Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label" for="val-username">Role<span
                                                class="text-danger">*</span>
                                        </label>

                                    </div>
                                    <c:set value="${true}" var="show"/>
                                    <c:forEach items="${roles}" var="role">
                                        <c:if test="${user == null}">
                                            <p>
                                                <label>
                                                    <input type="checkbox" class="check-box" name="ids"
                                                           value="${role.id}">
                                                </label> ${role.name}
                                            </p>
                                        </c:if>

                                        <c:if test="${user != null}">
                                            <c:forEach items="${user.roles}" var="userRole">
                                                <c:if test="${role.id == userRole.id}">
                                                    <p>
                                                        <label>
                                                            <input type="checkbox" class="check-box" name="ids"
                                                                   checked="checked" value="${role.id}">
                                                        </label> ${role.name}
                                                    </p>
                                                    <c:set value="${false}" var="show"/>
                                                </c:if>
                                            </c:forEach>

                                            <c:if test="${show}">
                                                <p>
                                                    <label>
                                                        <input type="checkbox" class="check-box" name="ids"
                                                               value="${role.id}">
                                                    </label> ${role.name}
                                                </p>
                                            </c:if>

                                            <c:set value="${true}" var="show"/>
                                        </c:if>

                                    </c:forEach>

                                    <div class="form-group">

                                        <input type="hidden" class="form-control" id="id" name="id" value="${user.id}"/>

                                    </div>

                                    <div class="form-group row">
                                        <div class="col-lg-8 ml-auto">
                                            <button type="submit" class="btn btn-primary" id="btnAddOrUpdate">Submit
                                            </button>

                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #/ container -->
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


<script>
    $('#btnAddOrUpdate').click(function (e) {
        e.preventDefault();
        var data = {};
        var RoleIds = [];
        var formData = $('#formUpdateOrCreate').serializeArray();

        $.each(formData, function (i, v) {
            if (("" + v.name + "") === "ids") {
                var roleId = parseInt(v.value, 10);
                RoleIds.push(roleId);
            }
            data["" + v.name + ""] = v.value;
        });
        data["ids"] = RoleIds;

        var id = $('#id').val();
        if (id === '') {
            addAccount(data);
        } else {
            updateAccount(data);
        }

    });

    function addAccount(data) {
        $.ajax({
            url: ('http://localhost:8888/user'),
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'text',
            success: function () {
                alert('Add new success');
            },
            error: function () {
                alert('add new failure');
            }
        });
    }

    function updateAccount(data) {
        $.ajax({
            url: ('http://localhost:8888/user/${user.id}'),
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'text',
            success: function () {
                alert('Update successful');
            },
            error: function () {
                alert('update failed');
            }
        });
    }
</script>
</body>
</html>