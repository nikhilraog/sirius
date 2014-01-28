<%--
@author: Fahad Shaon
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>UTD Sirius - Login</title>
</head>
<body>

<div class="row">
    <div class="span12">

        <!-- Login starts -->

        <div class="logreg">
            <div class="row">
                <div class="span12">
                    <div class="logreg-page">
                        <h3>Sign In to <span class="color">UT Dallas Sirius</span></h3>
                        <hr/>
                        <div class="form">
                            <c:if test="${param.loginError == 'true'}">
                                <div class="alert alert-error">
                                    Login details was not found.
                                </div>
                            </c:if>
                            <!-- Login form (not working)-->
                            <form class="form-horizontal" action="<c:url value='/j_spring_security_check' />"
                                  method="POST">
                                <!-- Username -->
                                <div class="control-group">
                                    <label class="control-label" for="username">Username</label>

                                    <div class="controls">
                                        <input type="text" class="input-large" name="j_username" id="username">
                                    </div>
                                </div>
                                <!-- Password -->
                                <div class="control-group">
                                    <label class="control-label" for="password">Password</label>

                                    <div class="controls">
                                        <input type="password" class="input-large" name="j_password" id="password">
                                    </div>
                                </div>
                                <!-- Buttons -->
                                <div class="form-actions">
                                    <!-- Buttons -->
                                    <input type="submit" class="btn" value="Login"/>
                                    <input type="reset" class="btn" value="Reset"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Login ends -->
    </div>
</div>
</body>
</html>