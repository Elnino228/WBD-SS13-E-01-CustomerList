<%@ page import="java.util.ArrayList" %>

<%@ page import="customer.Customer" %>
<%--
  Created by IntelliJ IDEA.
  User: elnino228
  Date: 19/06/2019
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
      ArrayList<Customer> customers=new ArrayList<>();
      customers.add(new Customer("Mai Van Hoan","1983-08-20","Ha Noi"));
      customers.add(new Customer("Nguyen Van Nam","1983-08-21","Bac Giang"));
      customers.add(new Customer("Nguyen Thai Hoa","1983-08-22","Nam Dinh"));
      customers.add(new Customer("Tran Dang Khoa","1983-08-23","HCM"));
      pageContext.setAttribute("customers", customers);
  %>

  <h1>Danh Sach Khach Hang</h1>
  <table>
    <tr>
      <td>Ten</td>
      <td>Ngay sinh</td>
      <td>Dia chi</td>
    </tr>
      <c:forEach var ="customer" items="${customers}">
          <tr>
              <td><c:out value ="${customer.getName()}"/></td>
              <td><c:out value ="${customer.getBirthDay()}"/></td>
              <td><c:out value ="${customer.getAddress()}"/></td>
          </tr>
          <br/>
      </c:forEach>
  </table>
  </body>
</html>
