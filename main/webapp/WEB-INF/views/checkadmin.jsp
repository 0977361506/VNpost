<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Spring Boot Security Hello</title>
</head>
<body>
  <h2>Admin Page</h2>
 
  
  
  <a href="/user">User Page</a>
  <br/><br/>
  <form action="/logout" method="post">

    <input type="submit" value="Logout" />
  </form>
</body>
</html>