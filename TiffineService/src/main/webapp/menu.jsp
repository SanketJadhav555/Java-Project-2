<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tiffin Menu</title>
    <link rel="stylesheet" type="text/css" href="menu.css">
</head>
<body>
    <header>
        <h1>Tiffin Services</h1>
        <nav>
            <ul>
                <li><a href="Index.html">Home</a></li>
                <li><a href="logout">LogOut</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    <section class="menu">
        <h3>Our Menu</h3>
        <div class="menu-items">
            <div class="menu-item">
                <a href="order.jsp?item=vegetarian-thali">
                    <img src="vegetarian-thali.jpg" alt="Vegetarian Thali">
                </a>
                <h4>Vegetarian Thali</h4>
                <p>A complete meal consisting of dal, rice, vegetable curry, papad, and salad.</p>
                <p class="price">80</p>
            </div>
            <div class="menu-item">
                <a href="order.jsp?item=non-vegetarian-thali">
                    <img src="non-vegetarian-thali.jpg" alt="Non-Vegetarian Thali">
                </a>
                <h4>Non-Vegetarian Thali</h4>
                <p>A complete meal consisting of dal, rice, chicken curry, papad, and salad.</p>
                <p class="price">150</p>
            </div>
            <div class="menu-item">
                <a href="order.jsp?item=chole-bhature">
                    <img src="chole-bhature.jpg" alt="Chole Bhature">
                </a>
                <h4>Chole Bhature</h4>
                <p>A Punjabi delicacy made with chickpeas and served with fluffy fried bread.</p>
                <p class="price">70</p>
            </div>
            <div class="menu-item">
                <a href="order.jsp?item=rajma-chawal">
                    <img src="rajma-chawal.jpg" alt="Rajma Chawal">
                </a>
                <h4>Rajma Chawal</h4>
                <p>A north Indian specialty made with kidney beans and served with rice.</p>
                <p class="price">90</p>
            </div>
            <div class="menu-item">
                <a href="order.jsp?item=butter-chicken">
                    <img src="butter-chicken.jpg" alt="Butter Chicken">
                </a>
                <h4>Butter Chicken</h4>
                <p>A rich and creamy chicken curry made with tomato sauce and butter.</p>
                <p class="price">250</p>
            </div>
            <div class="menu-item">
                <a href="order.jsp?item=mutton-biryani">
                    <img src="mutton-biryani.jpg" alt="Mutton Biryani">
                </a>
                
                <h4>Mutton Biryani</h4>
                <p>A flavorful rice dish made with tender mutton and aromatic spices.</td>
                <p class="price" >300</p>
           </div>
    <footer>
        <p>@sanket.</p>
    </footer>
</body>
</html>
