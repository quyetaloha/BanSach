<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="<c:url value="/resources/css/table.css" />"
	rel="stylesheet">
</head>
<body>
<h1>Responstable <span>2.0</span> by <span>jordyvanraaij</span></h1>

<table class="responstable">
  
  <tr>
    <th>Main driver</th>
    <th data-th="Driver details"><span>First name</span></th>
    <th>Surname</th>
    <th>Date of birth</th>
    <th>Relationship</th>
  </tr>
  
  <tr>
    <td><input type="radio"/></td>
    <td>Steve</td>
    <td>Foo</td>
    <td>01/01/1978</td>
    <td>Policyholder</td>
  </tr>
  
  <tr>
    <td><input type="radio"/></td>
    <td>Steffie</td>
    <td>Foo</td>
    <td>01/01/1978</td>
    <td>Spouse</td>
  </tr>
  
  <tr>
    <td><input type="radio"/></td>
    <td>Stan</td>
    <td>Foo</td>
    <td>01/01/1994</td>
    <td>Son</td>
  </tr>
  
  <tr>
    <td><input type="radio"/></td>
    <td>Stella</td>
    <td>Foo</td>
    <td>01/01/1992</td>
    <td>Daughter</td>
  </tr>
   <tr>
    <td><input type="radio"/></td>
    <td>quyetdaik</td>
    <td>Foo</td>
    <td>01/01/1992</td>
    <td>Daughter</td>
  </tr>
</table>
</body>
</html>