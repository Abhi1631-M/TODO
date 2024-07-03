<%--
Created by IntelliJ IDEA.
User: user
Date: 6/29/2024
Time: 3:39 PM
To change this template use File | Settings | File Templates.
--%>
<%@include file="common/header.jspf"%>
<%@include file="common/navigation.jspf"%>
<div class="container">


<h1> Enter Todo Details: </h1>
<form:form method="post" modelAttribute="todo">
    <fieldset class="mb-3">
    <form:label path="description"> Description</form:label>
    <form:input type="text" path="description" name="description" required="required"/>
    <form:errors path="description" cssClass="text-warning"/>
    </fieldset>
    <fieldset class="mb-3">
        <form:label path="targetDate">Target Date</form:label>
        <form:input type="text" path="targetDate" required="required"/>
        <form:errors path="targetDate" cssClass="text-warning"/>
    </fieldset>
    <form:input type="hidden" path="id"/>
    <form:input type="hidden" path="done"/>
    <input type="submit" class="btn btn-success"/>

</form:form>
</div>
<%@include file="common/footer.jspf"%>
<script type="text/javascript">
$('#targetDate').datepicker({
    format:'dd/mm/yyyy'
});
</script>
<%-- webjars\bootstrap-datepicker\1.9.0\js\bootstrap-datepicker.min.js
\META-INF\resources\webjars\bootstrap-datepicker\1.9.0\css\bootstrap-datepicker.min.css
--%>