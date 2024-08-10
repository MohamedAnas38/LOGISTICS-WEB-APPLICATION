<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cancel Shipment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url("https://images.pexels.com/photos/7019314/pexels-photo-7019314.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
    background-size: cover; /* Cover the entire viewport */
    background-repeat: no-repeat; /* Prevent the image from repeating */
    background-position: center; 
        }
        .container {
           background-color: #fffcfc40;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        h2 {
            color: black;
            margin-bottom: 20px;
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 5px;
            
            font-weight: bold;
            color: black;
        }
        input[type="text"],
        textarea,
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
             font-weight: bold;
            color: black;
            background-color: #fffcfc40;
        }
        textarea {
            height: 100px;
            resize: vertical; /* Allow the user to resize the textarea vertically */
            background-color: #fffcfc40;
            font-weight: bold;
            color: black;
        }
        input[type="submit"] {
            background-color: #333;
            color: #fff;
            cursor: pointer;
        }
        ::placeholder {
  color: black;
  opacity:0.7 ; /* Firefox */
}
        input[type="submit"]:hover {
            background-color: #555;
        }
        .form-group {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Cancel Shipment</h2>
        <form action="CancelShipment" method="post">
            <div class="form-group">
                <label for="id">Shipment Id:</label>
                <input type="text" id="id" name="id" placeholder="Enter Shipment Id" required>
            </div>
            <div class="form-group">
                <label for="comment">Reason for Cancellation:</label>
                <textarea id="comment" name="comment" placeholder="Enter reason for cancellation" required></textarea>
            </div>
            <input type="submit" value="Cancel Shipment">
        </form>
    </div>
</body>
</html>
