<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Shipment - Safest Logistics</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-image: url("https://images.pexels.com/photos/4481259/pexels-photo-4481259.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 1.5rem;
        }

        .menu-toggle {
            background: none;
            border: none;
            color: #fff;
            cursor: pointer;
            font-size: 1rem;
        }

        .sidebar {
            position: fixed;
            left: -250px;
            top: 0;
            bottom: 0;
            width: 250px;
            background-color: #333;
            transition: left 0.3s ease;
            z-index: 1000;
        }

        .sidebar.open {
            left: 0;
        }

        nav ul {
            list-style-type: none;
            padding: 20px;
        }

        nav ul li {
            margin-bottom: 10px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 1rem;
        }

        .container {
            background-color: #fffcfc40;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            margin: 100px auto 20px auto; /* Adjusted for header height */
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            font-weight: bold;
            background-color: #fffcfc40;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        .footer {
            background-color: #fffcfc40;
            padding: 10px 20px;
            text-align: center;
            box-shadow: 0 -1px 10px rgba(0, 0, 0, 0.1);
        }

        .footer-links {
            text-align: center;
            margin-bottom: 10px;
        }

        .footer-links a {
            margin: 0 10px;
            color: #333;
            text-decoration: none;
        }

        .add-unit {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }

        .add-unit:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <header>
        <div class="logo">
            Safest Logistics
        </div>
        <button class="menu-toggle" aria-expanded="false" aria-controls="sidebar">
            Menu
        </button>
    </header>

    <div id="sidebar" class="sidebar">
        <nav>
            <ul>
                <li><a href="bookshipment.jsp">Book Shipment</a></li>
                <li><a href="ViewShipmentStatus.jsp">Shipment Status</a></li>
                <li><a href="UpdateUserDetails.jsp?id=">Update Own Details</a></li>
                <li><a href="#cancel-shipment">Cancel Shipment</a></li>
                <li><a href="logout">Logout</a></li>
                <!-- Link to logout.php for logout functionality -->
            </ul>
        </nav>
    </div>

    <div class="container">
        <h2>Book Shipment</h2>
        <form action="BookShipment" method="post" id="shipmentForm">
            <input type="hidden" name="id">
            
            <label for="fromname">Sender Name:</label>
            <input type="text" id="fromname" name="fromname" required>
            
            <label for="fromcontact">Sender Number or Email ID:</label>
            <input type="text" id="fromcontact" name="fromcontact" required>
            
            <label for="depature">PickUp Point:</label>
            <input type="text" id="depature" name="depature" required>
            
            <label for="toname">Reciever Name:</label>
            <input type="text" id="toname" name="toname" required>
            
            <label for="tocontact">Reciever Number or Email ID:</label>
            <input type="text" id="tocontact" name="tocontact" required>
            
            <label for="destination">Drop Point:</label>
            <input type="text" id="destination" name="destination" required>

            <label for="address">Delivery Address:</label>
            <textarea id="address" name="address" rows="3" required></textarea>
            
            <label for="shipmenttype">Shipment Type:</label>
            <select id="shipmenttype" name="shipmenttype" required>
                <option value="box">Box</option>
                <option value="crates">Crates</option>
                <option value="container">Container</option>
            </select>
            
            <label for="weight">Weight (kg):</label>
            <input type="number" id="weight" name="weight" required>

            <div id="additional-units"></div>

            <button type="button" class="add-unit" onclick="addUnit()">Add Another Unit</button>
            
            <input type="submit" value="Book Shipment">
        </form>

        <h3>Total Price: <span id="total-price">0</span> USD</h3>
    </div>

    <footer class="footer">
        <div class="footer-links">
            <a href="#">Terms of Service</a>
            <a href="#">Privacy Policy</a>
        </div>
        <p>&copy; 2024 Safest Logistics. All rights reserved.</p>
    </footer>

    <script>
        const pricePerKg = 5; // Set price per kg
        const menuToggle = document.querySelector('.menu-toggle');
        const sidebar = document.getElementById('sidebar');
        const totalPriceElement = document.getElementById('total-price');

        menuToggle.addEventListener('click', () => {
            const expanded = menuToggle.getAttribute('aria-expanded') === 'true' || false;
            menuToggle.setAttribute('aria-expanded', !expanded);
            sidebar.classList.toggle('open');
        });

        // Function to calculate total price
        function calculatePrice() {
            const weightInputs = document.querySelectorAll('input[name="weight[]"], #weight');
            let totalWeight = 0;
            weightInputs.forEach(input => {
                totalWeight += parseFloat(input.value) || 0;
            });

            const totalPrice = totalWeight * pricePerKg;
            totalPriceElement.textContent = totalPrice.toFixed(2);
        }

        // Function to update initial weight input value
        function updateInitialWeight() {
            const initialWeightInput = document.getElementById('weight');
            if (initialWeightInput) {
                initialWeightInput.addEventListener('input', calculatePrice);
            }
            
            const weightInputs = document.querySelectorAll('input[name="weight[]"]');
            weightInputs.forEach(input => {
                input.addEventListener('input', calculatePrice);
            });

            // Calculate initial price
            calculatePrice();
        }

        // Function to add new unit fields
        function addUnit() {
            const additionalUnits = document.getElementById('additional-units');
            const unitDiv = document.createElement('div');
            unitDiv.classList.add('unit');

            // Create and append form fields
            const fields = [
                { label: 'From Name:', name: 'fromname[]', type: 'text' },
                { label: 'From Number or Email ID:', name: 'fromcontact[]', type: 'text' },
                { label: 'Departure:', name: 'depature[]', type: 'text' },
                { label: 'To Name:', name: 'toname[]', type: 'text' },
                { label: 'To Number or Email ID:', name: 'tocontact[]', type: 'text' },
                { label: 'Destination:', name: 'destination[]', type: 'text' },
                { label: 'Destination Address:', name: 'address[]', type: 'textarea' },
                { label: 'Shipment Type:', name: 'shipmenttype[]', type: 'select', options: ['box', 'crates', 'container'] },
                { label: 'Weight (kg):', name: 'weight[]', type: 'number' }
            ];

            fields.forEach(field => {
                const label = document.createElement('label');
                label.textContent = field.label;
                unitDiv.appendChild(label);

                let input;
                if (field.type === 'textarea') {
                    input = document.createElement('textarea');
                    input.name = field.name;
                    input.rows = 3;
                } else if (field.type === 'select') {
                    input = document.createElement('select');
                    input.name = field.name;
                    field.options.forEach(optionValue => {
                        const option = document.createElement('option');
                        option.value = optionValue;
                        option.textContent = optionValue.charAt(0).toUpperCase() + optionValue.slice(1);
                        input.appendChild(option);
                    });
                } else {
                    input = document.createElement('input');
                    input.type = field.type;
                    input.name = field.name;
                }

                input.required = true;
                unitDiv.appendChild(input);
            });

            // Add event listener to the new weight input
            const newWeightInput = unitDiv.querySelector('input[name="weight[]"]');
            newWeightInput.addEventListener('input', calculatePrice);

            additionalUnits.appendChild(unitDiv);

            // Recalculate price after adding new unit
            calculatePrice();
        }

        // Update initial weight and calculate price when the page loads
        document.addEventListener('DOMContentLoaded', updateInitialWeight);

    </script>

</body>
</html>
