 <%@ include file="navbar.jsp" %>
<html>
 <body onload="makeActive('search')">
  <table class='tar' border='1'>
	<tr style='background-color:orange;color:white;font-size:2vw'>
	 <th colspan="2" style="text-align:center">Employee Details</th>
	</tr>  
	<tr>
	<!-- emp is key  come model-->
	 <th align="left">Employee Id</th>
	 <td>${emp.eid}</td>
	</tr>
	<tr>
	 <th align="left">Employee first name</th>
	 <td>${emp.firstname}</td>
	</tr>
	<tr>
	 <th align="left">Employee last name</th>
	 <td>${emp.lastname}</td>
	</tr>
	<tr>
	 <th align="left">Employee phone number</th>
	 <td>${emp.phone}</td>
	</tr>
	<tr>
	 <th align="left">Employee salary</th>
	 <td>${emp.salary}</td>
	</tr>
	<tr>
	 <th align="left">Employee department</th>
	 <td>${emp.department}</td>
	</tr>
	
  </table>
 </body>
</html>