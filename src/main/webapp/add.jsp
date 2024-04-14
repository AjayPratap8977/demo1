<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('add')">
  <div class='container'>
  	<div class='card col-md-10 mx-auto' style='margin-top:2vw'>
  	 <div class='card-body'>
  	  <form action="add-record" method="post">
  	   <div class='row'>
  	  	 <div class='form-group col-md-10'>
  	  	  <label for="eid">Enter employee id</label><span> *</span>
  	  	  <input class='form-control' type="text" name="eid" id="eid" required>
  	  	 </div>  
  	   </div>
  	   <div class='row'>
  	  	 <div class='form-group col-md-5'>
  	  	  <label for="firstname">Enter first name</label><span> *</span>
  	  	  <input class='form-control' type="text" name="firstname" id="firstname" required>
  	  	 </div>  
  	  	 <div class='form-group col-md-5'>
  	  	  <label for="lastname">Enter last name</label><span> *</span>
  	  	  <input class='form-control' type="text" name="lastname" id="lastname" required>
  	  	 </div>
  	   </div> 	
  	   <div class='row'>
  	  	 <div class='form-group col-md-5'>
  	  	  <label for="phone">Enter phone number</label><span> *</span>
  	  	  <input class='form-control' type="text" name="phone" id="phone" required>
  	  	 </div>  
  	  	 <div class='form-group col-md-5'>
  	  	  <label for="department">Enter department</label><span> *</span>
  	  	  <input class='form-control' type="text" name="department" id="department" required>
  	  	 </div>
  	   </div> 
  	   <div class='row'>
  	  	 <div class='form-group col-md-10'>
  	  	  <label for="salary">Enter salary</label><span> *</span>
  	  	  <input class='form-control' type="text" name="salary" id="salary" required>
  	  	 </div>  
  	   </div>	 
  	   <div class='row'>
  	  	 <div class='form-group col-md-10'>
  	  	   <button class='btn btn-primary'>Add Record</button>
  	  	   <button class='btn btn-secondary'>Cancel</button>
  	  	 </div>  
  	   </div>	   
  	  </form>
  	 </div>
  	</div>
  </div>
 </body>
</html>