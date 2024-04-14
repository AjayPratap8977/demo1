<%@ include file="navbar.jsp" %>
<html>
 <body onload="makeActive('edit')">
 <form action="update-record" method="post"> 
  <table class='tar' border='1' cellpadding='8'>
	<tr style='background-color:orange;color:white;font-size:2vw'>
	 <th colspan="2" style="text-align:center">Employee Details</th>
	</tr>  
	<tr>
	 <th align="left">Employee Id</th>
	 <td><input type='text' value='${emp.eid}' name='eid' class='tb' style='width:100%' readonly="readonly"></td>
	</tr>
	<tr>
	 <th align="left">Edit Employee first name</th>
	 <td><input type='text' value='${emp.firstname}' name='firstname' class='tb' style='width:100%'></td>
	</tr>
	<tr>
	 <th align="left">Edit Employee last name</th>
	 <td><input type='text' value='${emp.lastname}' name='lastname' class='tb' style='width:100%'></td>
	</tr>
	<tr>
	 <th align="left">Employee phone number</th>
	 <td><input type='text' value='${emp.phone}' name='phone' class='tb' style='width:100%'></td>
	</tr>
	<tr>
	 <th align="left">Employee department</th>
	 <td><input type='text' value='${emp.department}' name='department' class='tb' style='width:100%'></td>
	</tr>
	<tr>
	 <th align="left">Employee salary</th>
	 <td><input type='text' value='${emp.salary}' name='salary' class='tb' style='width:100%'></td>
	</tr>
	<tr>
	 <td colspan="2" align="right">
	  <button class='bt'>Update Record</button>
	 </td>
	</tr>
  </table>
  </form>
 </body>
</html>