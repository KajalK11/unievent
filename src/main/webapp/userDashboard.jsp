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
    <title>Student Dashboard | University Event Management</title>
    <style>
        :root {
            --primary-color: #a5d4b8;
            --secondary-color: #c8e8d4;
            --accent-color: #5fa57a;
            --light-color: #f5fff9;
            --dark-color: #3a4a3f;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: var(--light-color);
            color: var(--dark-color);
        }

        .user-header {
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

        .user-nav {
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

        .event-card {
            margin-bottom: 15px;
            padding: 15px;
            border-radius: 8px;
            background-color: var(--light-color);
            border: 1px solid var(--secondary-color);
        }

        .event-card h4 {
            margin-top: 0;
            color: var(--dark-color);
        }

        .event-meta {
            display: flex;
            justify-content: space-between;
            color: #666;
            font-size: 0.9rem;
            margin: 10px 0;
        }

        .register-btn {
            background-color: var(--accent-color);
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }

        .register-btn:hover {
            background-color: #4d8a66;
        }

        .registered-btn {
            background-color: var(--primary-color);
            cursor: default;
        }

        .calendar {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        .calendar th, .calendar td {
            border: 1px solid var(--secondary-color);
            padding: 8px;
            text-align: center;
        }

        .calendar th {
            background-color: var(--secondary-color);
        }

        .event-day {
            background-color: #e0f0e8;
            font-weight: bold;
        }

        .logout-btn {
            background-color: var(--accent-color);
            color: white;
            float: right;
            margin-top: -50px;
        }

        .search-bar {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ddd;
            margin-bottom: 20px;
            font-size: 1rem;
        }
    </style>
</head>
<body>
<header class="user-header">
    <div class="container">
        <h1>Student Dashboard</h1>
        <button class="nav-btn logout-btn" onclick="location.href='index.jsp'">Logout</button>
    </div>
</header>

<div class="container">
    <div class="welcome-message">
        <h2>Welcome, Sarah Johnson!</h2>
        <p>Discover and register for exciting university events.</p>
    </div>

    <div class="user-nav">
        <button class="nav-btn">All Events</button>
        <button class="nav-btn">My Events</button>
        <button class="nav-btn">Calendar</button>
        <button class="nav-btn">Recommendations</button>
    </div>

    <input type="text" class="search-bar" placeholder="Search events...">

    <div class="dashboard-section">
        <div class="card">
            <h3>Upcoming Events</h3>
            <div class="event-card">
                <h4>Tech Symposium 2023</h4>
                <div class="event-meta">
                    <span>Nov 15, 2023</span>
                    <span>Computer Science Dept.</span>
                </div>
                <p>Annual technology conference featuring industry leaders and workshops.</p>
                <button class="register-btn">Register Now</button>
            </div>

            <div class="event-card">
                <h4>Career Fair</h4>
                <div class="event-meta">
                    <span>Nov 22, 2023</span>
                    <span>Career Services</span>
                </div>
                <p>Connect with top employers from various industries.</p>
                <button class="register-btn registered-btn">Registered</button>
            </div>

            <div class="event-card">
                <h4>Music Festival</h4>
                <div class="event-meta">
                    <span>Dec 05, 2023</span>
                    <span>Arts Department</span>
                </div>
                <p>Annual music festival featuring student and professional performances.</p>
                <button class="register-btn">Register Now</button>
            </div>
        </div>

        <div class="card">
            <h3>My Events Calendar</h3>
            <table class="calendar">
                <thead>
                <tr>
                    <th>Sun</th>
                    <th>Mon</th>
                    <th>Tue</th>
                    <th>Wed</th>
                    <th>Thu</th>
                    <th>Fri</th>
                    <th>Sat</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>6</td>
                    <td>7</td>
                    <td>8</td>
                    <td>9</td>
                    <td>10</td>
                    <td>11</td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>13</td>
                    <td>14</td>
                    <td class="event-day">15*</td>
                    <td>16</td>
                    <td>17</td>
                    <td>18</td>
                </tr>
                <tr>
                    <td>19</td>
                    <td>20</td>
                    <td>21</td>
                    <td class="event-day">22*</td>
                    <td>23</td>
                    <td>24</td>
                    <td>25</td>
                </tr>
                <tr>
                    <td>26</td>
                    <td>27</td>
                    <td>28</td>
                    <td>29</td>
                    <td>30</td>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
            <p style="font-size:0.8rem; margin-top:10px;">* You have registered events</p>
        </div>
    </div>
</div>
</body>
</html>
