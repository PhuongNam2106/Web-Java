<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Phương Nam Sport</title>
<jsp:include page="/WEB-INF/view/khachhang/layout/css.jsp"></jsp:include>
<link type="text/css" rel="stylesheet"
	href="path_to/simplePagination.css" />
	<link rel="stylesheet" href="${base}/css/cart.css">
</head>
<body>
	<!-- Common -->
	<jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>;
	<div style="width: 0%; margin-left: -15px;" class="container-fluid">
		<!-- Header -->
		<jsp:include page="/WEB-INF/view/khachhang/layout/header.jsp"></jsp:include>

		<!-- Navigation -->
		<jsp:include page="/WEB-INF/view/khachhang/layout/navigation.jsp"></jsp:include>
	</div>



	</div>

	<div style="max-width: 1920px; margin-top: 200px;" class="container">
	<form action="${base }/cart/checkout" method="post">
		<div style="margin-left: 300px;" class="card">
			<div  class="row">
				<div class="col-md-8 cart">
					<div class="title">
						<div class="row">
							<div class="col">
								<h4>
									<b>Shopping Cart</b>
								</h4>
							</div>
							<div class="col align-self-center text-right text-muted">3
								items</div>
						</div>
					</div>
					<c:forEach items="${cart.cartItems }" var="ci">
						<div class="row border-top border-bottom">
							<div class="row main align-items-center">
								<div class="col-2">
									<img class="img-fluid" src="${base }/upload/${ci.productAvatar}">
								</div>
								<div class="col">
									<div class="row text-muted">${ci.productName }</div>
									<div class="row">Cotton T-shirt</div>
								</div>
								<div class="col">
									<a style="cursor: pointer " href="${base }/cart/view" onclick="minusQuanlityCart('${base }', ${ci.productId})"  >-</a>
									<span id="quanlity_${ci.productId}"  class="border" >${ci.quanlity }</span>
									<a style="cursor: pointer " href="${base }/cart/view" onclick="plusQuanlityCart('${base }', ${ci.productId})"  >+</a>
								</div>
								
								
								
								 <c:if test="${not empty TB }">
       								<div style="color: red" role="alert">
        									${TB }
      								 </div>
      							</c:if>
								<div class="col">
									<fmt:setLocale value="vi_VN" scope="session" />
									<fmt:formatNumber value="${ci.priceUnit }" type="currency" />
									<!-- &euro; 44.00 <span class="close">&#10005;</span> -->
								</div>
								<div class="col">
									<a style="margin-top: 0px" type="button" href="${base}/cart/delete/${ci.productId}" class="btn btn-danger" >Xóa</a>
								</div>
							</div>
						</div>
					</c:forEach>
				
					<div
							class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Customer
							Info</div>
					<c:if test="${!isLogined }">
						<div class="p-4">
							<div class="form-group">
								<label for="customerPhone">Customer full name</label>
								<input type="tel" class="form-control" id="customerFullName" name="customerFullName" placeholder="Full name">
							</div>
							<div class="form-group">
								<label for="customerEmail">Email address</label>
								<input type="email" class="form-control" id="customerEmail" name="customerEmail" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="customerPhone">Phone</label>
								<input type="tel" class="form-control" id="customerPhone" name="customerPhone" placeholder="Phone">
							</div>
							<div class="form-group">
								<label for="customerAddress">Address</label>
								<input type="text" class="form-control" id="customerAddress" name="customerAddress" placeholder="Address">
							</div>
						</div>
						</c:if>
						
						<c:if test="${isLogined }">
						<div class="p-4">
							<div class="form-group">
								<label for="customerPhone">Customer full name</label>
								<input type="tel" class="form-control" id="customerFullName" name="customerFullName" value="${userLogined.customerName }" >
							</div>
							<div class="form-group">
								<label for="customerEmail">Email address</label>
								<input type="email" class="form-control" id="customerEmail" name="customerEmail" value="${userLogined.email }" >
								<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="customerPhone">Phone</label>
								<input type="tel" class="form-control" id="customerPhone" name="customerPhone"value="${userLogined.phone }" >
							</div>
							<div class="form-group">
								<label for="customerAddress">Address</label>
								<input type="text" class="form-control" id="customerAddress" name="customerAddress" value="${userLogined.address }">
							</div>
						</div>
						</c:if>
						<!-- <button type="submit" class="btn">CHECKOUT</button> -->
					
					<div class="back-to-shop">
						<a href="${base}/home">&leftarrow;</a><span class="text-muted">Back to
							shop</span>
					</div>
				</div>
				<div class="col-md-4 summary">
					<div>
						<h5>
							<b>Summary</b>
						</h5>
					</div>
					<hr>
					<div class="row">
						<div class="col" style="padding-left: 0;">ITEMS ${totalItems}</div>
						
					</div>
					<form>
						<p>SHIPPING</p>
						<select>
							<option class="text-muted">Standard-Delivery- &euro;5.00</option>
						</select>
						<p>GIVE CODE</p>
						<input id="code" placeholder="Enter your code">
					</form>
					<div class="row"
						style="border-top: 1px solid rgba(0, 0, 0, .1); padding: 2vh 0;">
						<div class="col">TOTAL PRICE</div>
						<div class="col text-right">
							<fmt:setLocale value="vi_VN" scope="session" />
							<fmt:formatNumber  value="${cart.totalPrice} " type="currency" />
							
						</div>
					</div>
					<button type="submit" class="btn">CHECKOUT</button>
			
				</div>
				
			</div>
			
		</div>
	</form>

		<!-- Footer -->
		<footer style="background-color: #333333 !important;"
			class="text-center text-lg-start bg-light text-muted">
			<!-- Section: Social media -->
			<section
				class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
				<!-- Left -->
				<div class="me-5 d-none d-lg-block">
					<span>Get connected with us on social networks:</span>
				</div>
				<!-- Left -->

				<!-- Right -->
				<div>
					<a href="" class="me-4 text-reset"> <i
						class="fab fa-facebook-f"></i>
					</a> <a href="" class="me-4 text-reset"> <i class="fab fa-google"></i>
					</a> <a href="" class="me-4 text-reset"> <i
						class="fab fa-instagram"></i>
					</a>

				</div>
				<!-- Right -->
			</section>
			<!-- Section: Social media -->

			<!-- Section: Links  -->
			<section class="">
				<div class="container text-center text-md-start mt-5">
					<!-- Grid row -->
					<div class="row mt-3">
						<!-- Grid column -->
						<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
							<!-- Content -->
							<h6 class="text-uppercase fw-bold mb-4">

								<i class="fas fa-gem me-3"></i>Phương Nam Sport
							</h6>
							<p>Rất hân hạnh được đem đến cho quý khách những sản phẩm tốt
								nhất</p>
						</div>
						<!-- Grid column -->

						<!-- Grid column -->
						<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
							<!-- Links -->
							<h6 class="text-uppercase fw-bold mb-4">Products</h6>
							<p>
								<a href="#!" class="text-reset">Angular</a>
							</p>
							<p>
								<a href="#!" class="text-reset">React</a>
							</p>
							<p>
								<a href="#!" class="text-reset">Vue</a>
							</p>
							<p>
								<a href="#!" class="text-reset">Laravel</a>
							</p>
						</div>
						<!-- Grid column -->

						<!-- Grid column -->
						<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
							<!-- Links -->
							<h6 class="text-uppercase fw-bold mb-4">Useful links</h6>
							<p>
								<a href="#!" class="text-reset">Pricing</a>
							</p>
							<p>
								<a href="#!" class="text-reset">Settings</a>
							</p>
							<p>
								<a href="#!" class="text-reset">Orders</a>
							</p>
							<p>
								<a href="#!" class="text-reset">Help</a>
							</p>
						</div>
						<!-- Grid column -->

						<!-- Grid column -->
						<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
							<!-- Links -->
							<h6 class="text-uppercase fw-bold mb-4">Contact</h6>
							<p>
								<i class="fas fa-home me-3"></i> tòa HH2B Linh Đàm,quận Hoàng
								Mai, Hà Nội
							</p>
							<p>
								<i class="fas fa-envelope me-3"></i> nguyennam210601@gmail.com
							<p>
								<i class="fas fa-phone me-3"></i>0358307767
							</p>
							</p>

						</div>
						<!-- Grid column -->
					</div>
					<!-- Grid row -->
				</div>
			</section>
			<!-- Section: Links  -->

			<!-- Copyright -->
			<!-- Copyright -->
		</footer>
		<!-- Footer -->

	</div>


</body>

<jsp:include page="/WEB-INF/view/khachhang/layout/js.jsp"></jsp:include>

<script type="text/javascript">
	/* $("#plus").on("click", function(e){
		var soluong = $(this).parent().find('#quanlity').val();
		soluong = parseInt(soluong) + 1;
		if(soluong >= 1)
			{
				$(this).parent().find('#quanlity').html('#quanlity').val(soluong);
			}
	}) */
	
	
</script>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script type="text/javascript" src="path_to/jquery.js"></script>


</html>