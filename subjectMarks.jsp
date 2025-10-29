<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Subject Marks Entry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            background: #fff;
            max-width: 400px;
            margin: 50px auto;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        h2 { text-align: center; margin-bottom: 24px; color: #333; }
        label { display: block; margin-bottom: 6px; color: #555; }
        input {
            width: 100%;
            padding: 8px 10px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 15px;
        }
        button {
            width: 100%;
            padding: 10px;
            background: #0078d7;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover { background: #005fa3; }
    </style>
</head>
<body>
<div class="container">
    <h2>Enter Subject Marks</h2>
    <form action="submission.jsp" method="post">
        <label for="java">Java</label>
        <input type="number" id="java" name="java" min="0" max="100" required>

        <label for="sql">SQL</label>
        <input type="number" id="sql" name="sql" min="0" max="100" required>

        <label for="jsp">JSP</label>
        <input type="number" id="jsp" name="jsp" min="0" max="100" required>

        <label for="servlets">Servlets</label>
        <input type="number" id="servlets" name="servlets" min="0" max="100" required>

        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
