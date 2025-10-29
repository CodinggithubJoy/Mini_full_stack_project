<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration Details</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f4; }
        .container {
            max-width: 400px;
            margin: 40px auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 8px #ccc;
        }
        h2 { text-align: center; color: #333; }
        .details { margin-top: 20px; }
        .details label { font-weight: bold; display: inline-block; width: 100px; }
        .details span { color: #555; }
        .row { margin-bottom: 12px; }
        .btn-container { text-align: center; margin-top: 25px; }
        .btn-submit {
            background-color: #4CAF50;
            color: white;
            padding: 10px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .btn-submit:hover { background-color: #45a049; }
    </style>
</head>
<body>
<div class="container">
    <h2>Student Details</h2>
    <div class="details">
        <div class="row"><label>Name:</label><span id="name"></span></div>
        <div class="row"><label>Gmail:</label><span id="gmail"></span></div>
        <div class="row"><label>Password:</label><span id="password"></span></div>
        <div class="row"><label>Mobile:</label><span id="mobile"></span></div>
        <div class="row"><label>DOB:</label><span id="dob"></span></div>
        <div class="row"><label>College:</label><span id="college"></span></div>
        <div class="row"><label>Address:</label><span id="add"></span></div>
    </div>

    <div class="btn-container">
        <form action="subjectMarks.jsp" method="get">
            <input type="submit" value="Go to Feedback form" class="btn-submit">
        </form>
    </div>
</div>

<script>
    window.onload = () => {
        document.getElementById('name').textContent = localStorage.getItem("name") || "—";
        document.getElementById('gmail').textContent = localStorage.getItem("gmail") || "—";
        document.getElementById('password').textContent = localStorage.getItem("password") || "—";
        document.getElementById('mobile').textContent = localStorage.getItem("mobile") || "—";
        document.getElementById('dob').textContent = localStorage.getItem("dob") || "—";
        document.getElementById('college').textContent = localStorage.getItem("college") || "—";
        document.getElementById('add').textContent = localStorage.getItem("add") || "—";
    };
</script>

</body>
</html>
