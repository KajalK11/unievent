<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 09-04-2025
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>University Event Management System</title>
    <style>
        :root {
            --primary-color: #4a6fa5;
            --secondary-color: #6b8cae;
            --accent-color: #ff7e5f;
            --light-color: #f8f9fa;
            --dark-color: #343a40;
            --admin-color: #d4a5a5;
            --faculty-color: #a5b8d4;
            --user-color: #a5d4b8;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, var(--light-color), var(--secondary-color));
            min-height: 100vh;
            color: var(--dark-color);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
        }

        header {
            background-color: var(--primary-color);
            color: white;
            padding: 20px 0;
            border-radius: 0 0 20px 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin-bottom: 40px;
        }

        h1 {
            margin: 0;
            font-size: 2.5rem;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        .tagline {
            font-style: italic;
            margin-top: 10px;
            opacity: 0.9;
        }

        .role-cards {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
            margin-top: 40px;
        }

        .card {
            background-color: white;
            border-radius: 15px;
            padding: 30px;
            width: 280px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.15);
        }

        .admin-card {
            border-top: 5px solid var(--admin-color);
        }

        .faculty-card {
            border-top: 5px solid var(--faculty-color);
        }

        .user-card {
            border-top: 5px solid var(--user-color);
        }

        .card-icon {
            font-size: 3rem;
            margin-bottom: 20px;
        }

        .admin-icon {
            color: var(--admin-color);
        }

        .faculty-icon {
            color: var(--faculty-color);
        }

        .user-icon {
            color: var(--user-color);
        }

        .card h2 {
            margin-top: 0;
            color: var(--primary-color);
        }

        .card p {
            color: #666;
            margin-bottom: 25px;
        }

        .btn {
            display: inline-block;
            padding: 10px 25px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s;
            border: none;
            cursor: pointer;
            font-size: 1rem;
            width: 100%;
        }

        .btn-admin {
            background-color: var(--admin-color);
            color: white;
        }

        .btn-admin:hover {
            background-color: #c58e8e;
        }

        .btn-faculty {
            background-color: var(--faculty-color);
            color: white;
        }

        .btn-faculty:hover {
            background-color: #8fa6c7;
        }

        .btn-user {
            background-color: var(--user-color);
            color: white;
        }

        .btn-user:hover {
            background-color: #8dc3a5;
        }

        footer {
            margin-top: 60px;
            padding: 20px;
            background-color: var(--primary-color);
            color: white;
            border-radius: 20px 20px 0 0;
        }

        .university-logo {
            max-width: 150px;
            margin-bottom: 20px;
        }

        /* Added form styles */
        .login-form {
            margin: 0;
            padding: 0;
            width: 100%;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<header>
    <div class="container">
        <img src="https://via.placeholder.com/150x50?text=University+Logo" alt="University Logo" class="university-logo">
        <h1>University Event Management System</h1>
        <p class="tagline">Connecting Campus Communities Through Events</p>
    </div>
</header>

<div class="container">
    <div class="role-cards">
        <!-- Admin Card -->
        <div class="card admin-card">
            <form class="login-form" action="adminDashboard.jsp" method="post">
                <div class="card-icon admin-icon">
                    <i class="fas fa-user-shield"></i>
                </div>
                <h2>Administrator</h2>
                <p>Manage events, users, and system settings with full administrative privileges.</p>
                <div class="form-group">
                    <label for="admin-username">Username:</label>
                    <input type="text" id="admin-username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="admin-password">Password:</label>
                    <input type="password" id="admin-password" name="password" required>
                </div>
                <button type="submit" class="btn btn-admin">Login as Admin</button>
            </form>
        </div>

        <!-- Faculty Card -->
        <div class="card faculty-card">
            <form class="login-form" action="facultyDashboard.jsp" method="post">
                <div class="card-icon faculty-icon">
                    <i class="fas fa-chalkboard-teacher"></i>
                </div>
                <h2>Faculty</h2>
                <p>Create and manage department events, view schedules, and track participation.</p>
                <div class="form-group">
                    <label for="faculty-username">Username:</label>
                    <input type="text" id="faculty-username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="faculty-password">Password:</label>
                    <input type="password" id="faculty-password" name="password" required>
                </div>
                <button type="submit" class="btn btn-faculty">Login as Faculty</button>
            </form>
        </div>

        <!-- User Card -->
        <div class="card user-card">
            <form class="login-form" action="userDashboard.jsp" method="post">
                <div class="card-icon user-icon">
                    <i class="fas fa-user-graduate"></i>
                </div>
                <h2>Student/User</h2>
                <p>Browse events, register for activities, and manage your event calendar.</p>
                <div class="form-group">
                    <label for="user-username">Username:</label>
                    <input type="text" id="user-username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="user-password">Password:</label>
                    <input type="password" id="user-password" name="password" required>
                </div>
                <button type="submit" class="btn btn-user">Login as User</button>
            </form>
        </div>
    </div>
</div>

<footer>
    <div class="container">
        <p>&copy; 2025 University Event Management System | Contact: events@university.edu</p>
    </div>
</footer>
</body>
</html>