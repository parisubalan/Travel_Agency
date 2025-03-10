# Travel Agency with booking ( Mini Project )

# Description
Traveling has become an integral part of modern lifestyles, and the demand for efficient and user-friendly travel agency management systems is continuously growing. This project, titled **Travel Agency with Booking** is designed to address these needs by creating a comprehensive and interactive platform for managing travel packages, user bookings, and associated operational tasks.

# Technical Details
**Software Requirements**
  <br />Operating System  	-	Any Windows OS
  <br />Front end  		      -	Asp.net with C#
  <br />Back end  		      -	SQL
  <br />Application         -	Visual Studio 2012
  <br />Browser             -	ANY BROWSER
<br /><br />**Hardware Requirements**
  <br />Processors 		      -	Intel Pentium
  <br />RAM        		      -	2GB RAM
  <br />Hard Disk 		      -	10GB

# Table Structure
**Table1 : AdminsTable**
| Column Name | Data Type    | Description                          | Constraints                                  |
|-------------|--------------|--------------------------------------|----------------------------------------------|
| Id          | INT          | Unique identifier for each admin     | Primary Key, Identity (auto-increment starting at 1, step 1) |
| name        | VARCHAR(50)  | Admin's name                        | Not null                                     |
| email       | VARCHAR(50)  | Admin's email address               | Not null                                     |
| password    | VARCHAR(50)  | Admin's password                    | Not null                                     |
| mobile      | VARCHAR(50)  | Admin's mobile phone number         | Not null                                     |
| address     | VARCHAR(50)  | Admin's physical address            | Not null                                     |

**Table2 : PackageTable**
| Column Name      | Data Type       | Description                            | Constraints                           |
|------------------|-----------------|----------------------------------------|---------------------------------------|
| Id               | INT             | Unique identifier for each package     | Primary key, Identity (auto-increment starting at 1, step 1) |
| packageCode      | VARCHAR(50)     | Code representing the package          | Not null                              |
| name             | VARCHAR(50)     | Name of the package                    | Not null                              |
| description      | VARCHAR(50)     | Description of the package             | Not null                              |
| price            | VARCHAR(50)     | Price of the package                   | Not null                              |
| bookingCount     | VARCHAR(50)     | Number of bookings for the package     | Not null                              |
| duration         | VARCHAR(50)     | Duration of the package                | Not null                              |
| members          | VARCHAR(50)     | Number of members included in the package | Not null                           |
| totalRevenue     | INT             | Total revenue generated from the package | Not null                            | 

**Table3 : BookingsTable**
| Column Name      | Data Type       | Description                              | Constraints                                  |
|------------------|-----------------|------------------------------------------|----------------------------------------------|
| Id               | INT             | Unique identifier for each booking       | Primary Key, Identity (auto-increment starting at 1, step 1) |
| bookingCode      | VARCHAR(50)     | Code representing the booking            | Not null                                     |
| packCode         | VARCHAR(50)     | Code of the associated package           | Not null                                     |
| packname         | VARCHAR(50)     | Name of the associated package           | Not null                                     |
| packDesc         | VARCHAR(50)     | Description of the package               | Not null                                     |
| packPrice        | VARCHAR(50)     | Price of the package                     | Not null                                     |
| packDuration     | VARCHAR(50)     | Duration of the package                  | Not null                                     |
| packMembers      | VARCHAR(50)     | Number of members in the package         | Not null                                     |
| clientName       | VARCHAR(50)     | Name of the client                       | Not null                                     |
| clientMobile     | VARCHAR(50)     | Mobile number of the client              | Not null                                     |
| clientEmail      | VARCHAR(50)     | Email address of the client              | Not null                                     |
| startDate        | VARCHAR(50)     | Start date of the booking                | Not null                                     |
| endDate          | VARCHAR(50)     | End date of the booking                  | Not null                                     |
| bookingStatus    | VARCHAR(50)     | Status of booking                        | Not null                                     |
| resone           | VARCHAR(50)     | Cancellation resone                      | Not null                                     |

# Module's
**1.Multiple Package Management**: The system allows travel agencies to create and edit various travel packages, including details like package name, duration, price, and member limit's feature helps organize and present different travel options to users effectively.
<br />**2.User Booking Interface:** Users can explore the available packages and book the one that best suits their preferences. The booking process is intuitive and ensures that users can securely and quickly reserve their desired packages.
<br />**3.Booking Details Screen:** A dedicated screen displays the booking details for both the user and the travel agency staff. This feature ensures transparent and efficient handling of customer reservations.
<br />**4.Package Create and Edit Screen:** Travel agencies can manage their offerings seamlessly using a specialized interface for creating new packages and editing existing ones. This functionality provides the flexibility to keep the package list updated with minimal effort.
<br />**5. Reports Screen:** The reporting feature enables administrators to generate insights about booking trends, revenue generation, and user preferences. This data can help in making strategic business decisions.


# Flow sketches
![000_Login_Register_Screen](https://github.com/user-attachments/assets/99d1a4f6-7177-4953-bda6-ee70f50ef59d)


![03_Travel_Agency_Updated](https://github.com/user-attachments/assets/5e48dfbc-7733-42ff-99ad-8df8cdb0463a)


