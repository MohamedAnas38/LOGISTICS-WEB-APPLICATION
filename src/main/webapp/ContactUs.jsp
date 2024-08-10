<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Safest Logistics</title>
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

        .contact-info {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .contact-info div {
            flex: 1;
            min-width: 250px;
            margin: 10px;
        }

        .contact-info h3 {
            margin-bottom: 10px;
            font-size: 20px;
            color: #007BFF;
        }

        .contact-info p {
            font-size: 16px;
        }

        .contact-form {
            margin-top: 30px;
        }

        .contact-form form {
            display: flex;
            flex-direction: column;
        }

        .contact-form label {
            margin-bottom: 10px;
            font-weight: bold;
        }

        .contact-form input,
        .contact-form textarea {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .contact-form button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .contact-form button:hover {
            background-color: #0056b3;
        }

        .map {
            margin-top: 30px;
        }

        .map iframe {
            width: 100%;
            height: 400px;
            border: none;
            border-radius: 8px;
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
            <h2>Contact Us</h2>
            <p>We'd love to hear from you! Whether you have a question about our services, need assistance, or just want to give us feedback, feel free to get in touch with us through any of the methods below.</p>
        </section>

        <section class="section contact-info">
            <div>
                <h3>Address</h3>
                <p>123 Logistics Lane<br>Warehouse District<br>Cityville, ST 12345</p>
            </div>
            <div>
                <h3>Phone</h3>
                <p>+1 (800) 123-4567</p>
            </div>
            <div>
                <h3>Email</h3>
                <p>support@safestlogistics.com</p>
            </div>
            <div>
                <h3>Office Hours</h3>
                <p>Monday - Friday: 9:00 AM - 5:00 PM<br>Saturday: 10:00 AM - 2:00 PM<br>Sunday: Closed</p>
            </div>
        </section>

        <section class="section contact-form">
            <h2>Send Us a Message</h2>
            <form action="submit_contact_form.php" method="post">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Message</label>
                <textarea id="message" name="message" rows="5" required></textarea>

                <button type="submit">Submit</button>
            </form>
        </section>

        <section class="section map">
            <h2>Our Location</h2>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.0000000000005!2d144.9631579153183!3d-37.8141077797517!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0x5045675218ce6e0!2s123%20Logistics%20Lane%2C%20Warehouse%20District%2C%20Cityville%2C%20ST%2012345!5e0!3m2!1sen!2sau!4v1620912422421!5m2!1sen!2sau" allowfullscreen="" loading="lazy"></iframe>
        </section>
    </div>
</body>
</html>
