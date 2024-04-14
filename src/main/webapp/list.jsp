<%@ include file="navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body onload="makeActive('list')">
	<div class='container mt-5'>
		<div class='card col-md-12 mx-auto' style='border: 3px solid silver'>
			<div class='card-body'>
				<div class='table scrollit'>
					<table class='table table-hover'>
						<thead>
							<tr>
								<th>Employee id</th>
								<th>First name</th>
								<th>Last name</th>
								<th>Phone number</th>
								<th>Department</th>
								<th>Salary</th>
							</tr>
						</thead>
						<tbody>
						<!-- JSTL use for Jsp code -->
							<c:forEach var="emp" items="${elist}">
								<tr>
								<!--elist is model key show data use  print    -->
									<td>${emp.eid}</td> <!--  getter method getEid call-->
									<td>${emp.firstname}</td>
									<td>${emp.lastname}</td>
									<td>${emp.phone}</td>
									<td>${emp.department}</td>
									<td>${emp.salary}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>