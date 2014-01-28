<%--
@author: Fahad Shaon
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Instructor Courses</title>
</head>
<body>
<h4><c:out value="${instructor.fullName}"/></h4>
<br/>

<table class="table table-bordered table-stripped">
    <tr>
        <th>Semester - Year</th>
        <th>Course Number</th>
        <th>Section</th>
        <th>Course</th>
        <th>Students</th>
    </tr>
    <c:forEach items="${sectionList}" var="s">
        <c:url value="/s/instructor/grade" var="url">
            <c:param name="sectionId" value="${s.id}"/>
        </c:url>

        <tr>
            <td><a href="<c:out value="${url}" />"><c:out value="${s.semester} ${s.year}"/></a></td>
            <td><a href="<c:out value="${url}" />"><c:out value="${s.course.courseNumber}"/></a></td>
            <td><a href="<c:out value="${url}" />"><c:out value="${s.sectionNumber}"/></a></td>
            <td><a href="<c:out value="${url}" />"><c:out value="${s.course.courseName}"/></a></td>
            <td><c:out value="${s.studentCount}"/></td>
        </tr>
    </c:forEach>
</table>


</body>
</html>