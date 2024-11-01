<footer class="footer-section">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <div class="footer-info">
                        <h3>AVP Portfolio</h3>
                        <p class="mb-4">Crafting digital experiences with passion and precision. Transforming ideas into elegant solutions.</p>
                        <div class="social-links">
                            <a href="#" class="social-icon"><i class="fab fa-github"></i></a>
                            <a href="#" class="social-icon"><i class="fab fa-linkedin"></i></a>
                            <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <div class="footer-contact">
                        <h4>Contact Me</h4>
                        <p><i class="fas fa-envelope"></i> abhay@example.com</p>
                        <p><i class="fas fa-phone"></i> +1 234 567 890</p>
                        <p><i class="fas fa-map-marker-alt"></i> New York, NY 10012</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer-newsletter">
                        <h4>Newsletter</h4>
                        <p>Subscribe for updates and insights</p>
                        <form class="newsletter-form">
                            <input type="email" placeholder="Enter your email">
                            <button type="submit">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="copyright">
                <p>© 2024 Designed & Developed with <i class="fas fa-heart pulse"></i> by <span>AbhayVishnuPraveen</span></p>
            </div>
        </div>
    </div>
</footer>

<style>
.footer-section {
    background: linear-gradient(145deg, #1e3c72 0%, #2a5298 100%);
    color: #fff;
    position: relative;
    overflow: hidden;
    margin-top:5rem;
}

.footer-section::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 1px;
    background: linear-gradient(to right, transparent, rgba(255,255,255,0.3), transparent);
}

.footer-top {
    padding: 60px 0 30px;
}

.footer-info h3 {
    font-size: 24px;
    margin-bottom: 20px;
    font-weight: 700;
    background: linear-gradient(45deg, #fff, #f0f0f0);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    display: inline-block;
}

.footer-info p {
    font-size: 15px;
    line-height: 24px;
    opacity: 0.8;
}

.social-links {
    margin-top: 20px;
    display: flex;
    gap: 15px;
}

.social-icon {
    width: 36px;
    height: 36px;
    background: rgba(255,255,255,0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    color: #fff;
    font-size: 16px;
    transition: all 0.3s ease;
}

.social-icon:hover {
    background: #fff;
    color: #1e3c72;
    transform: translateY(-3px);
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
}

.footer-contact h4,
.footer-newsletter h4 {
    font-size: 18px;
    font-weight: 600;
    margin-bottom: 20px;
    position: relative;
    padding-bottom: 10px;
}

.footer-contact h4::after,
.footer-newsletter h4::after {
    content: '';
    position: absolute;
    left: 0;
    bottom: 0;
    height: 2px;
    width: 50px;
    background: linear-gradient(to right, #fff, transparent);
}

.footer-contact p {
    margin-bottom: 15px;
    display: flex;
    align-items: center;
    gap: 10px;
    font-size: 14px;
}

.footer-contact i {
    width: 30px;
    height: 30px;
    background: rgba(255,255,255,0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    font-size: 14px;
}

.newsletter-form {
    position: relative;
    margin-top: 20px;
}

.newsletter-form input {
    width: 100%;
    padding: 12px 15px;
    background: rgba(255,255,255,0.1);
    border: 1px solid rgba(255,255,255,0.1);
    border-radius: 25px;
    color: #fff;
    font-size: 14px;
    transition: all 0.3s ease;
}

.newsletter-form input:focus {
    background: rgba(255,255,255,0.15);
    border-color: rgba(255,255,255,0.3);
    outline: none;
}

.newsletter-form button {
    position: absolute;
    right: 5px;
    top: 5px;
    padding: 8px 20px;
    background: linear-gradient(45deg, #4CAF50, #45a049);
    border: none;
    border-radius: 20px;
    color: #fff;
    font-size: 14px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.newsletter-form button:hover {
    background: linear-gradient(45deg, #45a049, #4CAF50);
    transform: translateX(-2px);
}

.footer-bottom {
    padding: 20px 0;
    background: rgba(0,0,0,0.1);
    text-align: center;
}

.copyright {
    font-size: 14px;
    opacity: 0.8;
}

.copyright span {
    background: linear-gradient(45deg, #fff, #f0f0f0);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    font-weight: 600;
}

.copyright i {
    color: #ff4b4b;
    margin: 0 5px;
}

@keyframes pulse {
    0% { transform: scale(1); }
    50% { transform: scale(1.2); }
    100% { transform: scale(1); }
}

.pulse {
    animation: pulse 1.5s infinite;
    display: inline-block;
}

/* Responsive Design */
@media (max-width: 768px) {
    .footer-top {
        padding: 40px 0 20px;
    }
    
    .footer-info,
    .footer-contact,
    .footer-newsletter {
        text-align: center;
    }
    
    .social-links {
        justify-content: center;
    }
    
    .footer-contact h4::after,
    .footer-newsletter h4::after {
        left: 50%;
        transform: translateX(-50%);
    }
    
    .footer-contact p {
        justify-content: center;
    }
    
    .newsletter-form {
        max-width: 300px;
        margin: 20px auto 0;
    }
}

/* Hover Effects */
.footer-section a:hover {
    color: #fff;
    text-decoration: none;
}

.footer-info p:hover {
    opacity: 1;
}

.footer-contact p:hover i {
    background: rgba(255,255,255,0.2);
    transform: rotate(360deg);
    transition: all 0.5s ease;
}
</style>