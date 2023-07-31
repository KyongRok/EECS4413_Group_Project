<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Categories</title>
</head>
<body>
    <h1>Categories</h1>
    <ul>
        <c:forEach var="category" items="${categories}">
            <li>${category.categoryName}</li>
        </c:forEach>
    </ul>
</body>
</html>
