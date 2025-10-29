<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            background: #fff;
            max-width: 500px;
            margin: 50px auto;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 24px;
            color: #333;
        }
        .details {
            margin-top: 20px;
        }
        .row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 12px;
            font-size: 16px;
        }
        .label {
            font-weight: bold;
            color: #333;
        }
        .value {
            color: #555;
        }
        .total {
            text-align: center;
            margin-top: 20px;
            font-weight: bold;
            font-size: 18px;
            color: #0078d7;
        }
        .btn-container {
            text-align: center;
            margin-top: 30px;
        }
        .btn {
            background: #0078d7;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .btn:hover {
            background: #005fa3;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Student Result Summary</h2>

    <div class="details">
        <div class="row"><span class="label">Java:</span><span class="value"><%= request.getParameter("java") %></span></div>
        <div class="row"><span class="label">SQL:</span><span class="value"><%= request.getParameter("sql") %></span></div>
        <div class="row"><span class="label">JSP:</span><span class="value"><%= request.getParameter("jsp") %></span></div>
        <div class="row"><span class="label">Servlets:</span><span class="value"><%= request.getParameter("servlets") %></span></div>
    </div>

    <%
        try {
            int java = Integer.parseInt(request.getParameter("java"));
            int sql = Integer.parseInt(request.getParameter("sql"));
            int jsp = Integer.parseInt(request.getParameter("jsp"));
            int servlets = Integer.parseInt(request.getParameter("servlets"));
            int total = java + sql + jsp + servlets;
            double avg = total / 4.0;
    %>
        <div class="total">Total Marks: <%= total %> / 400</div>
        <div class="total">Average: <%= String.format("%.2f", avg) %></div>
        <div class="total">Result: <%= (avg >= 40) ? "PASS ✅" : "FAIL ❌" %></div>
    <%
        } catch (Exception e) {
    %>
        <div class="total" style="color:red;">Error calculating result. Please check input values.</div>
    <%
        }
    %>

    <div class="btn-container">
        <button class="btn" onclick="window.location.href='subjectMarks.jsp'">Go Back</button>
    </div>
</div>
</body>
</html>
