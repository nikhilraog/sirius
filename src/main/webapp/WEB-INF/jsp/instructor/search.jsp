<%--
@author: Fahad Shaon
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Search Student</title>
</head>
<body>

<div class="row">
    <div class="span3"></div>

    <div class="span6 logreg-page" style="margin-top: 5px;">
        <div style="text-align: center">
            <h3>Search Student</h3>
            <h4><c:out value="${instructor.fullName}"/></h4>
        </div>
        <br/>

        <form id="studentSearchForm" method="get" action="<c:url value="/s/instructor/grade" />" class="form-horizontal">
            <div class="control-group">
                <label class="control-label" for="sectionId">Section</label>

                <div class="controls">
                    <select id="sectionId" name="sectionId">
                        <option value=".">Select a section</option>
                        <c:forEach items="${sectionList}" var="s">
                            <option value="<c:out value="${s.id}" />">
                                <c:out value="${s.semester} ${s.year}"/>
                                <c:out value="${s.course.courseNumber}"/>.<c:out value="${s.sectionNumber}"/>
                                <c:out value="${s.course.courseName}"/>
                            </option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="studentId">Student Id</label>

                <div class="controls">
                    <input class="span3" type="text" id="studentId" name="studentId" placeholder="Student Id">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="firstName">First Name</label>

                <div class="controls">
                    <input class="span3" type="text" id="firstName" name="firstName" placeholder="First Name">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="lastName">Last Name</label>

                <div class="controls">
                    <input class="span3" type="text" id="lastName" name="lastName" placeholder="Last Name">
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn">Search</button>
                </div>
            </div>
        </form>

    </div>
    <div class="span3"></div>
</div>
</body>
</html>