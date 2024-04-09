<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../component/all_css.jsp"%>

<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body class="bg-light">


	<c:if test="${empty loginUser }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>




	<%@ include file="../component/navbar.jsp"%>

	<%-- 	<div class="container w-50">
			
			
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Title</label> <input type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
				<div id="emailHelp" class="form-text"></div>
			</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Date</label>
						<input type="password" class="form-control"
							id="exampleInputPassword1">
					</div>
					
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Time</label>
						<input type="password" class="form-control"
							id="exampleInputPassword1">
					</div>
					
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Discription</label>
						<input type="password" class="form-control"
							id="exampleInputPassword1">
					</div>
					
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Price</label>
						<input type="password" class="form-control"
							id="exampleInputPassword1">
					</div>
					
					
					
					
			<button type="submit" class="btn btn-success">add</button>
		</form>  
--%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card card-sh">
					<div class="card-header text_center">
						<p class="fs-3">Add Expense</p>

						<c:if test="${not empty msg }">
							<p class="text-center text-success fs-4">${msg}</p>
							<c:remove var="msg" />
						</c:if>

					</div>
					<div class="card-body">
						<form action="../saveExpense" method="post">

							<div class="mb-3">
								<label>Title</label> <input type="text" name="title"
									class="form_control">
							</div>

							<div class="mb-3">
								<label>Date</label> <input type="date" name="date"
									class="form_control">
							</div>

							<div class="mb-3">
								<label>Time</label> <input type="time" name="time"
									class="form_control">
							</div>

							<div class="mb-3">
								<label>Description</label> <input type="text" name="description"
									class="form_control">
							</div>

							<div class="mb-3">
								<label>Price</label> <input type="text" name="price"
									class="form_control">
							</div>

						
							
							<button class="btn btn-success col-md-12">Add</button>





						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

</body>
</html>