<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Charity Fundraising Website</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        header {
            background-color: #007bff;
            color: white; 
            padding: 15px;
            text-align: center;
        }
        nav {
            background-color: #333;
            overflow: hidden;
            margin-bottom: 20px;
        }
        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        nav a:hover {
            background-color: #ddd;
            color: black;
        }
        form {
            display: none;
        }
        form.active {
            display: block;
            padding: 20px;
        }
        footer {
            background-color: #003bff;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
        .next-page {
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <h1>Charity Fundraising Website</h1>
    </header>

    <!-- Navigation Menu -->
    <nav>
        <a href="#login" onclick="showForm('login')">Login</a>
        <a href="#signup" onclick="showForm('signup')">Sign Up</a>
        <a href="#about" onclick="showForm('about')">About Us</a>
        <a href="#donate-for" onclick="showForm('donate-for')">Donate For</a>
        <a href="#monthly-mission" onclick="showForm('monthly-mission')">Monthly Mission</a>
        <a href="#types-of-donation" onclick="showForm('types-of-donation')">Types of Donation</a>
        <a href="#donate-now" onclick="showForm('donate-now')">Donate Now</a>
        <a href="#donar-details" onclick="showForm('donar-details')">Donar Details</a>
        <a href="#consideration" onclick="showForm('consideration')">Consideration</a>
        <a href="#payment-method" onclick="showForm('payment-method')">Payment Method</a>
        <a href="#payment-status" onclick="showForm('payment-status')">Payment Status</a>
        <a href="#donar-feedback" onclick="showForm('donar-feedback')">Donar Feedback</a>
    </nav>

    <!--Sign Up Page-->
    <form id="signup">
        <h2>Sign Up</h2>
        <div id="signup-error" style="color: red; margin-bottom: 10px;"></div>
        <label for="signup-name">Name:</label><br>
        <input type="text" id="signup-name" name="name"><br><br>
        <label for="signup-email">Email:</label><br>
        <input type="email" id="signup-email" name="email"><br><br>
        <label for="signup-password">Password:</label><br>
        <input type="password" id="signup-password" name="password"><br><br>
        <label for="signup-confirm-password">Confirm Password:</label><br>
        <input type="password" id="signup-confirm-password" name="confirm_password"><br><br>
        <button type="button" onclick="validateSignUp()">Sign Up</button>
    </form>

    <!-- Login Page -->
    <form id="login" class="active">
        <h2>Login</h2>
        <div id = "login-error" style="color:red; margin-bottom: 10px;"></div>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email"><br><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password"><br><br>
        <button type="button" class="log in" onclick="showForm('about')">Log In</button>
        <button type="button" onclick="showForm('signup')">Sign Up</button>
    </form>

    <!-- About Us Page -->
    <form id="about">
        <h2>About Us</h2>
        <body>
            <div class="container">
                <h1>About Us</h1>
                
                <div class="section">
                    <h2>Our Mission</h2>
                    <p>Our mission is to create a world where everyone has access to the basic necessities of life, including food, water, shelter, and education. We strive to empower communities by providing the resources they need to thrive and live with dignity.</p>
                </div>
        
                <div class="section">
                    <h2>Our Vision</h2>
                    <p>We envision a future where poverty and inequality are eradicated, and every individual has the opportunity to lead a healthy and fulfilling life. We work towards sustainable development and social justice for all.</p>
                </div>
        
                <div class="section">
                    <h2>Our History</h2>
                    <p>Founded in 2000, our charity has grown from a small local initiative to a global organization helping millions of people across the world. Our journey began with a small group of passionate individuals who wanted to make a difference, and today, we are proud to be a leader in the fight against poverty.</p>
                </div>
        
                <div class="section">
                    <h2>Meet Our Team</h2>
                    <div class="team">
                        <div class="team-member">
                            <img src="team-member1.jpg" alt="Team Member 1">
                            <h3>John Doe</h3>
                            <p>Founder & CEO</p>
                        </div>
                        <div class="team-member">
                            <img src="team-member2.jpg" alt="Team Member 2">
                            <h3>Jane Smith</h3>
                            <p>Director of Operations</p>
                        </div>
                        <div class="team-member">
                            <img src="team-member3.jpg" alt="Team Member 3">
                            <h3>Emily Johnson</h3>
                            <p>Head of Outreach</p>
                        </div>
                    </div>
                </div>
            </div>
        </body>
        <button type="button" class="next-page" onclick="showForm('donate-for')">Next Page</button>
    </form>

    <!-- Donate For Page -->
    <form id="donate-for">
        <h2>Donate For</h2>
        <body>
            <div class="container">
                <h1>Types of Donation</h1>
        
                <div class="donation-types">
                    <div class="donation-type">
                        <img src="one-time-donation.jpg" alt="One-Time Donation">
                        <h3>One-Time Donation</h3>
                        <p>Make a one-time contribution to our cause and help us make an immediate impact in the lives of those in need.</p>
                        <a href="donate.html?type=one-time" class="donate-button">Donate Now</a>
                    </div>
        
                    <div class="donation-type">
                        <img src="monthly-donation.jpg" alt="Monthly Donation">
                        <h3>Monthly Donation</h3>
                        <p>Support our mission with a recurring monthly donation. Your continuous support helps us plan and sustain our projects.</p>
                        <a href="donate.html?type=monthly" class="donate-button">Donate Now</a>
                    </div>
        
                    <div class="donation-type">
                        <img src="in-kind-donation.jpg" alt="In-Kind Donation">
                        <h3>In-Kind Donation</h3>
                        <p>Contribute non-monetary items such as clothing, food, or other goods. Your in-kind donation will directly support those in need.</p>
                        <a href="donate.html?type=in-kind" class="donate-button">Donate Now</a>
                    </div>
        
                    <div class="donation-type">
                        <img src="corporate-donation.jpg" alt="Corporate Donation">
                        <h3>Corporate Donation</h3>
                        <p>Partner with us as a corporation and make a significant impact through corporate giving and sponsorships.</p>
                        <a href="donate.html?type=corporate" class="donate-button">Donate Now</a>
                    </div>
        
                    <div class="donation-type">
                        <img src="legacy-donation.jpg" alt="Legacy Donation">
                        <h3>Legacy Donation</h3>
                        <p>Leave a lasting legacy by including our charity in your will or estate plan. Your legacy donation ensures a future of hope.</p>
                        <a href="donate.html?type=legacy" class="donate-button">Donate Now</a>
                    </div>
        
                    <div class="donation-type">
                        <img src="volunteer.jpg" alt="Volunteer">
                        <h3>Volunteer</h3>
                        <p>If you’re not able to donate financially, consider donating your time and skills by volunteering with us.</p>
                        <a href="volunteer.html" class="donate-button">Join Us</a>
                    </div>
                </div>
            </div>
        </body>
        <button type="button" class="next-page" onclick="showForm('monthly-mission')">Next Page</button>
    </form>

    <!-- Monthly Mission Page -->
    <form id="monthly-mission">
        <h2>Monthly Mission</h2>
        <body>
            <div class="container">
                <h1>Our Monthly Mission</h1>
                
                <div class="mission-summary">
                    <h2>September Mission: Empowering Education</h2>
                    <p>This month, our focus is on empowering children in underserved communities by providing them with the resources they need to succeed in school. We aim to distribute 1,000 school supply kits and fund scholarships for 200 students. Your support can help change their lives by giving them the tools they need to build a brighter future.</p>
                </div>
        
                <div class="goals">
                    <div class="goal">
                        <img src="school-supplies.jpg" alt="School Supplies">
                        <h3>Goal 1: School Supply Kits</h3>
                        <p>We aim to distribute 1,000 school supply kits to children in need. Each kit includes notebooks, pens, pencils, and other essential supplies to help them succeed in school.</p>
                        <a href="donate.html" class="donate-button">Donate Now</a>
                    </div>
        
                    <div class="goal">
                        <img src="scholarship.jpg" alt="Scholarship Fund">
                        <h3>Goal 2: Scholarship Fund</h3>
                        <p>We are raising funds to provide 200 students with scholarships. These scholarships will cover tuition, books, and other educational expenses, ensuring they have the support they need to continue their education.</p>
                        <a href="donate.html" class="donate-button">Donate Now</a>
                    </div>
                </div>
            </div>
        </body>
        <button type="button" class="next-page" onclick="showForm('types-of-donation')">Next Page</button>
    </form>

    <!-- Types of Donation Page -->
    <form id="types-of-donation">
        <h2>Types of Donation</h2>
        <body>
            <div class="container">
                <h1>Types of Donation</h1>
        
                <div class="donation-types">
                    <div class="donation-type">
                        <img src="one-time-donation.jpg" alt="One-Time Donation">
                        <h3>One-Time Donation</h3>
                        <p>Make a one-time contribution to our cause and help us make an immediate impact in the lives of those in need.</p>
                        <a href="donate.html?type=one-time" class="donate-button">Donate Now</a>
                    </div>
        
                    <div class="donation-type">
                        <img src="monthly-donation.jpg" alt="Monthly Donation">
                        <h3>Monthly Donation</h3>
                        <p>Support our mission with a recurring monthly donation. Your continuous support helps us plan and sustain our projects.</p>
                        <a href="donate.html?type=monthly" class="donate-button">Donate Now</a>
                    </div>
        
                    <div class="donation-type">
                        <img src="in-kind-donation.jpg" alt="In-Kind Donation">
                        <h3>In-Kind Donation</h3>
                        <p>Contribute non-monetary items such as clothing, food, or other goods. Your in-kind donation will directly support those in need.</p>
                        <a href="donate.html?type=in-kind" class="donate-button">Donate Now</a>
                    </div>
        
                    <div class="donation-type">
                        <img src="corporate-donation.jpg" alt="Corporate Donation">
                        <h3>Corporate Donation</h3>
                        <p>Partner with us as a corporation and make a significant impact through corporate giving and sponsorships.</p>
                        <a href="donate.html?type=corporate" class="donate-button">Donate Now</a>
                    </div>
        
                    <div class="donation-type">
                        <img src="legacy-donation.jpg" alt="Legacy Donation">
                        <h3>Legacy Donation</h3>
                        <p>Leave a lasting legacy by including our charity in your will or estate plan. Your legacy donation ensures a future of hope.</p>
                        <a href="donate.html?type=legacy" class="donate-button">Donate Now</a>
                    </div>
        
                    <div class="donation-type">
                        <img src="volunteer.jpg" alt="Volunteer">
                        <h3>Volunteer</h3>
                        <p>If you’re not able to donate financially, consider donating your time and skills by volunteering with us.</p>
                        <a href="volunteer.html" class="donate-button">Join Us</a>
                    </div>
                </div>
            </div>
        </body>
        <button type="button" class="next-page" onclick="showForm('donate-now')">Next Page</button>
    </form>

    <!-- Donate Now Page -->
    <form id="donate-now">
        <h2>Payment Form</h2>
        <form action="/process_payment" method="POST">
            <label for="name">Name on Card</label>
            <input type="text" id="name" name="name" placeholder="John Doe" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="johndoe@example.com" required>

            <label for="cardNumber">Card Number</label>
            <input type="tel" id="cardNumber" name="cardNumber" placeholder="1234 5678 9012 3456" required>

            <label for="expiryDate">Expiry Date</label>
            <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY" required>

            <label for="cvv">CVV</label>
            <input type="number" id="cvv" name="cvv" placeholder="123" required>

            <label for="amount">Amount</label>
            <input type="number" id="amount" name="amount" placeholder="100.00" required>

            <input type="submit" value="Submit Payment">
        <button type="button" class="next-page" onclick="showForm('donar-details')">Next Page</button>
    </form>

    <!-- Donar Details Page -->
    <form id="donar-details">
        <h2>Donar Details</h2>
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email"><br><br>
        <label for="address">Address:</label><br>
        <input type="text" id="address" name="address"><br><br>
        <button type="button" class="next-page" onclick="showForm('consideration')">Next Page</button>
    </form>

    <!-- Consideration Page -->
    <form id="consideration">
        <h2>Consideration</h2>
        <p>We appreciate your thoughtfulness.</p>
        <button type="button" class="next-page" onclick="showForm('payment-method')">Next Page</button>
    </form>

    <!-- Payment Method Page -->
    <form id="payment-method">
        <h2>Select Payment Method</h2>
    <form action="/process-payment" method="post">

        <!-- Payment Method: Credit/Debit Card -->
        <div class="form-group">
            <input type="radio" id="card" name="payment_method" value="card" checked>
            <label for="card">Credit/Debit Card</label>
        </div>
        <div class="form-group">
            <label for="card_number">Card Number</label>
            <input type="text" id="card_number" name="card_number" placeholder="Enter your card number" required>
        </div>
        <div class="form-group">
            <label for="card_name">Name on Card</label>
            <input type="text" id="card_name" name="card_name" placeholder="Enter the name on the card" required>
        </div>
        <div class="form-group">
            <label for="expiry_date">Expiry Date</label>
            <input type="text" id="expiry_date" name="expiry_date" placeholder="MM/YY" required>
        </div>
        <div class="form-group">
            <label for="cvv">CVV</label>
            <input type="text" id="cvv" name="cvv" placeholder="Enter CVV" required>
        </div>

        <!-- Payment Method: PayPal -->
        <div class="form-group payment-methods">
            <input type="radio" id="paypal" name="payment_method" value="paypal">
            <label for="paypal">PayPal</label>
        </div>
        <div class="form-group">
            <label for="paypal_email">PayPal Email</label>
            <input type="email" id="paypal_email" name="paypal_email" placeholder="Enter your PayPal email">
        </div>

        <!-- Payment Method: Bank Transfer -->
        <div class="form-group payment-methods">
            <input type="radio" id="bank" name="payment_method" value="bank">
            <label for="bank">Bank Transfer</label>
        </div>
        <div class="form-group">
            <label for="account_number">Account Number</label>
            <input type="text" id="account_number" name="account_number" placeholder="Enter your bank account number">
        </div>
        <div class="form-group">
            <label for="bank_name">Bank Name</label>
            <input type="text" id="bank_name" name="bank_name" placeholder="Enter your bank name">
        </div>
        <div class="form-group">
            <label for="routing_number">Routing Number</label>
            <input type="text" id="routing_number" name="routing_number" placeholder="Enter your bank routing number">
        </div>

        <!-- Submit Button -->
        <button type="submit" class="submit-btn">Submit Payment</button>
        <button type="button" class="next-page" onclick="showForm('payment-status')">Next Page</button>
    </form>

    <!-- Payment Status Page -->
    <form id="payment-status">
        <h2>Payment Status</h2>
        <p>Your payment was successful. Thank you for your donation!</p>
        <p>Payment Reference Number: [Your Payment Reference]</p>
        <button type="button" class="next-page" onclick="showForm('donar-feedback')">Next Page</button>
    </form>

    <!-- Donar Feedback Page -->
    <form id="donar-feedback">
        <h2>Donar Feedback</h2>
        <label for="feedback">We value your feedback:</label><br>
        <textarea id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
        <input type="submit" value="Submit Feedback">
    </form>

    <!-- Footer -->
    <script>
        function validateLogin() {
            var email = document.getElementById('login-email').value;
            var password = document.getElementById('login-password').value;
            var errorDiv = document.getElementbyId('login-error');

            if(!email || !password) {
                errorDiv.textContent = 'Please fill in both fields.';
                return;
            }

            var pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if(!pattern.test(email)) {
                errorDiv.textContent = 'Please enter a valid email address.';
                return;
            }

            showForm('about');
        }

        function validateSignUp() {
            var name = document.getElementById('signup-name').value;
            var email = document.getElementById('signup-email').value;
            var password = document.getElementById('signup-password').value;
            var confirmPassword = document.getElementById('signup-confirm-password').value;
            var errorDiv = document.getElementById('signup-error');

            if (!name || !email || !password || !confirmPassword) {
                errorDiv.textContent = 'Please fill in all fields.';
                return;
            }

            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                errorDiv.textContent = 'Please enter a valid email address.';
                return;
            }

            if (password !== confirmPassword) {
                errorDiv.textContent = 'Passwords do not match.';
                return;
            }       
            alert('Sign Up Successful!');
            showForm('login');
        }

        function showForm(formId) {
            // Hide all forms
            document.querySelectorAll('form').forEach(form => form.classList.remove('active'));
            // Show the selected form
            document.getElementById(formId).classList.add('active');
        }
    </script>
</body>
</html>