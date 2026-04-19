<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Login</title>
<link rel="stylesheet" href="css/admin-login.css">
</head>
<body>
    <main class="login-shell">
        <section class="login-hero">
            <div class="hero-badge">Homesteader India Admin</div>
            <h1>Manage farmers, products, reports, and outreach from one place.</h1>
            <p>
                A cleaner admin experience for your agriculture platform with quick access to
                requests, analytics, product updates, and training activity.
            </p>

            <div class="hero-grid">
                <article class="hero-card">
                    <span class="hero-card-label">Operations</span>
                    <strong>Agro approvals and farmer records</strong>
                    <p>Track registration activity and admin actions with a simpler workspace.</p>
                </article>
                <article class="hero-card">
                    <span class="hero-card-label">Content</span>
                    <strong>Product and blog management</strong>
                    <p>Keep storefront data and platform communication organized in one flow.</p>
                </article>
                <article class="hero-card">
                    <span class="hero-card-label">Insights</span>
                    <strong>Contact requests and reports</strong>
                    <p>Review incoming messages faster with a dashboard designed for clarity.</p>
                </article>
            </div>
        </section>

        <section class="login-panel">
            <div class="login-panel-inner">
                <div class="login-brand">
                    <span class="brand-kicker">Secure Access</span>
                    <h2>Admin Sign In</h2>
                    <p>Use your admin or sub-admin credentials to continue.</p>
                </div>

                <form action="adminmapping" method="post" class="login-form">
                    <label for="name">Username</label>
                    <input id="name" class="text email" type="text" name="name" placeholder="Enter your username" required>

                    <label for="password">Password</label>
                    <input id="password" class="text" type="password" name="password" placeholder="Enter your password" required>

                    <button type="submit">Login to Dashboard</button>
                </form>

                <div class="login-footnote">
                    <span>Admin workspace</span>
                    <span>Protected portal</span>
                </div>
            </div>
        </section>
    </main>
</body>
</html>
