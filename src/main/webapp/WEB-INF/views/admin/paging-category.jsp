<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<h2>Danh Mục</h2>
<a href="${contextPath}/admin/them-moi" class="btn btn-success">Thêm mới </a>
<hr>
<table style="width: 90vh;"  class="table table-bordered">
	<tr>
	
	<tr style="font-weight: bold;">
		<td>Id</td>
		<td>Name</td>
		<td>Chức Năng</td>
	</tr>
	</tr>
	<c:forEach items="${categorys}" var="c">
		 <tr>
            <td>${c.id}</td>
            <td>${c.name}</td>
         
            <th>
           		 <a href="${contextPath }/admin/sua/${c.id}" class="btn btn-info">Sửa</a>
           		  <a href="${contextPath }/admin/xoa/${c.id}" class="btn btn-danger" onclick="return confirm('Bạn có muốn xoá không')">Xoá</a>
            </th>
        </tr>
	</c:forEach>
</table>
Trang:
<c:forEach var="i" begin="1" end="${totalpage}">
	<c:choose>
		<c:when test="${i==currentpage}">
			<span> ${i} </span>
		</c:when>
		<c:otherwise>
			<a href="${contextPath}/admin/hien-thi-danh-muc?cateid=${cateid}&pageno=${i}"> ${i} </a>
		</c:otherwise>
	</c:choose>
</c:forEach>