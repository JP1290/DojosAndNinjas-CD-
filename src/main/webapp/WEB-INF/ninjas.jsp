<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>New Ninja</h1>
	
	<div>
	
		<form:form action = "/submitNinja" method = "post" modelAttribute = "ninja">
		
			<p>
			
				<form:label path = "dojo">Dojo:</form:label>
				
				<form:select path = "dojo">
					
					<c:forEach var = "dojo" items = "${dojos}">
					
						<option value = "${dojo.id}"><c:out value = "${dojo.name}"></c:out></option>
						
					</c:forEach>
					
				</form:select>
			
			<p>
			
				<form:label path = "firstName">First Name:</form:label>
				
				<form:input path = "firstName"></form:input>
				
			</p>
			
			<p>
			
				<form:label path = "lastName">Last Name:</form:label>
				
				<form:input path = "lastName"></form:input>
				
			</p>
			
			<p>
			
				<form:label path = "age">Age:</form:label>
				
				<form:input path = "age"></form:input>
				
			</p>
			
			<input type = "submit" value = "Submit" />
			
		</form:form>
	
	</div>
	
</body>
</html>