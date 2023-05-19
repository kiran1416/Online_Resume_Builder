<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Resume</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}

		.container {
			width: 800px;
			margin: 0 auto;
		}

		.header {
			text-align: center;
			margin-top: 30px;
		}

		.name {
			font-size: 36px;
			font-weight: bold;
			margin-bottom: 5px;
		}

		.contact-info {
			font-size: 18px;
			margin-bottom: 10px;
		}

		.section {
			margin-top: 20px;
		}

		.section-title {
			font-size: 24px;
			font-weight: bold;
			margin-bottom: 10px;
		}

		.section-content {
			font-size: 18px;
			margin-bottom: 10px;
		}

		.skills {
			column-count: 2;
			column-gap: 20px;
		}

		.skills li {
			margin-bottom: 10px;
		}

		.skills-title {
			font-size: 24px;
			font-weight: bold;
			margin-bottom: 10px;
		}
	</style>
</head>
<body>
		<%
			String name=request.getParameter("name");
			String email= request.getParameter("email");
			String phone=  request.getParameter("phone");
			String address=  request.getParameter("address");
			String objective=  request.getParameter("objective");
			String degree=  request.getParameter("degree");
			String university=  request.getParameter("university");
			String year=  request.getParameter("year");
			String company=  request.getParameter("company");
			String position=  request.getParameter("position");
			String startDate=   request.getParameter("startDate");
			String endDate=  request.getParameter("endDate");
			String skills=   request.getParameter("skills");
		%>
		
		<fieldset  >
		<div class="container">
		<div class="header">
			<div class="name"><%=name %></div>
			<div class="contact-info"><%=address %> | <%=email%> | 
			<%=phone %></div>
		</div>

		<div class="section">
				<div class="section-title">Summary</div>
				<div class="section-content"><%=objective %></div>
		</div>

		<div class="section">
				<div class="section-title">Education</div>
				<div class="section-content"><%=degree %>, <%=university %>, <%=year %></div>
		</div>

		<div class="section">
				<div class="section-title">Experience</div>
				<div class="section-content">
					<p><strong><%=position %></strong>, <%=company %>, <%=startDate %>-<%=endDate %></p>
					<ul>
						<li>Developed and maintained software applications</li>
						<li>Collaborated with cross-functional teams to analyze requirements and 
						develop solutions</li>
						<li>Implemented software testing and debugging procedures</li>
					</ul>
				</div>
		</div>

		<div class="section">
				<div class="section-title">Skills</div>
				<div class="skills">
					<ul>
						<li><%=skills %></li>
						
					</ul>
					<ul>
						<li>Agile development</li>
						<li>Project management</li>
						<li>Team collaboration</li>
						<li>Problem-solving</li>
					</ul>
				</div>
		</div>

	</div>
	</fieldset>
</body>
</html>