<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="E_Commerce_Platform_for_Spices.AdminPortal.Login" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#f8f8f5" />
    <title>Admin Login | Manufacturing Portal</title>
    <link rel="stylesheet" href="Content/login.css" />
</head>
<body>
    <form id="form1" runat="server" class="login-page">
        <main class="login-shell">
            <header class="brand">
                <img class="brand-mark" src="Images/brand-mark.png" alt="Heritage Harvest" />
                <h1>Admin</h1>
                <p>Manufacturing Portal</p>
            </header>

            <section class="login-card" aria-labelledby="form-title">
                <div class="card-heading">
                    <h2 id="form-title">Secure Sign In</h2>
                    <p>Enter your credentials to access the dashboard.</p>
                </div>

                <div class="field-group">
                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="EmailTextBox" Text="Email Address" />
                    <div class="input-wrap">
                        <svg class="leading-icon" viewBox="0 0 24 24" aria-hidden="true"><path d="M3.75 6.75h16.5v10.5H3.75zM4.5 7.5 12 13l7.5-5.5" /></svg>
                        <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email" CssClass="text-input" placeholder="admin@heritageharvest.com" autocomplete="username" />
                    </div>
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="EmailTextBox" CssClass="field-error" ErrorMessage="Enter your email address." Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="EmailFormat" runat="server" ControlToValidate="EmailTextBox" CssClass="field-error" ValidationExpression="^[^\s@]+@[^\s@]+\.[^\s@]+$" ErrorMessage="Enter a valid email address." Display="Dynamic" />
                </div>

                <div class="field-group password-group">
                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="PasswordTextBox" Text="Password" />
                    <div class="input-wrap">
                        <svg class="leading-icon" viewBox="0 0 24 24" aria-hidden="true"><rect x="5.5" y="10" width="13" height="10" rx="1.5"/><path d="M8 10V7a4 4 0 0 1 8 0v3m-4 4v2" /></svg>
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="text-input password-input" autocomplete="current-password" />
                        <button class="visibility-button" id="toggle-password" type="button" aria-label="Show password" title="Show password">
                            <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M2.5 12s3.3-6 9.5-6 9.5 6 9.5 6-3.3 6-9.5 6-9.5-6-9.5-6Z"/><circle cx="12" cy="12" r="2.5"/><path class="eye-slash" d="m4 4 16 16"/></svg>
                        </button>
                    </div>
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="PasswordTextBox" CssClass="field-error" ErrorMessage="Enter your password." Display="Dynamic" />
                </div>

                <div class="form-options">
                    <label class="remember-option" for="RememberCheckBox">
                        <asp:CheckBox ID="RememberCheckBox" runat="server" />
                        <span>Remember me</span>
                    </label>
                    <asp:LinkButton ID="ForgotPasswordButton" runat="server" CssClass="forgot-button" CausesValidation="false" OnClick="ForgotPasswordButton_Click">Forgot Password?</asp:LinkButton>
                </div>

                <asp:Button ID="SignInButton" runat="server" CssClass="sign-in-button" Text="Sign In" OnClick="SignInButton_Click" />
                <asp:Label ID="FormMessage" runat="server" CssClass="form-message" role="status" aria-live="polite" />

                <div class="secure-note">
                    <svg viewBox="0 0 24 24" aria-hidden="true"><rect x="6" y="10" width="12" height="10" rx="1.5"/><path d="M9 10V7a3 3 0 0 1 6 0v3m-3 4v2"/></svg>
                    <span>End-to-end encrypted connection</span>
                </div>
            </section>
        </main>
    </form>
    <script>
        (() => {
            const input = document.getElementById('<%= PasswordTextBox.ClientID %>');
            const toggle = document.getElementById('toggle-password');
            toggle.addEventListener('click', () => {
                const showing = input.type === 'password';
                input.type = showing ? 'text' : 'password';
                toggle.setAttribute('aria-label', showing ? 'Hide password' : 'Show password');
                toggle.title = showing ? 'Hide password' : 'Show password';
                toggle.classList.toggle('is-visible', showing);
            });
        })();
    </script>
</body>
</html>
