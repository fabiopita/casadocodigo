<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de produtos</title>
</head>
<body>

	<form method="post" action="/casadocodigo/produtos" >
		<div>
			<label for="title">Titulo</label> 
			<input type="text" name="title" id="title" />
			<form:errors path="title"/>
		</div>
		<div>
			<label for="description">Descrição</label>
			<textarea rows="10" cols="20" name="description" id="description"></textarea>
			<form:errors path="description"/>
		</div>
		<div>
			<label for="pages">Número de paginas</label> 
			<input type="text" name="pages" id="pages" />
			<form:errors path="pages"/>
		</div>

		<div>
			<c:forEach items="${bookTypes}" var="bookType" varStatus="status">
				<div>
					<label for="preco_${bookType}">${bookType}</label> 
					<input type="text" name="prices[${status.index}].value" id="preco_${bookType}" /> 
					<input type="hidden" name="prices[${status.index}].bookType" value="${bookType}" />
				</div>
			</c:forEach>
		</div>
		<div>
			<input type="submit" value="Enviar">
		</div>
	</form>
</body>
</html>