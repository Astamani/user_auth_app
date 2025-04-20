# User Authentication & Profile Management System

This is a full-stack web application built with **Ruby on Rails** and styled using **custom CSS**. It supports user authentication, email confirmation, role-based access control, profile management, and an admin dashboard for user management.

---

## 🔧 Tech Stack

- **Backend:** Ruby on Rails
- **Database:** SQLite / PostgreSQL (as needed)
- **Frontend:** HTML + CSS
- **Authentication:** Devise
- **Authorization:** CanCanCan
- **Avatar Uploads:** ActiveStorage
- **Email Confirmation:** ActionMailer

---

## ✨ Features

### 🔐 User Features
- Register with email confirmation
- Login & logout
- Edit profile
- Upload profile avatar
- View dashboard based on role

### 🛡️ Admin Features
- Admin dashboard to manage users
- Search, user data
- Role-based redirection (admin/user)
- Displays: Email, Role, Created at

---

## 📁 Folder Structure

app/ ├── controllers/ │ ├── admin/ │ │ └── users_controller.rb │ └── users_controller.rb ├── models/ │ └── user.rb ├── views/ │ ├── admin/ │ │ └── users/ │ └── users/ ├── assets/ │ └── stylesheets/ │ └── custom_admin.css (dashboard styling)


---

## 🚀 Getting Started

### Prerequisites
- Ruby >= 3.0
- Rails >= 7.0
- Bundler

### Setup

```bash
git clone https://github.com/astamani/user_auth_app.git
cd user_auth_app
bundle install
rails db:create db:migrate


rails server


👤 Roles & Redirection

Role	Dashboard Route
Admin	/admin/users
User	/dashboard

Role is set using role column in users table (admin, user, etc.).

📸 Screenshots


