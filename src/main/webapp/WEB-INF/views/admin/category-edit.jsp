<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="session"/>
  
<form:form action="${contextPath }/admin/cap-nhat" method="POST" modelAttribute="cate">
    <legend>Cập Nhật</legend>
 <form:input type="hidden"  path="id"/>
    <div class="form-group">
        <td>Tên danh Mục</td>
        <form:input type="text" path="name"/>
    </div>
  
    <button type="submit" class="btn btn-success">Submit</button>
</form:form>