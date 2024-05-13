<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
     <c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="session"/>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản phẩm</title>
</head>
<body>
  <h1> Sản Phẩm </h1>
<a href="${contextPath}/admin/them-moi-sp" class="btn btn-success">Thêm mới sản phẩm</a>


    <table style="text-align: center;" class="table table-bordered">
	<tr >
		  <tr style=" font-weight: bold;"  >
           
            <td >Name</td>
            <td>Price</td>
            <td>Image</td>
            <td>Description</td>
            <td>CategoryId</td>
            <td>CreateDate</td>
            <td>Active</td>
            <td>Chức năng</td>
                
      </tr>
	</tr>
	
     
	<c:forEach items="${products}" var="p">
		 <tr>
				
				<td>${p.name}</td>
				<td>${p.price}</td>
				<td><img src="${contextPath}/images/${p.image}" width="100" /></td>
				<td>${p.description}</td>
				<td>${p.category.name}</td>
				<td><f:formatDate value="${p.createdate }" pattern="dd/MM/yyyy"/></td>
				<td><c:choose>
						<c:when test="${p.active==true}">
				   				 còn hàng
				   	    </c:when>
						<c:otherwise>
				   				 hết hàng
				    	</c:otherwise>
					</c:choose>
				</td>


				<th style="display: flex; }">
           		 <a href="${contextPath }/admin/sua-sp/${p.id}" class="btn btn-info">Sửa</a>
           		  <a  style="margin-left: 5px;" href="${contextPath }/admin/xoa-sp/${p.id}" class="btn btn-danger" onclick="return confirm('Bạn có muốn xoá không')">Xoá</a>
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
			<a href="${contextPath }/admin/hien-thi-san-pham?proid=${proid}&pageno=${i}"> ${i} </a>
		</c:otherwise>
	</c:choose>
</c:forEach>

       


</body>
</html>