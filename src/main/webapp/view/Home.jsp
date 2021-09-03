<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Home</title>
</head>
<body>
	<p><%= request.getAttribute("error") != null ? request.getAttribute("error") : " "  %></p>
	<form action = "HomeController?pageid=${numberpage}" method = "POST">
	<c:forEach items = "${list }" var = "l">
		<h4>${l.num}. ${l.ques}</h4>
		<input type = "radio" name = "ans[${l.num}]" value ="A">${l.option1}
		<br/>
		<br/>
		<input type = "radio" name = "ans[${l.num}]" value ="B">${l.option2}
		<br/>
		<br/>
		<input type = "radio" name = "ans[${l.num}]" value ="C">${l.option3}
		<br/>
		<br/>
		<input type = "radio" name = "ans[${l.num}]" value ="D">${l.option4}
		<br/>
		<br/>
	</c:forEach>
	<input type = "submit" value = "Tabscript">
	</form>
	
  	<c:if test="${numberpage == 1 }">
  <ul class="pagination">
    <li class="page-item disabled">
      <a class="page-link" href="HomeForward?pageid=${numberpage - 1}" >&laquo;</a>
    </li>
    <li class="page-item"><a class="page-link" href="HomeForward?pageid=1">1</a></li>
    <li class="page-item">
      <a class="page-link" href="HomeForward?pageid=2">2 </a>
    </li>
   
    <li class="page-item">
      <a class="page-link" href="HomeForward?pageid=${numberpage + 1}">&raquo;</a>
    </li>
  </ul>
	</c:if>
	
	<c:if test="${numberpage == maxpageid }">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="HomeForward?pageid=${numberpage - 1}" >&laquo;</a>
    </li>
    <li class="page-item"><a class="page-link" href="HomeForward?pageid=1">1</a></li>
    <li class="page-item">
      <a class="page-link" href="HomeForward?pageid=2">2 </a>
    </li>
    <li class="page-item disabled">
      <a class="page-link" href="HomeForward?pageid=${numberpage + 1}">&raquo;</a>
    </li>
  </ul>
	</c:if>
	
	<c:if test="${numberpage > 1 && numberpage < maxpageid }">
	<ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="HomeForward?pageid=${numberpage - 1}" >&laquo;</a>
    </li>
    <li class="page-item"><a class="page-link" href="HomeForward?pageid=1">1</a></li>
    <li class="page-item">
      <a class="page-link" href="HomeForward?pageid=2">2 </a>
    </li>
    <li class="page-item">
      <a class="page-link" href="HomeForward?pageid=${numberpage + 1}">&raquo;</a>
    </li>
  </ul>
  </c:if>
</body>
</html>