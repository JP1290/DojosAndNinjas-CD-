<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dojo Form</title>
</head>
<body>

	<h1>New Dojo</h1>
	
	<div>
	
		<form:form action = "/submitDojo" method = "post" modelAttribute = "dojo">
		
			<p>
			
				<form:label path = "name">Title</form:label>
			
				<form:errors path = "name"></form:errors>
			
				<form:input path = "name"></form:input>
				
			</p>
			
			<input type = "submit" value = "Submit" />
			
		</form:form>
		
	</div>
</body>
</html>