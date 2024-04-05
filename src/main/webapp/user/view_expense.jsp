<%@page import="org.hibernate.tool.schema.spi.TargetDescriptor"%>
<%@page import="com.entity.Expense"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.ExpenseDao"%>
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
</head>
<body>
	<%@ include file="../component/navbar.jsp"%>

	<c:if test="${empty loginUser }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>

	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">

					<div class="card-header text-center">
						<p class="fs-3">All Expenses</p>
					</div>
					<div calss="card-body">

						<table class="table">
							<thead>
								<tr>
									<th scope="col">Title</th>
									<th scope="col">Description</th>
									<th scope="col">Date</th>
									<th scope="col">Time</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>

								<%
								User user = (User) session.getAttribute("loginUser");

								ExpenseDao dao = new ExpenseDao(HibernateUtil.getSessionFactory());
								List<Expense> list = dao.getAllExpenseByUser(user);

								for (Expense ex : list) {
								%>

								<tr>
									<th scope="row"><%=ex.getTitle()%>1</th>
									<td><%=ex.getDescription()%></td>
									<td><%=ex.getDate()%></td>
									<td><%=ex.getTime()%></td>
									<td><%=ex.getPrice()%></td>
									<td><a href="#" class="btn btn-sm btn-primary me-1">Edit</a>
										<a href="#" class="btn btn-sm btn-danger me-1">Delete</a></td>
								</tr>
								<%
								}
								%>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>