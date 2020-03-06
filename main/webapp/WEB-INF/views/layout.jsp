<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin</title>
   <tiles:insertAttribute name="head" />
 
</head>
<body>


  
  <div class="row">
  

    <tiles:insertAttribute name="aside" />

  
  
  <tiles:insertAttribute name="menu" />

  <tiles:insertAttribute name="body" />

  
  </div>



</body>
</html>