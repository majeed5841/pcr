#!/bin/bash
cd /workspace/pcr-repair-website/pages

# About Us Page
cat > about-us.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About PCR Phone and Computer Repair | Brooklyn's Trusted Repair Shop</title>
    <meta name="description" content="Learn about PCR Phone and Computer Repair - Brooklyn's trusted electronics repair specialists with certified technicians and years of experience.">
    <link rel="canonical" href="https://www.pcrrepair.com/pages/about-us.html">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <header>
        <div class="header-container">
            <a href="../index.html" class="logo">PCR <span>Repair</span></a>
            <nav><ul>
                <li><a href="../index.html">Home</a></li>
                <li><a href="iphone-repair.html">Phone Repair</a></li>
                <li><a href="laptop-repair.html">Computer Repair</a></li>
                <li><a href="about-us.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul></nav>
            <a href="tel:+19297678000" class="cta-button"><i class="fas fa-phone"></i> Call Now</a>
        </div>
    </header>

    <section class="hero">
        <div class="hero-content">
            <h1>About PCR Phone and Computer Repair</h1>
            <p>Brooklyn's Trusted Electronics Repair Specialists Since 2015</p>
        </div>
    </section>

    <div class="page-content">
        <h2>Our Story</h2>
        <p>PCR Phone and Computer Repair was founded with a simple mission: provide Brooklyn residents with fast, affordable, and reliable electronics repair services. What started as a small repair shop has grown into one of Brooklyn's most trusted destinations for phone and computer repairs.</p>
        
        <p>Located at 2914 Glenwood Rd, Brooklyn, NY 11210, we proudly serve customers from Park Slope, Williamsburg, Downtown Brooklyn, Bushwick, Brooklyn Heights, and all surrounding neighborhoods.</p>

        <h2>Why Customers Trust Us</h2>
        <div class="highlight-box">
            <ul>
                <li><strong>8+ Years Experience:</strong> Thousands of successful repairs across all device types</li>
                <li><strong>Certified Technicians:</strong> Our team undergoes continuous training on latest devices and repair techniques</li>
                <li><strong>Quality Parts:</strong> We use premium replacement parts that meet or exceed OEM specifications</li>
                <li><strong>Transparent Pricing:</strong> Free diagnostics, clear quotes, no hidden fees</li>
                <li><strong>Warranty Protection:</strong> All repairs backed by comprehensive warranty</li>
                <li><strong>Fast Service:</strong> Same-day repairs for most common issues</li>
            </ul>
        </div>

        <h2>Our Certifications & Expertise</h2>
        <p>Our technicians hold certifications in:</p>
        <ul>
            <li>iOS Device Repair (iPhone, iPad)</li>
            <li>Android Device Repair (Samsung, Google Pixel, etc.)</li>
            <li>Computer Hardware Repair (CompTIA A+)</li>
            <li>Data Recovery Techniques</li>
            <li>Micro-soldering and Component-Level Repair</li>
        </ul>

        <h2>Our Commitment to You</h2>
        <p>We understand how important your devices are to your daily life. That's why we:</p>
        <ul>
            <li>Treat every device as if it were our own</li>
            <li>Protect your data and privacy throughout the repair process</li>
            <li>Provide honest assessments - we'll tell you if repair isn't worth the cost</li>
            <li>Stand behind our work with solid warranties</li>
            <li>Continue supporting you even after the repair is complete</li>
        </ul>

        <h2>Visit Us Today</h2>
        <p><strong>Address:</strong> 2914 Glenwood Rd, Brooklyn, NY 11210</p>
        <p><strong>Phone:</strong> <a href="tel:+19297678000">(929) 767-8000</a></p>
        <p><strong>Email:</strong> microcashinc@gmail.com</p>
        <p><strong>Hours:</strong> Mon-Fri: 9AM-7PM, Sat: 10AM-6PM, Sun: Closed</p>
        
        <p>Walk-ins welcome! No appointment necessary.</p>

        <div class="cta-section">
            <h2>Ready to Get Your Device Fixed?</h2>
            <p>Experience the PCR difference - quality repairs, fair prices, excellent service.</p>
            <a href="tel:+19297678000" class="btn-primary">Call (929) 767-8000</a>
            <a href="contact.html" class="btn-secondary">Get Directions</a>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="footer-bottom">
                <p>&copy; <span id="currentYear"></span> PCR Phone and Computer Repair</p>
            </div>
        </div>
    </footer>
    <script src="../js/main.js"></script>
</body>
</html>
EOF
echo "Created about-us.html"

# Contact Page
cat > contact.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact PCR Repair | Phone & Computer Repair Brooklyn</title>
    <meta name="description" content="Contact PCR Phone and Computer Repair. Located at 2914 Glenwood Rd, Brooklyn, NY 11210. Call (929) 767-8000 for fast repair service.">
    <link rel="canonical" href="https://www.pcrrepair.com/pages/contact.html">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <header>
        <div class="header-container">
            <a href="../index.html" class="logo">PCR <span>Repair</span></a>
            <nav><ul>
                <li><a href="../index.html">Home</a></li>
                <li><a href="iphone-repair.html">Phone Repair</a></li>
                <li><a href="laptop-repair.html">Computer Repair</a></li>
                <li><a href="about-us.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul></nav>
            <a href="tel:+19297678000" class="cta-button"><i class="fas fa-phone"></i> Call Now</a>
        </div>
    </header>

    <section class="hero">
        <div class="hero-content">
            <h1>Contact Us</h1>
            <p>Get in touch for fast, reliable repair service in Brooklyn</p>
        </div>
    </section>

    <div class="page-content">
        <h2>Get In Touch</h2>
        
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; margin: 2rem 0;">
            <div>
                <h3>Contact Information</h3>
                <p><strong>Address:</strong><br>2914 Glenwood Rd<br>Brooklyn, NY 11210<br>United States</p>
                <p><strong>Phone:</strong> <a href="tel:+19297678000">(929) 767-8000</a></p>
                <p><strong>Email:</strong> microcashinc@gmail.com</p>
                
                <h3 style="margin-top: 2rem;">Business Hours</h3>
                <p>Monday - Friday: 9:00 AM - 7:00 PM<br>
                Saturday: 10:00 AM - 6:00 PM<br>
                Sunday: Closed</p>
                
                <p style="margin-top: 1rem;"><em>Walk-ins Welcome!<br>No Appointment Necessary</em></p>
            </div>
            
            <div>
                <h3>Send Us a Message</h3>
                <form id="contactForm" style="display: grid; gap: 1rem;">
                    <input type="text" id="name" placeholder="Your Name" required style="width: 100%; padding: 0.8rem; border: 1px solid #ddd; border-radius: 5px;">
                    <input type="email" id="email" placeholder="Your Email" required style="width: 100%; padding: 0.8rem; border: 1px solid #ddd; border-radius: 5px;">
                    <input type="tel" id="phone" placeholder="Your Phone" style="width: 100%; padding: 0.8rem; border: 1px solid #ddd; border-radius: 5px;">
                    <textarea id="message" rows="5" placeholder="How can we help?" required style="width: 100%; padding: 0.8rem; border: 1px solid #ddd; border-radius: 5px;"></textarea>
                    <button type="submit" class="btn-primary" style="border: none; cursor: pointer;">Send Message</button>
                </form>
            </div>
        </div>

        <h2>Location & Directions</h2>
        <div style="background: #f7fafc; padding: 2rem; border-radius: 10px; text-align: center;">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.5!2d-73.9442!3d40.6195!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zM40CsDM3JzEwLjIiTiA3M8KwNTYnMzkuMSJX!5e0!3m2!1sen!2sus!4v1234567890" width="100%" height="400" style="border:0; border-radius: 10px;" allowfullscreen="" loading="lazy"></iframe>
            <p style="margin-top: 1rem;"><strong>Serving:</strong> Park Slope, Williamsburg, Downtown Brooklyn, Bushwick, Brooklyn Heights, Bay Ridge, Flatbush, and all Brooklyn neighborhoods</p>
        </div>

        <div class="cta-section">
            <h2>Need Repair Service?</h2>
            <p>Call us today or stop by our shop. Free diagnostics on all devices!</p>
            <a href="tel:+19297678000" class="btn-primary">Call (929) 767-8000</a>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="footer-bottom">
                <p>&copy; <span id="currentYear"></span> PCR Phone and Computer Repair</p>
            </div>
        </div>
    </footer>
    <script src="../js/main.js"></script>
</body>
</html>
EOF
echo "Created contact.html"

echo "Business pages created!"
