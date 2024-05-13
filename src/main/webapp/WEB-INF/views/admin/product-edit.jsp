<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="session"/>
  
<form:form action="${contextPath }/admin/cap-nhat-sp" method="POST" modelAttribute="pro"  enctype="multipart/form-data">
<input type="hidden" name="imageold" value="${pro.image}"/>
    <legend>Cập Nhật sản phẩm</legend>
 <form:input type="hidden"  path="id"/>
    <div class="form-group">
        <td>Name</td>
        <form:input type="text" path="name"/>
    </div>
     <div class="form-group">
        <td>Price</td>
        <form:input type="text" path="price"/>
    </div>
     <div class="form-group">
        <td>Image </td>
        <input type="file" name="file"/>
    </div>
     <div class="form-group">
        <td>Description</td>
        <form:textarea type="text" path="description"></form:textarea>
    </div>
    <div class="form-group">
        <td>CategoryId </td>
        <form:select  path="categoryid" items="${categories}" itemValue="id" itemLabel="name"></form:select>
    </div>
    <div class="form-group">
        <td>CreateDate </td>
        <form:input type="date" path="createdate"/>
    </div>
    <div class="form-group">
        <td>Active </td>
        <form:checkbox  path="active"/>
        		còn hàng
    </div>
  
    <button type="submit" class="btn btn-success">Submit</button>
</form:form>
<script>
	CKEDITOR.replace('description')
</script>