<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSTL import -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- import taglib SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Thêm loại sản phẩm</title>
<link rel="stylesheet"
	href="https://getbootstrap.com/docs/5.1/dashboard.css">
<link rel="stylesheet"
	href="https://getbootstrap.com/docs/5.1/dashboard.rtl.css">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/dashboard/">



<!-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->

<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<!-- Bootstrap core CSS -->
<link
	href="https://getbootstrap.com/docs/5.1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="${base }/css/dashboard.css" rel="stylesheet">
</head>
<body>

	<!-- HEADER -->
	<jsp:include page="/WEB-INF/view/quantrivien/layout/header.jsp"></jsp:include>
	<!-- HEADER -->

	<div class="container-fluid">
		<div class="row">
			<!-- NAVIGATION -->
			<jsp:include page="/WEB-INF/view/quantrivien/layout/navigation.jsp"></jsp:include>
			<!-- NAVIGATION -->
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<c:if test="${not empty TB }">
					<div class="alert alert-primary" role="alert">${TB }</div>
				</c:if>
				<sf:form modelAttribute="category" method="post"
					action="${base}/admin/addcategory" class="form-horizontal">
					<fieldset>
						<sf:hidden path="id" />
						<!-- Form Name -->
						<legend>CATEGORY</legend>


						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="name">CATEGORY
								NAME</label>
							<div  style="width: 93.333333% !important;" class="col-md-4">
								<sf:input path="name" id="name" name="name"
									placeholder="CATEGORY NAME" class="form-control input-md"
									type="text" />

							</div>
						</div>



						<!-- Textarea -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="description">CATEGORY
								DESCRIPTION</label>
							<div  style="width: 93.333333% !important;" class="col-md-4 text-des">
								<sf:textarea path="description" class="form-control"
									id="summernote" name="description"></sf:textarea>
							</div>
						</div>

						<script>
							$(document).ready(function() {
								$('#summernote').summernote();
							});
						</script>



						<!-- Button -->
						<div class="form-group">

							<div class="col-md-4">
								<button id="singlebutton" name="singlebutton"
									class="btn btn-primary" type="submit">Thêm loại sản
									phẩm</button>
							</div>
						</div>

					</fieldset>
				</sf:form>
			</main>
		</div>
	</div>


	<script
		src="https://getbootstrap.com/docs/5.1/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>
	<script src="dashboard.js"></script>
	<script src="${base}/js/dashboard.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css"
		rel="stylesheet">
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
</body>
</html>
