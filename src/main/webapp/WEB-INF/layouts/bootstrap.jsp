<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <!-- Title -->
    <title><decorator:title default="UTD Sirius"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Description, Keywords -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">

    <!-- Google web fonts -->
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic' rel='stylesheet' type='text/css'>

    <!-- Stylesheets -->
    <link href="<c:url value="/style/bootstrap.css"/>" rel="stylesheet">
    <link href="<c:url value="/style/flexslider.css"/>" rel="stylesheet">
    <link href="<c:url value="/style/prettyPhoto.css"/>" rel="stylesheet">
    <link href="<c:url value="/style/font-awesome.css"/>" rel="stylesheet">
    <!--[if IE 7]>
    <link href="<c:url value="/style/font-awesome-ie7.css"/>" rel="stylesheet">
    <![endif]-->
    <link href="<c:url value="/style/style.css"/>" rel="stylesheet">
    <!-- Color Stylesheet - orange, blue, pink, brown, red or green-->
    <link href="<c:url value="/style/orange.css"/>" rel="stylesheet">
    <link href="<c:url value="/style/bootstrap-responsive.css"/>" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<c:url value="/res/utd-sirius.css"/>" rel="stylesheet">

    <!-- HTML5 Support for IE -->
    <!--[if lt IE 9]>
    <script src="<c:url value="/js/html5shim.js"/>"></script>
    <![endif]-->

    <!-- Favicon -->
    <%--<link rel="shortcut icon" href="<c:url value="/img/favicon/favicon.png"/>">--%>
    <decorator:head/>
</head>

<body>

<!-- Header starts -->

<header>
    <div class="container">
        <div class="row">
            <div class="span4">
                <!-- Logo and site link -->
                <div class="logo">

                    <h1><a alt="UT Dallas Logo" href="<c:url value="/" />"><img style="vertical-align: text-bottom;" src="<c:url value="/res/utd-logo.png" />" /> Sirius</a></h1>
                </div>
            </div>
            <div class="span4 offset4">
                <div class="list">
                    <security:authorize access="isAuthenticated()">
                        Welcome <strong><security:authentication property="principal.username"/></strong>
                        | <a href="<c:url value="/logout" />">Logout</a>
                    </security:authorize>

                    <security:authorize access="! isAuthenticated()">
                        You are not logged in | <a href="<c:url value="/s/home/login" />">Login</a>
                    </security:authorize>

                </div>
            </div>
        </div>
    </div>
</header>
<!-- Header ends -->

<!-- Navigation Starts -->
<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                Menu
            </a>

            <div class="nav-collapse">
                <!-- Navigation links starts here -->
                <ul class="nav">
                    <!-- Main menu -->

                    <security:authorize access="! isAuthenticated()">
                        <li><a href="<c:url value="/s/home"/>">Home</a></li>
                        <li><a href="<c:url value="/s/course"/>">Courses</a></li>
                        <li><a href="<c:url value="/s/home/login"/>">Login</a></li>
                    </security:authorize>

                    <security:authorize access="hasRole('STUDENT')">
                        <li><a href="<c:url value="/s/student/profile"/>">Profile</a></li>
                        <li><a href="<c:url value="/s/student/course"/>">Courses</a></li>
                        <li><a href="<c:url value="/logout"/>">Logout</a></li>
                    </security:authorize>

                    <security:authorize access="hasRole('INSTRUCTOR')">
                        <li><a href="<c:url value="/s/instructor/course"/>">Courses</a></li>
                        <li><a href="<c:url value="/s/instructor/search"/>">Search</a></li>
                        <li><a href="<c:url value="/logout"/>">Logout</a></li>
                    </security:authorize>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Navigation Ends -->

<!-- Content strats -->

<div class="content">
    <div class="container">
        <decorator:body/>
    </div>
</div>

<!-- Content ends -->

<%--<!-- Footer -->--%>
<footer>
    <div class="container">
        <div class="row">
            <div class="span12">
                <p class="copy text-center">
                    Copyright &copy; <a href="http://www.utdallas.edu/">UT Dallas</a>
                    | Designed by <a href="http://www.shaon.org">Fahad Shaon</a></p>
            </div>
        </div>
    </div>
</footer>

<!-- JS -->
<script src="<c:url value="/js/jquery.js"/>"></script>
<script src="<c:url value="/js/bootstrap.js"/>"></script>
<script src="<c:url value="/js/jquery.flexslider-min.js"/>"></script>
<script src="<c:url value="/js/jquery.isotope.js"/>"></script>
<script src="<c:url value="/js/jquery.prettyPhoto.js"/>"></script>
<script src="<c:url value="/js/filter.js"/>"></script>
<script src="<c:url value="/js/jquery.tweet.js"/>"></script>
<script src="<c:url value="/js/custom.js"/>"></script>
<script type="text/javascript">
    $(function() {
        $('#studentSearchForm').live('submit', function() {
            if( $('#sectionId').val() == ".") {
                alert("Please select a section!");
                return false;
            }
        })
    })
</script>

</body>
</html>