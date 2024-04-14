<%@ include file="navbar.jsp" %>
<html>
 <body onload="makeActive('search')">
  <form action="search-record">
   <table class='ta' style='background-color:gray;color:white'>
    <tr>
     <td class='pad'>Enter employee id</td>
     <td class='pad'><input type='text' value="${eid}" name='eid' class='tb' required></td>
     <td class="pad" colspan="2" align="right">
     <button class="bt">Search Record</button></td>
    </tr>
   </table>
   <div class="dvv">
      <label class='emsg'>${msg}</label>
   </div>
  </form>
 </body>
</html>