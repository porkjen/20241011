
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body class="p-3 mb-2 bg-success-subtle text-success-emphasis">
	<nav class="navbar sticky-top navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Lottery</a>
            <a class="btn btn-success ms-auto" href="logout" role="button">Logout</a>
        </div>
    </nav>
	<div style="margin-top: 10px;">
		<h1 class="text-success" style="text-align: center;">註冊</h1>

		<%String hint = (String)request.getSession().getAttribute("hint");%>
            <%if( hint != null ) {%>
                <div class="alert alert-danger d-flex align-items-center" role="alert">
                  <%= hint%>
                </div>
            <% request.getSession().removeAttribute("hint");%>
        <%} %>

		<form action="register" method="post" >
			<table style="text-align: left; margin: auto">
				<tbody>
					<tr>
						<td>帳號</td>
						<td><input type="text" name="accNum" required></td>
					</tr>
					<tr>
						<td>密碼</td>
						<td><input type="password" name="password" required></td>
					</tr>
					<tr>
						<td></td>
						<td style="text-align: right">

							<button class="btn btn-outline-success btn-sm" type="submit" >註冊</button>
						</td>

					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>