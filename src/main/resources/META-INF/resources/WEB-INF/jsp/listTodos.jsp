<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/29/2024
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="common/header.jspf"%>

<%@ include file="common/navigation.jspf"%>
<div class="container">


<h1> Your Todos are: </h1>
<table class="table">
    <thead>
    <tr>

    <th>Description</th>
    <th>Target Date</th>
    <th>Is Done?</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
<c:forEach items="${todos}" var="todo">
<tr>

    <td>${todo.description}</td>
    <td>${todo.targetDate}</td>
    <td>${todo.done}</td>
    <td> <a href="delete-todo?id=${todo.id}" class="btn btn-danger">DELETE</a> </td>
    <td> <a href="update-todo?id=${todo.id}" class="btn btn-warning">UPDATE</a> </td>

</tr>
</c:forEach>
    </tbody>
</table>
 <a href="add-todo" class="btn btn-success">Add Todo</a>
<%@include file="common/footer.jspf"%>
<%--<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" >
<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
\META-INF\resources\webjars\bootstrap\5.1.3\css\bootstrap.min.css
\META-INF\resources\webjars\bootstrap\5.1.3\js\bootstrap.min.js
\META-INF\resources\webjars\jquery\3.6.0\jquery.min.js
--%>