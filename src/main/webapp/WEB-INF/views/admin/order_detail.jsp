<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<h2>chi tiết đơn hàng</h2>

<hr>
<table style="width: 90vh;"  class="table table-bordered">
	<tr>
	
	<tr style="font-weight: bold;">
		<td>MÃ Sp</td>
		<td>Tên</td>
		<td>Ảnh</td>
		<td>Giá</td>
	    <td>Số lượng</td>
	    
	</tr>
	</tr>
	<c:forEach items="${OrderDetail}" var="od">
		 <tr>
	       	<td>${od.order.id}</td>
			<td>${od.product.name}</td>
			<td><img src="${contextPath}/images/${od.product.image}" width="100" /></td>
			<td>${od.price}</td>
			<td>${od.quantity}</td>
			<c:set var="total" value="${total+od.price*od.quantity}" />

		</tr>
		
	</c:forEach>
	<h3>tổng tiền: ${total}</h3>
</table>
