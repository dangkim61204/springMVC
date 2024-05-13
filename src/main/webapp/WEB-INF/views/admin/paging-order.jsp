<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<h2>Thông tin đơn hàng</h2>

<hr>
<table style="width: 90vh;"  class="table table-bordered">
	<tr>
	
	<tr style="font-weight: bold;">
	
		<td>Name</td>
		<td>Email</td>
	    <td>Address</td>
	    <td>Phone</td>
	</tr>
	</tr>
	<c:forEach items="${orders}" var="od">
		 <tr>
	
			<td>${od.name}</td>
			<td>${od.email}</td>
			<td>${od.address}</td>
			<td>${od.phone}</td>
			

			<td style="display: flex;">
			
				<!-- <a style="margin-left: 5px;" href="${contextPath }/admin/xoa_don_hang/${od.id}" class="btn btn-danger" onclick="return confirm('Bạn có muốn xoá không')">Xoá</a></th>  -->
		        <a style="margin-left: 5px;" href="${contextPath }/admin/chi-tiet-don-hang/${od.id}" class="btn btn-success" >view</a></td>
		</tr>
		
	</c:forEach>
</table>
