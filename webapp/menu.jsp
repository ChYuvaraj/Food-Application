<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.foodapp.model.Menu" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurant Menu</title>
<link rel="stylesheet" href="menu.css">
</head>
<body>
    <% ArrayList<Menu> menus = (ArrayList<Menu>) request.getAttribute("menus"); %>
    <% if (menus != null && !menus.isEmpty()) { %>
    <div class="menu-container">
        <% for (Menu m : menus) { %>
        <div class="menu-item">
            <img src="<%= m.getImagePath() %>" alt="<%= m.getName() %>">
            <h2><%= m.getName() %></h2>
            <p><%= m.getDescription() %></p>
            <p class="price">Rs.<%= String.format("%.2f", m.getPrice()) %></p>
            
            <form action="CartServlet" method="post">
                <input type="hidden" name="action" value="add">
                <input type="hidden" name="itemId" value="<%= m.getMenuId() %>">
               <!--  <input type="number" name="quantity" value="1" min="1"> -->
                <button class="add-to-cart" type="submit">Add To Cart</button>
            </form>
        </div>
        <% } %>
    </div>
    <% } else { %>
    <p class="no-menu">No menu items available for this restaurant.</p>
    <% } %>
</body>
</html>
