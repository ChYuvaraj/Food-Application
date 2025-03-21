<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.foodapp.model.User" %>
<%@ page import="com.foodapp.model.Restaurant" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Delivery - Restaurants</title>
    <link rel="stylesheet" href="restaurant.css">
</head>
<body>
    <% 
        User user = (User) session.getAttribute("user");
        ArrayList<Restaurant> resList = (ArrayList<Restaurant>) session.getAttribute("resList");
    %>

    <nav class="navbar">
        <div class="nav-container">
            <div class="nav-left">
                <a href="#" class="logo">FoodXpress</a>
            </div>
            <div class="nav-center">
                <form class="search-bar" action="SearchServlet" method="get">
                    <input type="text" name="query" placeholder="Search restaurants...">
                    <button type="submit">Search</button>
                </form>
            </div>
            <div class="nav-right">
                <!-- <a href="CartServlet" class="cart-link">Cart</a> -->
                <div class="profile-menu">
                    <span class="profile-initial"><%= user.getUsername().substring(0, 1).toUpperCase() %></span>
                    <span class="username"><%= user.getUsername() %></span>
                    <div class="dropdown-menu">
                        <!-- <a href="ProfileServlet">Profile</a> -->
                        <!-- <a href="OrdersServlet">Orders</a> -->
                        <!-- <a href="LogoutServlet">Logout</a> -->
                        <a href="login.jsp">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <main class="restaurant-grid">
        <% for (Restaurant r : resList) { %>
            <article class="restaurant-card">
                <a href="MenuServlet?restaurantId=<%= r.getRestaurantId() %>">
                    <div class="card-image">
                        <img src="<%= r.getImagePath() %>" alt="<%= r.getName() %>">
                    </div>
                    <div class="card-content">
                        <h2 class="restaurant-name"><%= r.getName() %></h2>
                        <div class="card-details">
                            <span class="rating"><%= r.getRatings() %>★</span>
                            <span class="delivery-time"><%= r.getDeliveryTime() %> mins</span>
                        </div>
                        <p class="address"><%= r.getAddress() %></p>
                    </div>
                </a>
            </article> 
        <% } %>
    </main>
</body>
</html>
