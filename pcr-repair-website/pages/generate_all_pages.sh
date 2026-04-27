#!/bin/bash
cd /workspace/pcr-repair-website/pages

# Function to create standard service page
create_service_page() {
    local filename=$1
    local title=$2
    local h1=$3
    local description=$4
    local keywords=$5
    local content=$6
    
    cat > "$filename" << PAGEEOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$title | PCR Phone and Computer Repair Brooklyn</title>
    <meta name="description" content="$description">
    <meta name="keywords" content="$keywords">
    <link rel="canonical" href="https://www.pcrrepair.com/pages/$filename">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <header>
        <div class="header-container">
            <a href="../index.html" class="logo">PCR <span>Repair</span></a>
            <nav>
                <ul>
                    <li><a href="../index.html">Home</a></li>
                    <li><a href="iphone-repair.html">Phone Repair</a></li>
                    <li><a href="laptop-repair.html">Computer Repair</a></li>
                    <li><a href="about-us.html">About</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
            <a href="tel:+19297678000" class="cta-button"><i class="fas fa-phone"></i> Call Now</a>
            <button class="mobile-menu-btn"><i class="fas fa-bars"></i></button>
        </div>
    </header>

    <section class="hero">
        <div class="hero-content">
            <h1>$h1</h1>
            <p>Professional repair services in Brooklyn with same-day service available</p>
            <div class="hero-buttons">
                <a href="tel:+19297678000" class="btn-primary">Call (929) 767-8000</a>
                <a href="contact.html" class="btn-secondary">Book Repair</a>
            </div>
        </div>
    </section>

    <div class="page-content">
        $content
    </div>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-column">
                    <h3>PCR Phone and Computer Repair</h3>
                    <p>2914 Glenwood Rd, Brooklyn, NY 11210<br>
                    Phone: <a href="tel:+19297678000">(929) 767-8000</a><br>
                    Email: microcashinc@gmail.com</p>
                </div>
                <div class="footer-column">
                    <h3>Services</h3>
                    <ul>
                        <li><a href="iphone-repair.html">iPhone Repair</a></li>
                        <li><a href="samsung-repair.html">Samsung Repair</a></li>
                        <li><a href="laptop-repair.html">Laptop Repair</a></li>
                        <li><a href="data-recovery.html">Data Recovery</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Hours</h3>
                    <p>Mon-Fri: 9AM-7PM<br>Sat: 10AM-6PM<br>Sun: Closed</p>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; <span id="currentYear"></span> PCR Phone and Computer Repair. All Rights Reserved.</p>
            </div>
        </div>
    </footer>
    <script src="../js/main.js"></script>
</body>
</html>
PAGEEOF
    echo "Created $filename"
}

# Samsung Repair Page
create_service_page "samsung-repair.html" \
"Samsung Phone Repair Brooklyn | Galaxy Repair Service" \
"Samsung Phone Repair Brooklyn - Expert Galaxy Repair" \
"Professional Samsung phone repair in Brooklyn. Screen replacement, battery service, charging port repair for all Galaxy models. Same-day service. Call (929) 767-8000" \
"Samsung phone repair Brooklyn, Galaxy repair, Samsung screen replacement, Galaxy battery replacement, Android phone repair Brooklyn" \
"<h2>Expert Samsung Phone Repair Services in Brooklyn</h2>
<p>PCR Phone and Computer Repair is your trusted destination for Samsung phone repair in Brooklyn. We specialize in repairing all Samsung Galaxy models including the S24, S23, S22, S21, Note series, A series, and Z Fold/Flip devices.</p>

<h3>Common Samsung Issues We Fix</h3>
<ul>
<li><strong>AMOLED Screen Replacement:</strong> Samsung's vibrant displays need specialized replacement. We use premium AMOLED screens that restore color accuracy and touch sensitivity.</li>
<li><strong>Battery Replacement:</strong> Fast draining or swollen batteries replaced with high-quality cells.</li>
<li><strong>Charging Port Repair:</strong> Fix USB-C port issues preventing proper charging.</li>
<li><strong>Water Damage:</strong> Professional cleaning and corrosion prevention for water-damaged Galaxy phones.</li>
<li><strong>Camera Repair:</strong> Fix blurry photos, camera shake, or non-functioning cameras.</li>
<li><strong>Software Issues:</strong> Resolve boot loops, freezing, and Android OS problems.</li>
</ul>

<div class='pricing-box'>
<h3>Samsung Repair Pricing</h3>
<p><strong>Screen Replacement:</strong> \$129-\$299 (varies by model)</p>
<p><strong>Battery Replacement:</strong> \$79-\$99</p>
<p><strong>Charging Port:</strong> \$89-\$129</p>
<p><em>Free diagnostics on all Samsung devices</em></p>
</div>

<h3>Why Choose Us for Samsung Repair?</h3>
<p>Our technicians are trained specifically on Samsung devices and understand the unique aspects of Galaxy phones including curved screens, in-display fingerprint sensors, and advanced camera systems.</p>"

# Google Pixel Repair
create_service_page "google-pixel-repair.html" \
"Google Pixel Repair Brooklyn | Pixel Phone Fix" \
"Google Pixel Repair Brooklyn - Certified Pixel Technicians" \
"Expert Google Pixel repair in Brooklyn. Screen, battery, camera repair for Pixel 8, 7, 6, 5, 4. Same-day service available. Call (929) 767-8000" \
"Google Pixel repair Brooklyn, Pixel screen repair, Pixel battery replacement, Pixel camera fix, Android repair" \
"<h2>Professional Google Pixel Repair in Brooklyn</h2>
<p>We provide expert repair services for all Google Pixel phones. Our technicians understand the unique aspects of stock Android devices and Pixel-specific features.</p>

<h3>Pixel Services Include:</h3>
<ul>
<li>Screen replacement for all Pixel models</li>
<li>Battery replacement and calibration</li>
<li>Camera module repair (Pixel cameras are exceptional - we keep them that way)</li>
<li>Fingerprint sensor repair</li>
<li>Charging port replacement</li>
<li>Software troubleshooting</li>
</ul>

<div class='highlight-box'>
<p><strong>Special Note:</strong> Pixel phones require careful handling during repair to maintain water resistance and wireless charging capabilities. Our technicians follow Google's repair guidelines.</p>
</div>"

# Other Smartphone Repair
create_service_page "other-smartphone-repair.html" \
"Smartphone Repair Brooklyn | All Phone Brands Fixed" \
"Smartphone Repair Brooklyn - All Brands Welcome" \
"We repair all smartphone brands including Motorola, LG, OnePlus, Xiaomi, and more. Fast, affordable phone repair in Brooklyn. Call (929) 767-8000" \
"smartphone repair Brooklyn, Android repair, phone repair near me, mobile repair shop Brooklyn" \
"<h2>All Smartphone Brands Repaired in Brooklyn</h2>
<p>Not an iPhone or Samsung? No problem! We repair virtually all smartphone brands including Motorola, LG, OnePlus, Xiaomi, Nokia, Sony, and more.</p>

<h3>Multi-Brand Repair Services</h3>
<ul>
<li>Screen replacement for all major brands</li>
<li>Battery replacement services</li>
<li>Charging port repairs</li>
<li>Button and switch repairs</li>
<li>Speaker and microphone fixes</li>
<li>Water damage treatment</li>
</ul>

<p>No matter what phone you have, bring it in for a free diagnostic. We'll identify the issue and provide transparent pricing before any work begins.</p>"

echo "Phone repair pages created!"
