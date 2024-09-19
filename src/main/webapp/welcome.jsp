<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel The World</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-image: url('images/Travel.jpeg'); /* Replace with the path to your image */
            background-size: cover;
            background-position: center;
            height: 100vh;
            color: #fff;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 50px;
        }

        /* Logo styling */
        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        nav ul {
            display: flex;
            list-style: none;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
        }

        /* Instagram button */
        .instagram-btn {
            padding: 10px 20px;
            border: 2px solid white;
            border-radius: 20px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            color: black;
            background-color:white;
        }

        /* Main section styling */
        .main-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: calc(100vh - 80px);
            text-align: center;
        }

        .main-content h1 {
            font-size: 60px;
            letter-spacing: 2px;
            margin-bottom: 10px;
        }

        .main-content img {
            max-width: 100%;
            height: auto;
        }

        .main-content p {
            font-size: 24px;
            font-weight: bold;
            margin-top: 20px;
        }
    </style>
</head>
<body>
	
	<%
        // Retrieve the session object
        HttpSession currentSession = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (currentSession != null && currentSession.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) currentSession.getAttribute("username");
    %>
	
    <!-- Header Section -->
    <header>
        <div class="logo">Travel Buddy✈️🧳</div>
        <nav>
            <ul>
                <li><a href="#">Top Destination</a></li>
                <li><a href="#">Travel Guide</a></li>
                <li><a href="#">About Me</a></li>
            </ul>
        </nav>
        <a href="https://www.instagram.com/ashwani_puri1/" class="instagram-btn">Instagram</a>
    </header>

    <!-- Main Section -->
    <section class="main-content">
    	<h1>Welcome, <%= username %>!!</h1>
        <h2><i>Travel The World</i></h2>
        <p>Explore with passion, embrace the journey</p>
    </section>

	<%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>
