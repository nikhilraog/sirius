<%--
@author: Fahad Shaon
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <style type="text/css">
        select {
            width: 50px;
            margin-bottom: 0px;
            padding-bottom: 0px;
            height: auto !important;
        }
    </style>
</head>
<body>
<c:if test="${not empty errorMessage}">
    <div class="alert alert-error">
        <strong>Warning!</strong> <c:out value="${errorMessage}"/>
    </div>
</c:if>

<c:if test="${not empty flashMessage}">
    <div class="alert alert-info">
        <c:out value="${flashMessage}"/>
    </div>
</c:if>

<c:if test="${empty errorMessage}">

    <h3><c:out value="${instructor.fullName}"/></h3>
    <h4>
        <c:out value="${section.semester} ${section.year}"/>
        <c:out value="${section.course.courseNumber}"/>.<c:out value="${section.sectionNumber}"/>
        <c:out value="${section.course.courseName}"/>
    </h4>
    <br/>

    <c:if test="${empty registeredStudentList}">
        <div class="alert alert-info">
            <strong>Empty!</strong> No data found with provided criteria
        </div>
    </c:if>
    <c:if test="${not empty registeredStudentList}">

        <form method="post" action="<c:url value="/s/instructor/grade" />">

            <table class="table table-bordered table-stripped">
                <tr>
                    <th>Student Id</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Grade</th>
                </tr>

                <c:forEach items="${registeredStudentList}" var="r">
                    <tr>
                        <td><c:out value="${r.student.id}"/></td>
                        <td><c:out value="${r.student.firstName}"/></td>
                        <td><c:out value="${r.student.lastName}"/></td>
                        <td class="span1">
                            <c:set var="selectId" value="r-${section.id}-${r.student.id}"/>

                            <select name="<c:out value="${selectId}" />">

                                <option <c:if test="${empty r.numericGrade}"> selected="true"</c:if> value="."></option>
                                <option <c:if test="${r.numericGrade eq 4}"> selected="true"</c:if> value="4">A</option>
                                <option <c:if test="${r.numericGrade eq 3}"> selected="true"</c:if> value="3">B</option>
                                <option <c:if test="${r.numericGrade eq 2}"> selected="true"</c:if> value="2">C</option>
                                <option <c:if test="${r.numericGrade eq 1}"> selected="true"</c:if> value="1">D</option>
                                <option <c:if test="${r.numericGrade eq 0}"> selected="true"</c:if> value="0">F</option>
                            </select>
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <input type="submit" class="btn btn-success pull-right" value="Save Grade"/>
            <input type="hidden" name="sectionId" value="<c:out value="${section.id}" />"/>
        </form>
    </c:if>
</c:if>

</body>
</html>