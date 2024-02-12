<%@page import="dto.Task"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
div {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.extra {
	margin-top: 20px;
	margin-left: 305px;
}
</style>
</head>
<body>
	<h1 align="center">This is Home Page</h1>
	<%
	List<Task> tasks = (List<Task>) request.getAttribute("tasks");
	%>
	<div>
		<table border="1">
			<tr>
				<th>Task Name</th>
				<th>Task Description</th>
				<th>Created Time</th>
				<th>Status</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>
			<%
			if (tasks != null) {
				for (Task task : tasks) {
			%>
			<tr>
				<th><%=task.getName()%></th>
				<th><%=task.getDescription()%></th>
				<th><%=task.getCreatedTime()%></th>
				<th>
					<%
					if (task.isStatus()) {
					%> Completed <%
					} else {
					%>
					<a href="complete?id=<%=task.getId()%>"><button>Complete</button></a> <%
 }
 %>
				</th>
				<th><a href="delete?id=<%=task.getId()%>"><button>Delete</button></a></th>
				<th><a href="EditTask.jsp?id=<%=task.getId()%>"><button>Edit</button></a></th>
			</tr>
			<%
			}
			}
			%>
		</table>
	</div>
	<a href="AddTask.html"><button class="extra">Add Task</button></a>
	<a href="logout"><button class="extra">Logout</button></a>
</body>
</html>