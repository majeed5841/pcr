#!/bin/bash
cd /workspace/pcr-repair-website/pages

# Computer Repair Pages
for page in "laptop-repair" "desktop-repair" "mac-repair" "pc-repair"; do
cat > "$page.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laptop Repair Brooklyn | Fast Computer Fix | PCR Repair</title>
    <meta name="description" content="Expert laptop repair in Brooklyn. Screen replacement, keyboard repair, hardware upgrades, virus removal. Same-day service available. Call (929) 767-8000">
    <meta name="keywords" content="laptop repair Brooklyn, computer repair, laptop screen repair, MacBook repair, PC repair near me">
    <link rel="canonical" href="https://www.pcrrepair.com/pages/laptop-repair.html">
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
                <li><a href="contact.html">Contact</a></li>
            </ul></nav>
            <a href="tel:+19297678000" class="cta-button"><i class="fas fa-phone"></i> Call Now</a>
            <button class="mobile-menu-btn"><i class="fas fa-bars"></i></button>
        </div>
    </header>

    <section class="hero">
        <div class="hero-content">
            <h1>Laptop & Computer Repair Brooklyn - Expert Service</h1>
            <p>Professional computer repair for all brands. Hardware fixes, software troubleshooting, virus removal</p>
            <div class="hero-buttons">
                <a href="tel:+19297678000" class="btn-primary">Call (929) 767-8000</a>
                <a href="contact.html" class="btn-secondary">Get Free Diagnostic</a>
            </div>
        </div>
    </section>

    <div class="page-content">
        <h2>Professional Laptop & Computer Repair in Brooklyn, NY</h2>
        <p>Is your laptop running slow, not turning on, or experiencing hardware failures? PCR Phone and Computer Repair provides comprehensive laptop and desktop repair services for all major brands including Dell, HP, Lenovo, Apple MacBook, ASUS, Acer, and more.</p>
        
        <p>Located at 2914 Glenwood Rd, we serve customers throughout Brooklyn including Park Slope, Williamsburg, Downtown Brooklyn, Bushwick, and Brooklyn Heights with fast, reliable computer repair services.</p>

        <h2>Common Computer Problems We Fix</h2>
        <ul>
            <li><strong>Hardware Issues:</strong> Failed hard drives, faulty RAM, broken screens, keyboard replacement, power jack repair</li>
            <li><strong>Software Troubleshooting:</strong> Windows/Mac OS errors, boot problems, driver conflicts, system crashes</li>
            <li><strong>Virus & Malware Removal:</strong> Complete virus scanning and removal, security optimization</li>
            <li><strong>Performance Optimization:</strong> Slow computer speedup, startup optimization, cleanup services</li>
            <li><strong>Data Recovery:</strong> Recover files from failed hard drives and corrupted storage</li>
            <li><strong>Upgrades:</strong> SSD upgrades, RAM expansion, graphics card installation</li>
        </ul>

        <h2>Our Computer Repair Process</h2>
        <ol>
            <li><strong>Free Diagnostic:</strong> Comprehensive examination to identify all issues</li>
            <li><strong>Detailed Quote:</strong> Transparent pricing with no hidden fees</li>
            <li><strong>Expert Repair:</strong> Certified technicians perform repairs using proper tools and techniques</li>
            <li><strong>Testing:</strong> Rigorous testing to ensure all functions work properly</li>
            <li><strong>Quality Assurance:</strong> Final inspection before returning your device</li>
        </ol>

        <div class="pricing-box">
            <h3>Computer Repair Pricing</h3>
            <p><strong>Diagnostic:</strong> FREE</p>
            <p><strong>Virus Removal:</strong> $99 - $149</p>
            <p><strong>Screen Replacement:</strong> $150 - $400 (varies by model)</p>
            <p><strong>Hard Drive/SSD:</strong> $120 - $300 + parts</p>
            <p><strong>RAM Upgrade:</strong> $80 - $150 + parts</p>
            <p><em>Free estimates on all repairs</em></p>
        </div>

        <h2>Why Choose PCR for Computer Repair?</h2>
        <div class="highlight-box">
            <ul>
                <li><strong>Experienced Technicians:</strong> Years of experience repairing all computer brands</li>
                <li><strong>Fast Turnaround:</strong> Many repairs completed same-day or within 24 hours</li>
                <li><strong>Fair Pricing:</strong> Competitive rates with free diagnostics</li>
                <li><strong>Warranty:</strong> All repairs backed by warranty protection</li>
                <li><strong>Data Safety:</strong> We prioritize protecting your important files and data</li>
            </ul>
        </div>

        <h2>Computer Repair FAQs</h2>
        <div class="faq-grid">
            <div class="faq-item active">
                <div class="faq-question">How much does laptop repair cost?<i class="fas fa-chevron-down"></i></div>
                <div class="faq-answer">Laptop repair costs vary by issue. Simple fixes start at $80, while complex repairs like motherboard work range from $200-$400. We provide free diagnostics and transparent quotes before any work begins.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question">Can you recover data from a dead laptop?<i class="fas fa-chevron-down"></i></div>
                <div class="faq-answer">In most cases, yes! We specialize in data recovery from failed hard drives, SSDs, and non-booting laptops. Success rate depends on the type of failure. Bring it in for assessment.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question">Do you fix MacBooks and iMacs?<i class="fas fa-chevron-down"></i></div>
                <div class="faq-answer">Yes! We repair all Apple computers including MacBook Pro, MacBook Air, iMac, and Mac Mini. Services include screen replacement, battery service, logic board repair, and more.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question">How long does computer repair take?<i class="fas fa-chevron-down"></i></div>
                <div class="faq-answer">Simple repairs like virus removal or RAM upgrades can be done same-day. Complex repairs may take 1-3 days depending on parts availability. We'll give you an estimated timeline upfront.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question">Should I upgrade my old laptop or buy new?<i class="fas fa-chevron-down"></i></div>
                <div class="faq-answer">Often upgrading with an SSD and more RAM can dramatically improve performance at a fraction of new computer cost. Bring it in and we'll advise whether upgrade makes sense for your situation.</div>
            </div>
        </div>

        <h2>Related Computer Services</h2>
        <ul>
            <li><a href="virus-removal.html">Virus & Malware Removal</a></li>
            <li><a href="data-recovery.html">Data Recovery Services</a></li>
            <li><a href="hardware-upgrade.html">Hardware Upgrades (SSD, RAM)</a></li>
            <li><a href="software-installation.html">Software Installation</a></li>
        </ul>

        <div class="cta-section">
            <h2>Computer Running Slow or Not Working?</h2>
            <p>Get expert computer repair in Brooklyn. Free diagnostics, fair prices, fast service!</p>
            <a href="tel:+19297678000" class="btn-primary">Call (929) 767-8000</a>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-column">
                    <h3>PCR Repair</h3>
                    <p>2914 Glenwood Rd, Brooklyn, NY 11210<br>
                    <a href="tel:+19297678000">(929) 767-8000</a></p>
                </div>
                <div class="footer-column">
                    <h3>Services</h3>
                    <ul>
                        <li><a href="laptop-repair.html">Laptop Repair</a></li>
                        <li><a href="virus-removal.html">Virus Removal</a></li>
                        <li><a href="data-recovery.html">Data Recovery</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Hours</h3>
                    <p>Mon-Fri: 9AM-7PM<br>Sat: 10AM-6PM<br>Sun: Closed</p>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; <span id="currentYear"></span> PCR Phone and Computer Repair</p>
            </div>
        </div>
    </footer>
    <script src="../js/main.js"></script>
</body>
</html>
EOF
echo "Created $page.html"
done

echo "Computer repair pages created!"
