# Ocean Education Foundation Management System (OEFMS)

## Project Overview
The Ocean Education Foundation Management System (OEFMS) is a comprehensive database management system developed as part of the DATA 210 course project. It serves as a centralized platform for managing study abroad programs, student information, and educational resources.

## Purpose
OEFMS simplifies the study-abroad process by providing a unified platform where:
- Students can access important notices and announcements
- Counselors can efficiently track student progress
- Administrators can manage educational programs and student data

## Key Features

### User Management
- Multi-level user access (Admin, Student)
- Secure login system with password protection
- User profile management
- Password recovery functionality

### Student Management
- Comprehensive student registration system
- Student profile management including:
  - Personal information
  - Contact details
  - Educational background
  - Profile image upload capability
- Student ID generation
- Class assignment

### Notice Management
- Two-tier notice system:
  - Public notices for general announcements
  - Class-specific notices for targeted communication
- Real-time notice updates
- Chronological organization of notices

### Class Management
- Class creation and organization
- Section assignment
- Class-wise student grouping
- Automated timestamp tracking for all entries

### Content Management
- Dynamic page content management
- About Us page customization
- Contact information management
- Mobile-responsive design

## Database Structure

### Core Tables

1. `tbladmin`
   - Manages administrator information
   - Fields: ID, AdminName, UserName, MobileNumber, Email, Password

2. `tblstudent`
   - Stores comprehensive student data
   - Fields: ID, StudentName, StudentEmail, StudentClass, Gender, DOB, StuID, FatherName, MotherName, ContactNumber, AlternateNumber, Address, UserName, Password, Image

3. `tblclass`
   - Handles class organization
   - Fields: ID, ClassName, Section, CreationDate

4. `tblnotice`
   - Manages class-specific notices
   - Fields: ID, NoticeTitle, ClassId, NoticeMsg, CreationDate

5. `tblpublicnotice`
   - Stores general announcements
   - Fields: ID, NoticeTitle, NoticeMessage, CreationDate

6. `tblpage`
   - Controls dynamic page content
   - Fields: ID, PageType, PageTitle, PageDescription, Email, MobileNumber

## Technical Implementation

### Technology Stack
- Frontend: HTML, CSS, JavaScript, Bootstrap
- Backend: PHP
- Database: MySQL (MariaDB)
- Server: Apache

### Directory Structure
```
/
├── admin/           # Administrator interface
├── user/            # Student interface
├── includes/        # Shared components
├── css/            # Styling files
├── js/             # JavaScript files
├── images/         # Media assets
├── Database/       # Database schema
└── fonts/          # Typography resources
```

### Security Features
- Password hashing
- Session management
- SQL injection prevention
- Access control mechanisms

## Installation Guide

1. Prerequisites:
   - PHP 7.0 or higher
   - MySQL/MariaDB
   - Apache web server

2. Database Setup:
   - Create a new database named 'oefmsdb'
   - Import the schema from `/Database/oefmsdb.sql`

3. Configuration:
   - Update database credentials in `/includes/dbconnection.php`
   - Configure Apache virtual host if needed

4. Access:
   - Admin Panel: `/admin/login.php`
   - Student Portal: `/user/login.php`

## Default Credentials
Admin:
- Username: aarati65
- Email: aarati@gmail.com

## Features in Detail

### Admin Panel
- Dashboard with overview statistics
- Student management interface
- Notice creation and management
- Class management tools
- Profile and password management
- System configuration options

### Student Portal
- Personal dashboard
- Notice viewing interface
- Profile management
- Document verification status
- Password management


## Contributing
This project was developed as part of DATA 210 coursework. For any improvements or bug fixes, please submit a pull request.

## Support
For technical support or queries, contact: prashantkoirala465@gmail.com

## License
This project is part of academic coursework and should be used accordingly.

---

