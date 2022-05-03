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
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Dashboard Template · Bootstrap v5.1</title>
    <link rel="stylesheet" href="https://getbootstrap.com/docs/5.1/dashboard.css">
    <link rel="stylesheet" href="https://getbootstrap.com/docs/5.1/dashboard.rtl.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/dashboard/">
	
	
<!-- 	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
	
<%--     <link href="${base}/css/simplePagination.css" rel="stylesheet" / --%>
	<link type="text/css" rel="stylesheet" href="${base}/css/simplePagination.css"/>

    <!-- Bootstrap core CSS -->
<link href="https://getbootstrap.com/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
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
     
         <div class="container-fluid">
                    
                    <form class="form-inline" action="${base }/admin/contact/list" method="get">
						<div class="d-flex flex-row justify-content-between mt-4">
							<div class="d-flex flex-row">
								<input type="hidden" id="page" name="page" class="form-control">
								<input type="text" id="keyword" name="keyword" class="form-control" placeholder="Search" value="${searchModel.keyword }" style="margin-right: 5px;"> 
								<select class="form-control" name="contactId" id="contactId" style="margin-right: 5px;">
									<c:forEach items="${contactSQL}" var="contactModel">
										<option value="${contactModel.id }">${contactModel.id }</option>
									</c:forEach>
								</select>
								<button type="submit" id="btnSearch" name="btnSearch" value="Search"  class="btn btn-primary">Seach</button>
							</div>
							<%-- <div>
								<a class="btn btn-outline-primary mb-1" href="${base }/addproduct/" role="button">Add New</a>
							</div> --%>
						</div>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Customer Name</th>
									<th scope="col">Email</th>
									<th scope="col">Message</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${contactSQL}" var="contactModel" varStatus="loop">
									<tr>
										<th scope="row">${loop.index + 1}</th>
										<td>${contactModel.customerName }</td>
										<td>${contactModel.email }</td>
										<td>${contactModel.message }</td>
										<%-- <td>
											<fmt:setLocale value="vi_VN" scope="session" />
											<fmt:formatNumber value="${product.price }" type="currency" />
										</td> --%>
										<%-- <td>${product.categories.name }</td> --%>
										<%-- <td>
											<span id="_product_status_${contactModel.id} }">
												<c:choose>
													<c:when test="${product.status }">
														<input type="checkbox" checked="checked" readonly="readonly">
													</c:when>
													<c:otherwise>
														<input type="checkbox" readonly="readonly">
													</c:otherwise>
												</c:choose>
											</span>
										</td> --%>
										<%-- <td>
											<img src="${base }/upload/${product.avatar}" width="100" height="100">
										</td> --%>
										<td>		
											<button class="btn btn-danger" role="button" onclick="DeleteContact(${contactModel.id})">Delete</button>
										</td>
									</tr>
								</c:forEach>
				
							</tbody>
							
					
						</table>
						<!-- Paging -->
						<div class="row">
							<div class="col-12 d-flex justify-content-center">
								<div id="paging"></div>
							</div>
						</div>
						
					</form>
                    
                </div>
               </main>
            </div>
  	  
  </div>


	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	 <script type="text/javascript" src="${base}/js/jquery.simplePagination.js"></script>
	<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script> -->
	<script src="${base}/js/dashboard.js"></script>
   
    <script src="https://getbootstrap.com/docs/5.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
   
    
    
    <script type="text/javascript">
		
			$( document ).ready(function() {
				
				$("#paging").pagination({
					currentPage: ${contactWithPaging.currentPage},
			        items: ${contactWithPaging.totalItems},
			        itemsOnPage: 5,
			        cssStyle: 'light-theme',
			        onPageClick: function(pageNumber, event) {
			        	$('#page').val(pageNumber);
			        	$('#btnSearch').trigger('click');
					},
			    });
			});
			
		</script> 
  </body>
</html>