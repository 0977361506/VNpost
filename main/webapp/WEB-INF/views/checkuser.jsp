<%@ page  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Spring Boot Security Hello</title>
</head>
<body>
  <h2>User Page</h2>
  <a href="/admin">Admin Page</a>
  <br/><br/>
  <form action="/logout" method="post">

    <input type="submit" value="Logout" />
  </form>
</body>
</html>