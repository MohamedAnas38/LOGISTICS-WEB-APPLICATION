<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services - Safest Logistics</title>
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

        .service-section {
            margin-bottom: 30px;
        }

        .service-section h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #007BFF;
        }

        .service {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .service-icon {
            font-size: 40px;
            margin-right: 20px;
            color: #007BFF;
        }

        .service-description {
            max-width: 900px;
        }

        .service-description h3 {
            font-size: 22px;
            margin-bottom: 10px;
        }

        .service-description p {
            font-size: 16px;
            margin-bottom: 10px;
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
        <section class="service-section">
            <h2>Our Services</h2>
            <div class="service">
                <div class="service-icon">&#128666;</div>
                <div class="service-description">
                    <h3>Shipment Management</h3>
                    <p>We provide comprehensive shipment management services, including tracking, scheduling, and real-time updates to ensure your goods are delivered on time and in perfect condition.</p>
                </div>
            </div>
            <div class="service">
                <div class="service-icon">&#128230;</div>
                <div class="service-description">
                    <h3>Real-time Tracking</h3>
                    <p>Stay informed with our real-time tracking system, allowing you to monitor your shipments every step of the way. Get instant notifications and updates on the status and location of your goods.</p>
                </div>
            </div>
            <div class="service">
                <div class="service-icon">&#128736;</div>
                <div class="service-description">
                    <h3>Secure Storage</h3>
                    <p>Our secure storage facilities ensure that your goods are kept safe and secure. With advanced security measures and climate-controlled environments, we provide optimal conditions for your items.</p>
                </div>
            </div>
            <div class="service">
                <div class="service-icon">&#128197;</div>
                <div class="service-description">
                    <h3>Custom Logistics Solutions</h3>
                    <p>We understand that every business has unique logistics needs. Our team works closely with you to develop customized solutions that meet your specific requirements and goals.</p>
                </div>
            </div>
            <div class="service">
                <div class="service-icon">&#128178;</div>
                <div class="service-description">
                    <h3>Cost-Effective Shipping</h3>
                    <p>Our cost-effective shipping solutions are designed to help you save money without compromising on service quality. We offer competitive rates and multiple shipping options to suit your budget.</p>
                </div>
            </div>
            <div class="service">
                <div class="service-icon">&#128225;</div>
                <div class="service-description">
                    <h3>Customer Support</h3>
                    <p>Our dedicated customer support team is available 24/7 to assist you with any inquiries or issues. We are committed to providing exceptional service and ensuring your satisfaction.</p>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
