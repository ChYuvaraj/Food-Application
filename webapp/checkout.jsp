<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout Page</title>
    <link rel="stylesheet" href="checkout.css">
</head>
<body>
    <div class="container">
        <h2>Checkout</h2>
        <form action="CheckOutServlet" method="post">
            <div class="form-group">
                <label for="address">Delivery Address</label>
                <textarea name="address" id="address" required></textarea>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label for="street">Street</label>
                    <input type="text" name="street" id="street">
                </div>
                <div class="form-group">
                    <label for="locality">Locality</label>
                    <input type="text" name="locality" id="locality">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label for="district">District</label>
                    <input type="text" name="district" id="district">
                </div>
                <div class="form-group">
                    <label for="state">State</label>
                    <input type="text" name="state" id="state">
                </div>
            </div>
            
            <div class="form-group">
                <label for="country">Country</label>
                <input type="text" name="country" id="country">
            </div>
            
            <div class="form-group">
                <label for="paymentMethod">Payment Method</label>
                <select name="paymentMethod" id="paymentMethod">
                    <option value="CreditCard">Credit Card</option>
                    <option value="Cash">Cash on Delivery</option>
                    <option value="Upi">UPI</option>
                </select>
            </div>
            
            <button type="submit">Place Order</button>
        </form>
    </div>
</body>
</html>

