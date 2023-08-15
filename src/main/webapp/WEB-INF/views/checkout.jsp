<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Checkout | V-Shopper</title>
<jsp:include page="layou/layou2.jsp" />
</head>
<!--/head-->

<body>
	<header id="header">
		<!--header-->
		<jsp:include page="layou/layou1.jsp" />

		<jsp:include page="layou/layou3.jsp" />

		<section id="cart_items">
			<div class="container">
				<div class="breadcrumbs">
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li class="active">Check out</li>
					</ol>
				</div>
				<!--/breadcrums-->

				<div class="step-one">
					<h2 class="heading">Step1</h2>
				</div>
				<div class="checkout-options">
					<h3>New User</h3>
					<p>Checkout options</p>
					<ul class="nav">
						<li><label><input type="checkbox"> Register
								Account</label></li>
						<li><label><input type="checkbox"> Guest
								Checkout</label></li>
						<li><a href=""><i class="fa fa-times"></i>Cancel</a></li>
					</ul>
				</div>
				<!--/checkout-options-->

				<div class="register-req">
					<p>Please use Register And Checkout to easily get access to
						your order history, or use Checkout as Guest</p>
				</div>
				<!--/register-req-->

				<div class="shopper-informations">
					<div class="row">
						<div class="col-sm-3">
							<div class="shopper-info" style="font-size: 20px">
								<p>Shopper Information</p>
								<form action="home/order-detail" method="post" class="checkout-form">
									<input type="text" placeholder="Address" id="fir" name="address">
									<ul class="order-table">
										<li>Product<span>Total:</span></li>
										<c:forEach var="item" items="${cart.items}">
											<li class="fw-normal">${item.name} x ${item.qty}
											<span>$${item.price*item.qty}</span></li>
										</c:forEach>
										<li class="total-price">Total: <span>$${cart.total}</span></li>
									</ul> 
									<button class="btn btn-primary" type="submit">Continue</button>
								</form>

							</div>
						</div>
						<div class="col-sm-5 clearfix">
							<div class="bill-to">
								<p>Bill To</p>
								<div class="form-one">
									<form>
										<input type="text" placeholder="Company Name"> <input
											type="text" placeholder="Email*"> <input type="text"
											placeholder="Title"> <input type="text"
											placeholder="First Name *"> <input type="text"
											placeholder="Middle Name"> <input type="text"
											placeholder="Last Name *"> <input type="text"
											placeholder="Address 1 *"> <input type="text"
											placeholder="Address 2">
									</form>
								</div>
								<div class="form-two">
									<form>
										<input type="text" placeholder="Zip / Postal Code *">
										<select>
											<option>-- Country --</option>
											<option>United States</option>
											<option>Bangladesh</option>
											<option>UK</option>
											<option>India</option>
											<option>Pakistan</option>
											<option>Ucrane</option>
											<option>Canada</option>
											<option>Dubai</option>
										</select> <select>
											<option>-- State / Province / Region --</option>
											<option>United States</option>
											<option>Bangladesh</option>
											<option>UK</option>
											<option>India</option>
											<option>Pakistan</option>
											<option>Ucrane</option>
											<option>Canada</option>
											<option>Dubai</option>
										</select> <input type="password" placeholder="Confirm password">
										<input type="text" placeholder="Phone *"> <input
											type="text" placeholder="Mobile Phone"> <input
											type="text" placeholder="Fax">
									</form>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="order-message">
								<p>Shipping Order</p>
								<textarea name="message"
									placeholder="Notes about your order, Special Notes for Delivery"
									rows="16"></textarea>
								<label><input type="checkbox"> Shipping to bill
									address</label>
							</div>
						</div>
					</div>
				</div>


				<div class="review-payment">
					<h2>Review & Payment</h2>
				</div>
				<div class="payment-options">
					<span> <label><input type="checkbox"> Direct
							Bank Transfer</label>
					</span> <span> <label><input type="checkbox"> Check
							Payment</label>
					</span> <span> <label><input type="checkbox">
							Paypal</label>
					</span>
				</div>
			</div>
		</section>
		<!--/#cart_items-->

		<jsp:include page="layou/layou4.jsp" />
</body>
</html>