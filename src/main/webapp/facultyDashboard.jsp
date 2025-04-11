<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 09-04-2025
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Dashboard | University Event Management</title>
    <style>
        :root {
            --primary-color: #a5b8d4;
            --secondary-color: #c8d4e8;
            --accent-color: #5f7aa5;
            --light-color: #f5f9ff;
            --dark-color: #3a3f4a;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: var(--light-color);
            color: var(--dark-color);
        }

        .faculty-header {
            background-color: var(--primary-color);
            color: white;
            padding: 15px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .welcome-message {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            margin: 20px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
            border-left: 5px solid var(--accent-color);
        }

        .faculty-nav {
            display: flex;
            gap: 15px;
            margin-bottom: 30px;
            flex-wrap: wrap;
        }

        .nav-btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            transition: all 0.3s;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .nav-btn:hover {
            background-color: var(--accent-color);
            transform: translateY(-2px);
        }

        .dashboard-section {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .card {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.08);
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            color: var(--accent-color);
            margin-top: 0;
            border-bottom: 1px solid #eee;
            padding-bottom: 10px;
        }

        .stats {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
        }

        .stat-item {
            text-align: center;
        }

        .stat-value {
            font-size: 1.5rem;
            font-weight: bold;
            color: var(--primary-color);
        }

        .stat-label {
            font-size: 0.8rem;
            color: #777;
        }

        .my-events {
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #eee;
        }

        th {
            background-color: var(--secondary-color);
            color: var(--dark-color);
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        .action-btn {
            padding: 5px 10px;
            border-radius: 4px;
            border: none;
            cursor: pointer;
            margin-right: 5px;
            font-size: 0.8rem;
        }

        .edit-btn {
            background-color: #a5d4b8;
            color: #1a3a2a;
        }

        .delete-btn {
            background-color: #d4a5a5;
            color: #3a1a1a;
        }

        .create-btn {
            background-color: var(--accent-color);
            color: white;
        }

        .logout-btn {
            background-color: var(--accent-color);
            color: white;
            float: right;
            margin-top: -50px;
        }
    </style>
</head>
<body>
<header class="faculty-header">
    <div class="container">
        <h1>Faculty Dashboard</h1>
        <button class="nav-btn logout-btn" onclick="location.href='index.jsp'">Logout</button>
    </div>
</header>

<div class="container">
    <div class="welcome-message">
        <h2>Welcome, Dr. Smith!</h2>
        <p>Manage your department events and view student participation.</p>
    </div>

    <div class="faculty-nav">
        <button class="nav-btn">Create New Event</button>
        <button class="nav-btn">My Events</button>
        <button class="nav-btn">Student Participation</button>
        <button class="nav-btn">Department Calendar</button>
    </div>

    <div class="dashboard-section">
        <div class="card">
            <h3>My Events Overview</h3>
            <div class="stats">
                <div class="stat-item">
                    <div class="stat-value">5</div>
                    <div class="stat-label">Upcoming Events</div>
                </div>
                <div class="stat-item">
                    <div class="stat-value">3</div>
                    <div class="stat-label">Pending Approval</div>
                </div>
                <div class="stat-item">
                    <div class="stat-value">87</div>
                    <div class="stat-label">Total Registrations</div>
                </div>
            </div>
        </div>

        <div class="card">
            <h3>Quick Actions</h3>
            <button class="action-btn create-btn" style="width:100%;margin-bottom:10px;">Create New Event</button>
            <button class="action-btn edit-btn" style="width:100%;margin-bottom:10px;">View Attendance Reports</button>
            <button class="action-btn" style="width:100%;background-color:var(--secondary-color);">Manage Event Resources</button>
        </div>
    </div>

    <div class="card my-events">
        <h3>My Upcoming Events</h3>
        <table>
            <thead>
            <tr>
                <th>Event Name</th>
                <th>Date</th>
                <th>Status</th>
                <th>Registrations</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Computer Science Workshop</td>
                <td>2023-11-10</td>
                <td>Approved</td>
                <td>42</td>
                <td>
                    <button class="action-btn edit-btn">Manage</button>
                    <button class="action-btn">View</button>
                </td>
            </tr>
            <tr>
                <td>Research Symposium</td>
                <td>2023-11-22</td>
                <td>Pending</td>
                <td>-</td>
                <td>
                    <button class="action-btn edit-btn">Edit</button>
                    <button class="action-btn delete-btn">Cancel</button>
                </td>
            </tr>
            <tr>
                <td>Alumni Networking</td>
                <td>2023-12-03</td>
                <td>Approved</td>
                <td>25</td>
                <td>
                    <button class="action-btn edit-btn">Manage</button>
                    <button class="action-btn">View</button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>