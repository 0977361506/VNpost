<%@ page  pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Spring Boot Security Hibernate</title>
</head>
<body>
  <h2>Spring Boot Security Hibernate</h2>
    <p>${message}</p>
  <form name='login-form' action="/check/login" method='POST'>
    <table>
      <tr>
        <td>Username:</td>
        <td><input type='text' name="username" ></td>
      </tr>
      <tr>
        <td>Password:</td>
        <td><input type='password' name="password" /></td>
      </tr>
      <tr>
        <td><input name="submit" type="submit" value="submit" /></td>
      </tr>
    </table>
   
  </form>
</body>
</html>