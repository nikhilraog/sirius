<%--
@author: Fahad Shaon
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>

<h3>Registered Courses</h3>
<br/>
<table class="table table-bordered table-stripped">
    <tr>
        <th>Semester - Year</th>
        <th>Course</th>
        <th>Numeric Grade</th>
        <th>Letter Grade</th>
    </tr>

<c:forEach items="${registered}" var="r">
    <tr>
        <td><c:out value="${r.section.semester} ${r.section.year}"/></td>
        <td><c:out value="${r.section.course.courseName}" /></td>
        <td><c:out value="${r.numericGrade}" /></td>
        <td><c:out value="${r.letterGrade}" /></td>
    </tr>
</c:forEach>


</table>

</body>
</html>