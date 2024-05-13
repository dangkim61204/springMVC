<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  
  
  
<title>Thêm mới sản phẩm</title>
<style>

.error{color:red;}

</style>
<form:form action="${contextPath}/admin/luu-sp" method="POST" modelAttribute="pro" enctype="multipart/form-data">
    <legend>Thêm mới sản phẩm</legend>

   <table class="table">
  
  <tr>
    <td>Tên sản phẩm</td>
    <td><form:input path="name" /></td>
    <td><form:errors cssClass="error" path="name"></form:errors>
  </tr>
  <tr>
    <td>Giá sản phẩm</td>
    <td><form:input path="price" /></td>
    <td><form:errors cssClass="error" path="price"></form:errors>
  </tr>
  <tr>
    <td>Loại SP</td>
    <td><form:select  path="categoryid" items="${categories}" itemValue="id" itemLabel="name"></form:select> </td>
    <td><form:errors cssClass="error" path="categoryid"></form:errors>
  </tr>
  <tr>
    <td>Mô tả đầy đủ</td>
    <td><form:textarea path="description"></form:textarea></td>
    <td><form:errors cssClass="error" path="description"></form:errors>
  </tr>
  <tr>
    <td>Ảnh</td>
    <td><input type="file" name="file" /></td>
   
  </tr>
  <tr>
    <td>Tình trạng</td>
    <td><form:checkbox path="active" checked="checked" />Còn
      hàng</td>
      <td><form:errors cssClass="error" path="active"></form:errors>
  </tr>
  
    

</table>
 <button type="submit" class="btn btn-success">Submit</button>
</form:form>
<script>
	CKEDITOR.replace('description')
</script>


