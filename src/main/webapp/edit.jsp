<%@ include file="navbar.jsp" %>
<html>
 <body onload="makeActive('edit')">
  <form action="show-record">
   <table class='ta' style='background-color:orange;color:white'>
    <tr>
     <td class='pad'>Enter employee id</td>
     <td class='pad'><input type='text' value="${eid}" name='eid' class='tb' required></td>
     <td class="pad" colspan="2" align="right">
     <button class="bt" style='background-color:blue;color:white'>Show Record</button></td>
    </tr>
   </table>
   <div class="dvv">
      <label class='emsg'>${msg}</label>
   </div>
  </form>
 </body>
</html>