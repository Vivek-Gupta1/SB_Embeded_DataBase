<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="jakarta.tags.core" %><!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="/">+Add  More Products</a>
<table border=1>
     <thead>
     <tr>
      <th>S.No</th>
      <td>Name</td>
      <td>Price</td>
      <td>Quantity</td>
     </tr>
     </thead>
     <tbody>
  <c:forEach items="${products}" var="product" varStatus="index">
       <tr>
          <td>${index.count}</td>
          <td>${product.name}</td>
          <td>${product.price}</td>  
          <td>${product.quantity}</td>  
      </tr>
    
    </c:forEach>
    

     
     </tbody>
     </table>

</body>
</html>