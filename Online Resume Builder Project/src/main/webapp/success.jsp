<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	 <title>Resume</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        .section {
            margin-bottom: 30px;
        }

        h1, h2, h3, p {
            margin: 0;
        }

        h1 {
            font-size: 24px;
        }

        h2 {
            font-size: 20px;
        }

        h3 {
            font-size: 18px;
        }

        p {
            font-size: 14px;
        }

        .section-title {
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
	<fieldset align="center" >
	
		<div class="section">
        <h1><%= name %></h1>
        <p><%= email %></p>
        <p><%= phone %></p>
        <p><%= address %></p>
    </div>

    <div class="section">
        <h2 class="section-title">Objective</h2>
        <p><%= objective %></p>
    </div>

    <div class="section">
        <h2 class="section-title">Education</h2>
        <h3><%= degree %></h3>
        <p><%=university %></p>
        <p><%= year %></p>
    </div>

    <div class="section">
        <h2 class="section-title">Work Experience</h2>
        <h3><%= company %></h3>
        <p><%= position %></p>
        <p><%= startDate %> - <%=endDate %></p>
    </div>

    <div class="section">
        <h2 class="section-title">Skills</h2>
        <p><%= skills %></p>
    </div>
    </fieldset>
</body>
</html>