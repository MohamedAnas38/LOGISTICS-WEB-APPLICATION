<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Safest Logistics</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
        }

        header {
            width: 100%;
            background-color: #333;
            color: #fff;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .company-name {
            font-size: 24px;
            font-weight: bold;
        }

        .menu {
            position: relative;
        }

        .menu-button {
            background-color: #007BFF;
            border: none;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .menu-content {
            display: none;
            position: absolute;
            top: 100%;
            right: 0;
            background-color: #fff;
            color: #333;
            border-radius: 5px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
            width: 200px;
            z-index: 10;
        }

        .menu-content a {
            display: block;
            padding: 10px;
            color: #333;
            text-decoration: none;
        }

        .menu-content a:hover {
            background-color: #f1f1f1;
        }

        .menu:hover .menu-content {
            display: block;
        }

        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .section {
            margin-bottom: 30px;
        }

        .section h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #007BFF;
        }

        .section p {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .team-member {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .team-member img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
            margin-right: 20px;
        }

        .team-member h3 {
            font-size: 22px;
            margin-bottom: 5px;
        }

        .team-member p {
            font-size: 16px;
        }
    </style>
</head>
<body>
    <header>
        <div class="company-name">Safest Logistics</div>
        <div class="menu">
            <button class="menu-button">Menu</button>
            <div class="menu-content">
                <a href="index.html">Home</a>
                <a href="services.html">Services</a>
                <a href="about.html">About Us</a>
                <a href="contact.html">Contact Us</a>
            </div>
        </div>
    </header>

    <div class="container">
        <section class="section">
            <h2>About Us</h2>
            <p>Welcome to Safest Logistics, your trusted partner in safe and reliable logistics solutions. We are dedicated to providing exceptional logistics services to businesses of all sizes, ensuring that your shipments are managed efficiently and delivered on time.</p>
        </section>

        <section class="section">
            <h2>Our Mission</h2>
            <p>Our mission is to deliver superior logistics solutions that meet the evolving needs of our clients. We strive to provide innovative, cost-effective, and reliable services that enhance the efficiency of your supply chain and contribute to your business success.</p>
        </section>

        <section class="section">
            <h2>Our Vision</h2>
            <p>Our vision is to be the leading provider of logistics services, recognized for our commitment to quality, customer satisfaction, and innovation. We aim to build long-lasting relationships with our clients based on trust, transparency, and mutual success.</p>
        </section>

        <section class="section">
            <h2>Our Values</h2>
            <p>We are guided by a set of core values that define who we are and how we operate:</p>
            <ul>
                <li><strong>Integrity:</strong> We conduct our business with honesty and integrity, ensuring that our clients can trust us with their logistics needs.</li>
                <li><strong>Customer Focus:</strong> We put our clients at the center of everything we do, striving to exceed their expectations with every shipment.</li>
                <li><strong>Innovation:</strong> We embrace innovation and continuously seek new ways to improve our services and deliver value to our clients.</li>
                <li><strong>Excellence:</strong> We are committed to excellence in every aspect of our business, from customer service to operational efficiency.</li>
                <li><strong>Teamwork:</strong> We believe in the power of teamwork and collaboration, working together to achieve our goals and deliver the best results for our clients.</li>
            </ul>
        </section>

        <section class="section">
            <h2>Meet Our Team</h2>
            <div class="team-member">
                <img src="team-member1.jpg" alt="Team Member 1">
                <div>
                    <h3>John Doe</h3>
                    <p>CEO & Founder</p>
                </div>
            </div>
            <div class="team-member">
                <img src="team-member2.jpg" alt="Team Member 2">
                <div>
                    <h3>Jane Smith</h3>
                    <p>Chief Operating Officer</p>
                </div>
            </div>
            <div class="team-member">
                <img src="team-member3.jpg" alt="Team Member 3">
                <div>
                    <h3>Mike Johnson</h3>
                    <p>Head of Logistics</p>
                </div>
            </div>
            <!-- Add more team members as needed -->
        </section>
    </div>
</body>
</html>
