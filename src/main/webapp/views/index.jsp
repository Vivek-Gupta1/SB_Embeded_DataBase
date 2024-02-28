<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="views/text.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Product Table</h2>
<p color="green">${msg}</p>
<form:form action="products" modelAttribute="pr" method="POST">
<div>
<table >
        <tr >
        <td>Name:</td>
        <td><form:input path="name"/></td>
        </tr>
        
        <tr >
        <td>Price:</td>
        <td><form:input path="price"/></td>
        </tr>
        
        <tr >
        <td>Quantity:</td>
        <td><form:input path="quantity"/></td>
        </tr>
        
        <tr>
        <td> <input type="submit" value="save"></td>
        </tr>

</table>
</div>
</form:form>
<div1>
<a href="record">View Record</a>
</div1> 


</body>
</html>