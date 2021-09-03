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
<title>Result</title>
</head>
<body>
	
	<form action = "HomeForward?pageid=${numberpage}" method = "POST">
	<c:forEach items = "${listsys}" var = "listsys">
		<c:forEach items = "${listuser}" var = "listuser">
			<c:if test="${listsys.num == listuser.numans}">
				<c:if test="${listsys.correctans == 'A'}">
					<c:if test="${listuser.ans == 'A'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						<img alt="" src="img/correct.png"> ${listsys.option1}
						<br/>
						<br/>
						${listsys.option2}
						<br/>
						<br/>
						${listsys.option3}
						<br/>
						<br/>
						${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'B'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						<img alt="" src="img/correct.png">${listsys.option1}
						<br/>
						<br/>
						<img alt="" src="img/error.png">${listsys.option2}
						<br/>
						<br/>
						${listsys.option3}
						<br/>
						<br/>
						${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'C'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						<img alt="" src="img/correct.png">${listsys.option1}
						<br/>
						<br/>
						${listsys.option2}
						<br/>
						<br/>
						<img alt="" src="img/error.png">${listsys.option3}
						<br/>
						<br/>
						${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'D'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						<img alt="" src="img/correct.png">${listsys.option1}
						<br/>
						<br/>
						${listsys.option2}
						<br/>
						<br/>
						${listsys.option3}
						<br/>
						<br/>
						<img alt="" src="img/error.png">${listsys.option4}
					</c:if>
				
				</c:if>
				
				<c:if test="${listsys.correctans == 'B'}">
					<c:if test="${listuser.ans == 'A'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						<img alt="" src="img/error.png"> ${listsys.option1}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option2}
						<br/>
						<br/>
						${listsys.option3}
						<br/>
						<br/>
						${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'B'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						${listsys.option1}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option2}
						<br/>
						<br/>
						${listsys.option3}
						<br/>
						<br/>
						${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'C'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						${listsys.option1}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option2}
						<br/>
						<br/>
						<img alt="" src="img/error.png">${listsys.option3}
						<br/>
						<br/>
						${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'D'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						${listsys.option1}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option2}
						<br/>
						<br/>
						${listsys.option3}
						<br/>
						<br/>
						<img alt="" src="img/error.png">${listsys.option4}
					</c:if>
				
				
				</c:if>
				
				<c:if test="${listsys.correctans == 'C'}">
					<c:if test="${listuser.ans == 'A'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						<img alt="" src="img/error.png"> ${listsys.option1}
						<br/>
						<br/>
						${listsys.option2}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option3}
						<br/>
						<br/>
						${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'B'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						${listsys.option1}
						<br/>
						<br/>
						<img alt="" src="img/error.png">${listsys.option2}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option3}
						<br/>
						<br/>
						${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'C'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						${listsys.option1}
						<br/>
						<br/>
						${listsys.option2}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option3}
						<br/>
						<br/>
						${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'D'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						${listsys.option1}
						<br/>
						<br/>
						${listsys.option2}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option3}
						<br/>
						<br/>
						<img alt="" src="img/error.png">${listsys.option4}
					</c:if>
				
				
				
				</c:if>
				
				<c:if test="${listsys.correctans == 'D'}">
					<c:if test="${listuser.ans == 'A'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						<img alt="" src="img/error.png"> ${listsys.option1}
						<br/>
						<br/>
						${listsys.option2}
						<br/>
						<br/>
						${listsys.option3}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'B'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						${listsys.option1}
						<br/>
						<br/>
						<img alt="" src="img/error.png">${listsys.option2}
						<br/>
						<br/>
						<${listsys.option3}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'C'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						${listsys.option1}
						<br/>
						<br/>
						${listsys.option2}
						<br/>
						<br/>
						<img alt="" src="img/error.png">${listsys.option3}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option4}
					</c:if>
					
					<c:if test="${listuser.ans == 'D'}">
						<p>${listsys.num}. ${listsys.ques}</p>
						${listsys.option1}
						<br/>
						<br/>
						${listsys.option2}
						<br/>
						<br/>
						${listsys.option3}
						<br/>
						<br/>
						<img alt="" src="img/correct.png">${listsys.option4}
					</c:if>				
				</c:if>
			</c:if>			
		</c:forEach>
		<br/>
		<br/>	
	</c:forEach>
	<input type = "submit" value = "Again">
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