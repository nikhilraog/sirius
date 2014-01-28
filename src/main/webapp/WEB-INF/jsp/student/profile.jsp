<%--
@author: Fahad Shaon
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Student Profile</title>
</head>
<body>

<h3><c:out value="${student.lastName}, ${student.firstName} ${student.middleName}"/></h3>

<div class="row">
    <div class="span9">
        <table class="table table-hover table-bordered">
            <tr>
                <td>Student Id</td>
                <td><c:out value="${student.id}"/></td>
            </tr>
            <tr>
                <td>Username</td>
                <td><c:out value="${student.utdUser.username}"/></td>
            </tr>
            <tr>
                <td>First Name</td>
                <td><c:out value="${student.firstName}"/></td>
            </tr>
            <tr>
                <td>Middle Name</td>
                <td><c:out value="${student.middleName}"/></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><c:out value="${student.lastName}"/></td>
            </tr>
            <tr>
                <td>Date of Birth</td>
                <td><c:out value="${student.dateOfBirth}"/></td>
            </tr>
            <tr>
                <td>Sex</td>
                <td><c:out value="${student.sex}"/></td>
            </tr>
            <tr>
                <td>Current Address</td>
                <td><c:out value="${student.currentAddress.street}, ${student.currentAddress.city},
                ${student.currentAddress.state} - ${student.currentAddress.zip}"/></td>
            </tr>
            <tr>
                <td>Current Phone</td>
                <td><c:out value="${student.currentPhone}"/></td>
            </tr>
            <tr>
                <td>Permanent Address</td>
                <td><c:out value="${student.permanentAddress.street}, ${student.permanentAddress.city},
                ${student.permanentAddress.state} - ${student.permanentAddress.zip}"/></td>
            </tr>
            <tr>
                <td>Permanent Phone</td>
                <td><c:out value="${student.permanentPhone}"/></td>
            </tr>
            <tr>
                <td>Degree</td>
                <td><c:out value="${student.degree}"/></td>
            </tr>
            <tr>
                <td>Class</td>
                <td><c:out value="${student.studentClass}"/></td>
            </tr>
            <tr>
                <td>Major Department</td>
                <td><c:out value="${student.majorDepartment.departmentName}"/></td>
            </tr>
            <tr>
                <td>Minor Department</td>
                <td><c:out value="${student.minorDepartment.departmentName}"/></td>
            </tr>
        </table>

    </div>
</div>


</body>
</html>