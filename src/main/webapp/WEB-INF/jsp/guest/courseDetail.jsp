<%--
@author: Fahad Shaon
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Course Detail</title>
</head>
<body>

<c:if test="${empty course}">
    <div class="alert alert-error">
        <strong>No Data</strong>Course not found
    </div>
</c:if>
<c:if test="${not empty course}">
    <h3><c:out value="${course.courseNumber} ${course.courseName}"/></h3>

    <table class="table table-bordered table-stripped">
        <tr>
            <th>Semester - Year</th>
            <th>Section</th>
            <th>Instructor</th>
        </tr>
        <c:forEach items="${course.sectionList}" var="s">
            <tr>
                <td><c:out value="${s.semester} ${s.year}"/></td>
                <td><c:out value="${s.sectionNumber}"/></td>
                <td><c:out value="${s.instructor.fullName}"/></td>
            </tr>
        </c:forEach>
    </table>


</c:if>
</body>
</html>