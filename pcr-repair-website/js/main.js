// PCR Phone and Computer Repair - Main JavaScript

document.addEventListener('DOMContentLoaded', function() {
    
    // Mobile Menu Toggle
    const mobileMenuBtn = document.querySelector('.mobile-menu-btn');
    const navUl = document.querySelector('nav ul');
    
    if (mobileMenuBtn && navUl) {
        mobileMenuBtn.addEventListener('click', function() {
            navUl.classList.toggle('active');
        });
    }

    // FAQ Accordion
    const faqItems = document.querySelectorAll('.faq-item');
    
    faqItems.forEach(item => {
        const question = item.querySelector('.faq-question');
        if (question) {
            question.addEventListener('click', function() {
                // Close other open items
                faqItems.forEach(otherItem => {
                    if (otherItem !== item) {
                        otherItem.classList.remove('active');
                    }
                });
                
                // Toggle current item
                item.classList.toggle('active');
            });
        }
    });

    // Smooth Scrolling for Anchor Links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            const targetId = this.getAttribute('href');
            const targetElement = document.querySelector(targetId);
            
            if (targetElement) {
                targetElement.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });

    // Sticky Header Enhancement
    const header = document.querySelector('header');
    let lastScrollPosition = 0;

    window.addEventListener('scroll', function() {
        const currentScrollPosition = window.pageYOffset;
        
        if (currentScrollPosition > 100) {
            header.style.boxShadow = '0 4px 20px rgba(0,0,0,0.15)';
        } else {
            header.style.boxShadow = '0 2px 10px rgba(0,0,0,0.1)';
        }
        
        lastScrollPosition = currentScrollPosition;
    });

    // Form Validation
    const contactForm = document.getElementById('contactForm');
    
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            
            const name = document.getElementById('name').value.trim();
            const email = document.getElementById('email').value.trim();
            const phone = document.getElementById('phone').value.trim();
            const message = document.getElementById('message').value.trim();
            
            // Simple validation
            if (!name || !email || !message) {
                alert('Please fill in all required fields.');
                return;
            }
            
            if (!isValidEmail(email)) {
                alert('Please enter a valid email address.');
                return;
            }
            
            // Simulate form submission
            alert('Thank you for your message! We will contact you shortly.');
            contactForm.reset();
        });
    }

    // Email Validation Helper
    function isValidEmail(email) {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }

    // Click to Call Tracking
    const callButtons = document.querySelectorAll('[href^="tel:"]');
    
    callButtons.forEach(button => {
        button.addEventListener('click', function() {
            console.log('Call button clicked:', this.href);
            // Add analytics tracking here if needed
        });
    });

    // Service Card Animation on Scroll
    const serviceCards = document.querySelectorAll('.service-card, .feature-item');
    
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver(function(entries) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }
        });
    }, observerOptions);

    serviceCards.forEach(card => {
        card.style.opacity = '0';
        card.style.transform = 'translateY(20px)';
        card.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        observer.observe(card);
    });

    // Current Year in Footer
    const yearSpan = document.getElementById('currentYear');
    if (yearSpan) {
        yearSpan.textContent = new Date().getFullYear();
    }

    // Booking Modal (if exists)
    const bookButtons = document.querySelectorAll('.book-repair-btn');
    const modal = document.getElementById('bookingModal');
    const closeModal = document.querySelector('.close-modal');

    bookButtons.forEach(button => {
        button.addEventListener('click', function() {
            if (modal) {
                modal.style.display = 'block';
            }
        });
    });

    if (closeModal) {
        closeModal.addEventListener('click', function() {
            modal.style.display = 'none';
        });
    }

    // Close modal when clicking outside
    window.addEventListener('click', function(e) {
        if (modal && e.target === modal) {
            modal.style.display = 'none';
        }
    });

    // Local Storage for Recent Pages (for better UX)
    const currentPage = window.location.pathname;
    let recentPages = JSON.parse(localStorage.getItem('recentPages') || '[]');
    
    // Add current page to recent pages
    if (!recentPages.includes(currentPage)) {
        recentPages.unshift(currentPage);
        if (recentPages.length > 5) {
            recentPages.pop();
        }
        localStorage.setItem('recentPages', JSON.stringify(recentPages));
    }

    console.log('PCR Repair Website loaded successfully!');
    
    // Stats Counter Animation
    const statNumbers = document.querySelectorAll('.stat-number');
    
    if (statNumbers.length > 0) {
        const animateStats = () => {
            statNumbers.forEach(stat => {
                const target = parseInt(stat.getAttribute('data-target'));
                const duration = 2000; // 2 seconds
                const increment = target / (duration / 16); // 60fps
                let current = 0;
                
                const updateCounter = () => {
                    current += increment;
                    if (current < target) {
                        stat.textContent = Math.floor(current).toLocaleString();
                        requestAnimationFrame(updateCounter);
                    } else {
                        stat.textContent = target.toLocaleString() + (target === 98 ? '%' : '+');
                    }
                };
                
                updateCounter();
            });
        };
        
        // Trigger animation when stats section is visible
        const statsSection = document.querySelector('.stats-section');
        if (statsSection) {
            const statsObserver = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        animateStats();
                        statsObserver.unobserve(entry.target);
                    }
                });
            }, { threshold: 0.5 });
            
            statsObserver.observe(statsSection);
        }
    }
    
    // Testimonial Carousel (Auto-rotate on mobile)
    const testimonialCards = document.querySelectorAll('.testimonial-card');
    let currentTestimonial = 0;
    
    if (testimonialCards.length > 3 && window.innerWidth < 768) {
        setInterval(() => {
            testimonialCards[currentTestimonial].style.opacity = '0';
            currentTestimonial = (currentTestimonial + 1) % testimonialCards.length;
            setTimeout(() => {
                testimonialCards[currentTestimonial].style.opacity = '1';
            }, 300);
        }, 5000);
    }
    
    // Add hover effect to process steps
    const processSteps = document.querySelectorAll('.process-step');
    processSteps.forEach((step, index) => {
        step.addEventListener('mouseenter', () => {
            processSteps.forEach((s, i) => {
                if (i !== index) {
                    s.style.opacity = '0.6';
                }
            });
        });
        
        step.addEventListener('mouseleave', () => {
            processSteps.forEach(s => {
                s.style.opacity = '1';
            });
        });
    });
    
    // Add scroll-to-top button
    const scrollToTopBtn = document.createElement('button');
    scrollToTopBtn.innerHTML = '<i class="fas fa-arrow-up"></i>';
    scrollToTopBtn.className = 'scroll-to-top';
    scrollToTopBtn.setAttribute('aria-label', 'Scroll to top');
    document.body.appendChild(scrollToTopBtn);
    
    // Add CSS for scroll-to-top button
    const style = document.createElement('style');
    style.textContent = `
        .scroll-to-top {
            position: fixed;
            bottom: 30px;
            right: 30px;
            width: 50px;
            height: 50px;
            background: linear-gradient(135deg, var(--primary-blue), var(--secondary-blue));
            color: white;
            border: none;
            border-radius: 50%;
            cursor: pointer;
            font-size: 1.2rem;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            transition: all 0.3s ease;
            z-index: 999;
            display: none;
        }
        
        .scroll-to-top:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 20px rgba(0,0,0,0.3);
        }
        
        .scroll-to-top.visible {
            display: flex;
            align-items: center;
            justify-content: center;
        }
    `;
    document.head.appendChild(style);
    
    // Show/hide scroll-to-top button
    window.addEventListener('scroll', () => {
        if (window.pageYOffset > 300) {
            scrollToTopBtn.classList.add('visible');
        } else {
            scrollToTopBtn.classList.remove('visible');
        }
    });
    
    // Scroll to top functionality
    scrollToTopBtn.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
    
    // Add loading animation for images
    const images = document.querySelectorAll('img');
    images.forEach(img => {
        img.addEventListener('load', () => {
            img.classList.add('loaded');
        });
    });
    
    // Add CSS for image loading
    const imgStyle = document.createElement('style');
    imgStyle.textContent = `
        img {
            opacity: 0;
            transition: opacity 0.3s ease;
        }
        
        img.loaded {
            opacity: 1;
        }
    `;
    document.head.appendChild(imgStyle);
});

// Add urgency notification bar (optional - can be enabled/disabled)
function showUrgencyNotification() {
    const notification = document.createElement('div');
    notification.className = 'urgency-notification';
    notification.innerHTML = `
        <i class="fas fa-clock"></i> 
        <span>🔥 Limited slots available today! Call now for same-day service: </span>
        <a href="tel:+19297678000">(929) 767-8000</a>
        <button onclick="this.parentElement.remove()" aria-label="Close">×</button>
    `;
    
    // Add styles
    const style = document.createElement('style');
    style.textContent = `
        .urgency-notification {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(135deg, #dd6b20, #c05621);
            color: white;
            padding: 1rem;
            text-align: center;
            z-index: 10000;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 1rem;
            box-shadow: 0 -4px 20px rgba(0,0,0,0.2);
            animation: slideUp 0.5s ease;
        }
        
        @keyframes slideUp {
            from { transform: translateY(100%); }
            to { transform: translateY(0); }
        }
        
        .urgency-notification a {
            color: white;
            font-weight: bold;
            text-decoration: underline;
        }
        
        .urgency-notification button {
            background: none;
            border: none;
            color: white;
            font-size: 1.5rem;
            cursor: pointer;
            padding: 0;
            line-height: 1;
        }
        
        @media (max-width: 768px) {
            .urgency-notification {
                flex-direction: column;
                gap: 0.5rem;
                font-size: 0.9rem;
            }
        }
    `;
    document.head.appendChild(style);
    
    // Show after 5 seconds
    setTimeout(() => {
        document.body.appendChild(notification);
        
        // Auto-remove after 10 seconds
        setTimeout(() => {
            if (notification.parentElement) {
                notification.style.animation = 'slideDown 0.5s ease forwards';
                setTimeout(() => notification.remove(), 500);
            }
        }, 10000);
    }, 5000);
}

// Uncomment to enable urgency notification
// showUrgencyNotification();
