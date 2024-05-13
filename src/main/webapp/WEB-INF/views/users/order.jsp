<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<form action=""> 
<label>name</label>
<input type="text" name="name" />
</form>

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