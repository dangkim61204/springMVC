<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<h2>Danh sách tài khoản</h2>

<hr>
<table style="width: 90vh;"  class="table table-bordered">
	<tr>
	
	<tr style="font-weight: bold;">
		<td>Id</td>
		<td>email</td>
		<td>role</td>
	    <td>name</td>
	</tr>
	</tr>
	<c:forEach items="${accounts}" var="ac">
		 <tr>
            <td>${ac.id}</td>
            <td>${ac.email}</td>
           <td>${ac.role}</td>
           <td>${ac.name}</td>

			<th style="display: flex;">
				<a style="margin-left: 5px;" href="${contextPath }/admin/xoa-tk/${ac.id}" class="btn btn-danger" onclick="return confirm('Bạn có muốn xoá không')">Xoá</a></th>
		</tr>
	</c:forEach>
</table>
