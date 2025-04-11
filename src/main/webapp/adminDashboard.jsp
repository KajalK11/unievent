<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 09-04-2025
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard | University Event Management</title>
  <style>
    :root {
      --primary-color: #d4a5a5;
      --secondary-color: #e8c8c8;
      --accent-color: #a55f5f;
      --light-color: #fff5f5;
      --dark-color: #4a3a3a;
    }

    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      margin: 0;
      padding: 0;
      background-color: var(--light-color);
      color: var(--dark-color);
    }

    .admin-header {
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

    .admin-nav {
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

    .recent-events {
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

    .logout-btn {
      background-color: var(--accent-color);
      color: white;
      float: right;
      margin-top: -50px;
    }
  </style>
</head>
<body>
<header class="admin-header">
  <div class="container">
    <h1>Admin Dashboard</h1>
    <button class="nav-btn logout-btn" onclick="location.href='index.jsp'">Logout</button>
  </div>
</header>

<div class="container">
  <div class="welcome-message">
    <h2>Welcome, Admin!</h2>
    <p>You have full access to manage all aspects of the University Event Management System.</p>
  </div>

  <div class="admin-nav">
    <button class="nav-btn">Manage Events</button>
    <button class="nav-btn">User Management</button>
    <button class="nav-btn">Faculty Management</button>
    <button class="nav-btn">Reports</button>
    <button class="nav-btn">System Settings</button>
  </div>

  <div class="dashboard-section">
    <div class="card">
      <h3>System Overview</h3>
      <div class="stats">
        <div class="stat-item">
          <div class="stat-value">42</div>
          <div class="stat-label">Upcoming Events</div>
        </div>
        <div class="stat-item">
          <div class="stat-value">128</div>
          <div class="stat-label">Active Users</div>
        </div>
        <div class="stat-item">
          <div class="stat-value">35</div>
          <div class="stat-label">Faculty Members</div>
        </div>
      </div>
    </div>

    <div class="card">
      <h3>Recent Activities</h3>
      <ul>
        <li>New event "Career Fair" created by Faculty of Business</li>
        <li>User "john.doe" registered for "Tech Symposium"</li>
        <li>System maintenance scheduled for Friday</li>
        <li>3 new user registrations today</li>
      </ul>
    </div>
  </div>

  <div class="card recent-events">
    <h3>Upcoming Events Requiring Approval</h3>
    <table>
      <thead>
      <tr>
        <th>Event Name</th>
        <th>Organizer</th>
        <th>Date</th>
        <th>Actions</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td>Annual Science Fair</td>
        <td>Faculty of Science</td>
        <td>2023-11-15</td>
        <td>
          <button class="action-btn edit-btn">Approve</button>
          <button class="action-btn delete-btn">Reject</button>
        </td>
      </tr>
      <tr>
        <td>Music Festival</td>
        <td>Arts Department</td>
        <td>2023-12-05</td>
        <td>
          <button class="action-btn edit-btn">Approve</button>
          <button class="action-btn delete-btn">Reject</button>
        </td>
      </tr>
      <tr>
        <td>Alumni Meet</td>
        <td>Alumni Association</td>
        <td>2023-11-28</td>
        <td>
          <button class="action-btn edit-btn">Approve</button>
          <button class="action-btn delete-btn">Reject</button>
        </td>
      </tr>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>