<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register Form</title>
    <link rel="stylesheet" href="registerStyle.css">
</head>
<body>
    <div class="wrapper">
        <div class="title">Register Form</div>
        <form action="RegisterData" method="post">
            <div class="field">
                <input type="text" name="username" required>
                <label>Username</label>
            </div>
            <div class="field">
                <input type="text" name="email" required>
                <label>Email Address</label>
            </div>
            <div class="field">
                <input type="text" name="address" required>
                <label>Address</label>
            </div>
            <div class="field">
                <input type="password" name="password" required>
                <label>Password</label>
            </div>
            <div class="field">
                <input type="password" name="cpassword" required>
                <label>Confirm Password</label>
            </div>
            <div class="field">
                <input type="submit" value="Register">
            </div>
            <div class="signup-link">
                Already a member? <a href="login.jsp">Login here</a>
            </div>
        </form>
    </div>
</body>
</html>