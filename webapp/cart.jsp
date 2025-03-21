<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.foodapp.cart.Cart" %>
<%@ page import="com.foodapp.cart.CartItem" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Cart</title>
<link rel="stylesheet" href="cart.css">
</head>
<body>
    <h1>Your Cart</h1>
    <%
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null || cart.getItems() == null || cart.getItems().isEmpty()) {
    %>
        <div class="empty-cart">
            <p>Your cart is empty.</p>
            <a href="menu.jsp">Back to Menu</a>
        </div>
    <%
        } else {
            int restaurantId = 0;
            if (!cart.getItems().isEmpty()) {
                restaurantId = cart.getItems().values().iterator().next().getRestaurantId();
            }

            double totalAmount = 0;
            for (CartItem item : cart.getItems().values()) {
                totalAmount += item.getPrice() * item.getQuantity();
    %>
                <div class="cart-item">
                    <h3><%= item.getName() %></h3>
                    <p>Price: Rs. <%= item.getPrice() %></p>
                    <p>Total: Rs. <%= item.getPrice() * item.getQuantity() %></p>

                    <!-- Update Quantity -->
                    <form action="CartServlet" method="post">
                        <input type="hidden" name="action" value="update">
                        <input type="hidden" name="itemId" value="<%= item.getItemId() %>">
                        <button type="submit" name="quantity" value="<%= item.getQuantity() - 1 %>">-</button>
                        <span><%= item.getQuantity() %></span>
                        <button type="submit" name="quantity" value="<%= item.getQuantity() + 1 %>">+</button>
                    </form>

                    <!-- Remove Item -->
                    <form action="CartServlet" method="post">
                        <input type="hidden" name="action" value="remove">
                        <input type="hidden" name="itemId" value="<%= item.getItemId() %>">
                        <button class="remove-button" type="submit">Remove</button>
                    </form>
                </div> 
    <%
            }
    %>
            <div class="total-amount">Total Amount: Rs. <%= totalAmount %></div>

            <div class="cart-actions">
                <a href="MenuServlet?restaurantId=<%= restaurantId %>">Add More Items</a>
                <a href="checkout.jsp">Proceed to Checkout</a>
            </div>
    <%
        }
    %>
</body>
</html>
