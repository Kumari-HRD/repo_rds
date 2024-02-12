<!DOCTYPE html>
<%@page import="dto.Task"%>
<%@page import="dao.MyDao"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Task</title>
<style>
div {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}
</style>
</head>
<body>
<div>
<% 
int id=Integer.parseInt(request.getParameter("id"));
MyDao dao=new MyDao();
Task task=dao.findById(id);
%>
		<h1>Edit Task</h1>
		<form action="update-task" method="post">
		<input type="hidden" name="id" value="<%=task.getId()%>">
			<fieldset>
				<legend>Enter Task here,</legend>
				<table>
					<tr>
						<th>Task Name: </th>
						<th><input type="text" name="tname" value="<%=task.getName()%>"></th>
					</tr>
					<tr>
						<th>Task Description: </th>
						<th><input type="text" name="tdescription" value="<%=task.getDescription()%>"></th>
					</tr>
					<tr>
						<th><button>Update</button></th>
						<th><button type="reset">Cancel</button></th>
					</tr>
				</table>
			</fieldset>
		</form>
		<br>
		<br>					
		<a href="Home.jsp"><button>Back</button></a>
	</div>
</body>
</html>