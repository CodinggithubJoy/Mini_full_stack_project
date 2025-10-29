<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome - Student Registration</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: purple;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: #ffffff;
            padding: 40px 60px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            text-align: center;
        }
        h1 {
            color: #1a3c6e;
            font-size: 2em;
            margin-bottom: 20px;
        }
        p {
            color: #4a5568;
            font-size: 1.1em;
            margin-bottom: 35px;
        }
        .register-btn {
            background: linear-gradient(90deg, #0078d7, #00a6fb);
            color: #ffffff;
            border: none;
            padding: 14px 36px;
            border-radius: 8px;
            font-size: 1.1em;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .register-btn:hover {
            background: linear-gradient(90deg, #005fa3, #0084c9);
            box-shadow: 0 4px 12px rgba(0, 120, 215, 0.4);
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to Student Registration Portal</h1>
    <p>Please click the button below to register as a new student.</p>
    <button class="register-btn" onclick="window.location.href='register.html'">Register Now</button>
</div>
</body>
</html>
