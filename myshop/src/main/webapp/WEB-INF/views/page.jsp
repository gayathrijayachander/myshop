<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">

<head>


<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>MYSHOP - ${title}</title>

<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}'
</script>


<!-- Bootstrap Core CSS -->
  <link href="${css}/bootstrap.min.css" rel="stylesheet">  


<!-- Bootstrap Readable Theme -->
 <!-- <link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">  -->


<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">




<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>



<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//cdn.datatables.net/1.10.18/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>   
<%--  <script
	src="//https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap.min.js"></script>   --%>
	
	
<body>

	<div class="wrapper">

		<link rel="stylesheet" type="text/css" href="${css}/myapp.css" />

		<!-- Navigation -->

		<%@ include file="./shared/navbar.jsp"%>


		<!-- Page Content -->

		<div class="content">
			<!-- loading home page contents -->
			<c:if test="${userClickHome == true }">
				<%@ include file="home.jsp"%>
			</c:if>

			<!-- loading when user clicks about -->
			<c:if test="${userClickAbout == true }">
				<%@ include file="/WEB-INF/views/about.jsp"%>
			</c:if>

			<!-- loading when user clicks contact -->
			<c:if test="${userClickContact == true }">
				<%@ include file="contact.jsp"%>
			</c:if>

			<!-- loading when user clicks contact -->
			<c:if
				test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@ include file="listProducts.jsp"%>
			</c:if>

		</div>
		<!-- Footer -->
		<%@ include file="./shared/footer.jsp"%>

		 	<!-- jQuery -->
		<script src="${js}/jquery.js"></script>   



		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>

		<!-- DataTable Plugin -->
		<script src="${js}/jquery.dataTables.js"></script>

		<!-- DataTable Bootstrap Script -->
		<script src="${js}/dataTables.bootstrap.js"></script>

		<!-- Self coded JavaScript -->
		<script src="${js}/myapp.js"></script>

	</div>
</body>

</html>

