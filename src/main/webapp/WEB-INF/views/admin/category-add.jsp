<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
         
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm mới</title>
</head>
<body> 	
<form:form action="${contextPath}/admin/luu" method="POST" modelAttribute="cate">
    <legend>Thêm mới</legend>
  
 <table class="">
    <tr>
    <td>Tên danh mục: </td>
    <td><form:input path="name"  required="required"/></td>
  </tr>
   </table>
  
    <button type="submit" class="btn btn-success">Submit</button>
</form:form>



</body>
</html>
