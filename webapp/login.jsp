<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
	<!-- <div class="container">
        <p class="welcome-text">Welcome to <span class="brand">FoodXpress</span>, Tasty Bites, Right at Your Fingertips!</p> -->
    <div class="wrapper">
        <div class="title">Login Form</div>
        <form action="LoginServlet" method="post">
            <div class="field">
                <input type="text" name="email" required>
                <label>Email</label>
            </div>
            <div class="field">
                <input type="password" name="password" required>
                <label>Password</label>
            </div>
            <div class="field">
                <input type="submit" value="Login">
            </div>
            <div class="signup-link">
                Not a member? <a href="register.jsp">Signup now</a>
            </div>
        </form>
    </div>
    <!-- </div> -->
</body>
</html>