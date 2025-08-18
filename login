<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập - PHÒNG KHÁM CHỮA BỆNH PHÓ GIÁO SƯ, TIẾN SỸ, BÁC SỸ VÕ TƯỜNG KHA</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
       :root {
            --primary-color: #FFD700; /* Lemon yellow */
            --secondary-color: #333; /* Dark contrast for toolbars */
            --accent-color: #FFA500; /* Orange accent */
            --text-color: #333;
            --light-bg: #FFF9E6;
            --border-color: #E6C200;
             }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f9f9f9;
            color: var(--text-color);
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        
        .header {
            background-color: var(--secondary-color);
            color: white;
            padding: 15px 0;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }
        
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            display: flex;
            align-items: center;
        }
        
        .logo img {
            height: 5px;
            margin-right: 1.5px;
            border-radius: 50%;
        }
        
        .logo h1 {
            font-size: 1.5rem;
            color: var(--primary-color);
        }
        
        .nav-links {
            display: flex;
            list-style: none;
        }
        
        .nav-links li {
            margin-left: 20px;
        }
        
        .nav-links a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
        }
        
        .nav-links a:hover {
            color: var(--primary-color);
        }
        
        .main-content {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px 0;
            background-color: var(--light-bg);
        }
        
        .login-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 450px;
            padding: 30px;
        }
        
        .login-header {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .login-header h2 {
            color: var(--secondary-color);
            margin-bottom: 10px;
        }
        
        .login-header p {
            color: #666;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--secondary-color);
        }
        
        .form-group input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            transition: border-color 0.3s;
        }
        
        .form-group input:focus {
            outline: none;
            border-color: var(--primary-color);
        }
        
        .form-options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        
        .remember-me {
            display: flex;
            align-items: center;
        }
        
        .remember-me input {
            margin-right: 5px;
        }
        
        .forgot-password {
            color: var(--accent-color);
            text-decoration: none;
            font-size: 0.9rem;
        }
        
        .forgot-password:hover {
            text-decoration: underline;
        }
        
        .btn {
            display: block;
            width: 100%;
            background-color: var(--primary-color);
            color: var(--secondary-color);
            padding: 12px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            transition: all 0.3s;
            border: none;
            cursor: pointer;
            font-size: 1rem;
            text-align: center;
        }
        
        .btn:hover {
            background-color: var(--accent-color);
            color: white;
        }
        
        .login-footer {
            text-align: center;
            margin-top: 20px;
            color: #666;
        }
        
        .login-footer a {
            color: var(--accent-color);
            text-decoration: none;
        }
        
        .login-footer a:hover {
            text-decoration: underline;
        }
        
        .footer {
            background-color: var(--secondary-color);
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        
        .notification {
            position: fixed;
            top: 20px;
            right: 20px;
            padding: 15px 20px;
            background-color: white;
            border-left: 4px solid var(--accent-color);
            border-radius: 5px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            z-index: 1000;
            display: none;
        }
        
        .notification.error {
            border-left-color: #e74c3c;
        }
        
        .notification.success {
            border-left-color: #2ecc71;
        }
        
        .notification.show {
            display: block;
            animation: slideIn 0.3s ease-out;
        }
        
        @keyframes slideIn {
            from {
                transform: translateX(100%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }
        
        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
            }
            
            .nav-links {
                margin-top: 15px;
            }
        }
    </style>
</head>
<body>
    <header class="header">
        <div class="container">
            <div class="header-content">
                <div class="Logo">
                    <img src="https://cdn.pixabay.com/animation/2022/07/29/14/41/14-41-02-729_512.gif" alt="Logo">
                    <h1>PHÒNG KHÁM CHỮA BỆNH PHÓ GIÁO SƯ, TIẾN SỸ, BÁC SỸ VÕ TƯỜNG KHA</h1>
                </div>
                <nav>
                    <ul class="nav-links">
                        <li><a href="trangchu.html">Trang chủ</a></li>
                        <li><a href="#about">Giới thiệu</a></li>
                        <li><a href="#services">Dịch vụ</a></li>
                        <li><a href="#products">Sản phẩm</a></li>
                        <li><a href="#contact">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <div class="main-content">
        <div class="login-container">
            <div class="login-header">
                <h2>Đăng nhập</h2>
                <p>Đăng nhập để truy cập hệ thống quản lý</p>
            </div>
            <form id="loginForm">
                <div class="form-group">
                    <label for="username">Tên đăng nhập</label>
                    <input type="text" id="username" name="username" placeholder="Nhập tên đăng nhập" required>
                </div>
                <div class="form-group">
                    <label for="password">Mật khẩu</label>
                    <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" required>
                </div>
                <div class="form-options">
                    <div class="remember-me">
                        <input type="checkbox" id="remember" name="remember">
                        <label for="remember">Ghi nhớ đăng nhập</label>
                    </div>
                    <a href="#" class="forgot-password">Quên mật khẩu?</a>
                </div>
                <button type="submit" class="btn">Đăng nhập</button>
            </form>
            <div class="login-footer">
                <p>Chưa có tài khoản? <a href="#">Liên hệ quản trị viên</a></p>
            </div>
        </div>
    </div>

    <div class="notification" id="notification"></div>

    <footer class="footer">
        <div class="container">
            <p>&copy; 2023 PHÒNG KHÁM CHỮA BỆNH PHÓ GIÁO SƯ, TIẾN SỸ, BÁC SỸ VÕ TƯỜNG KHA. Tất cả quyền được bảo lưu.</p>
        </div>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const loginForm = document.getElementById('loginForm');
            const notification = document.getElementById('notification');
            
            // Sample login credentials
            const validCredentials = {
                username: 'admin',
                password: 'admin123'
            };
            
            loginForm.addEventListener('submit', function(e) {
                e.preventDefault();
                
                const username = document.getElementById('username').value;
                const password = document.getElementById('password').value;
                
                if (username === validCredentials.username && password === validCredentials.password) {
                    showNotification('Đăng nhập thành công! Đang chuyển hướng...', 'success');
                    
                    // Redirect to dashboard after successful login
                    setTimeout(() => {
                        window.location.href = 'dashboard.html';
                    }, 2000);
                } else {
                    showNotification('Tên đăng nhập hoặc mật khẩu không đúng!', 'error');
                }
            });
            
            function showNotification(message, type) {
                notification.textContent = message;
                notification.className = 'notification ' + type + ' show';
                
                setTimeout(() => {
                    notification.classList.remove('show');
                }, 3000);
            }
        });
    </script>
</body>
</html>
