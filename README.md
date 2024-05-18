# Skibidi Insurance Application

## Overview

The Skibidi Insurance Application is a multi-platform solution designed to enhance user experiences in choosing and managing insurance policies. This application utilizes Machine Learning models to suggest the most suitable insurance policies based on user-inputted lifestyle data. The architecture is robust, featuring a 3-tier model with a frontend built in Flutter, a Django backend API, and a MySQL database managed on Microsoft Azure.

## Features

- **User Authentication**: Secure email-based user authentication system.
- **User Dashboard**: Displays user profile and insurance policy details.
- **Suggested Policies**: Utilizes ML models to suggest personalized insurance policies based on user lifestyle data.
- **Policy Management**: Users can view, purchase, and manage their insurance policies.
- **Multi-Platform Support**: Available on iOS, Android, Web, macOS, and Windows.

## Business Use Cases

1. **Policy Recommendation**: Users receive insurance policy suggestions based on their lifestyle data.
2. **Policy Retrieval**: Users can retrieve and view details of their purchased policies.
3. **Policy Purchase**: Users can buy recommended insurance policies directly through the app.

## Application Architecture

Skibidi follows a 3-tier architecture:

- **Presentation Layer**: Implemented using Flutter to provide a cross-platform user interface.
- **Application Layer (Business Logic)**: Built with Django, this layer handles the core functionality and business logic of the application.
- **Data Layer (Database)**: Uses MySQL for data storage and management, initially set up locally and migrated to Azure for scalability and security.

## Application Architecture
![image](https://github.com/apoorvsingh2000/Skibidi-Insurance/assets/58786316/de5b9852-3bbd-4c15-a1d5-192295f5a038)

## Backend API

The backend is structured to handle various types of requests:

- Query data
- Modify/add data
- Delete information

The API routes include:

- `POST /add_customer`: Adds a new customer.
- `POST /add_policy`: Adds a new policy.
- `POST /purchase_policy`: Endpoint for purchasing a policy.
- `GET /policies`: Retrieves all policies.
- `GET /policies/{type}`: Fetches policies by type.
- `GET /obesity_level`: Determines the obesity level of the user.
- `GET /purchased_policies`: Fetches policies purchased by the user.

## Database

The database uses MySQL with optimizations for fast data retrieval:

- **Object Relational Mapping (ORM)**: Django ORM is used for database interactions.
- **Indexing**: Applied on frequently accessed tables to improve performance.
- **Normalization**: Ensures data integrity and reduces redundancy.

## Updating Insurance Policy Quotes Using Machine Learning

Machine Learning is utilized to adjust insurance quotes based on user lifestyle data. The models include:

- K-Nearest Neighbors (KNN)
- Support Vector Classifier (SVC)
- Decision Tree Classifier
- Random Forest Classifier
- AdaBoost Classifier
- Gradient Boosting Classifier
- Stochastic Gradient Descent (SGD) Classifier

The ML workflow updates policy quotes and suggests relevant policies based on the user's predicted obesity level.

## Version Control

The project uses GitHub for version control, organized under the [Skibidi Insurance Project organization](https://github.com/orgs/Skibidi-Insurance-Project/repositories). The repositories are:

- **[Skibidi-be](https://github.com/Skibidi-Insurance-Project/Skibidi-be)**: Contains the backend API and ML models.
- **[Skibidi-Insurance](https://github.com/Skibidi-Insurance-Project/Skibidi-Insurance)**: Contains the frontend application developed in Flutter.

## Setup and Installation

To set up the Skibidi Insurance Application:

1. **Clone the repositories**:
   ```bash
   git clone https://github.com/Skibidi-Insurance-Project/Skibidi-be.git
   git clone https://github.com/Skibidi-Insurance-Project/Skibidi-Insurance.git

2. Install dependencies for the backend (Django):
   ```bash
   cd Skibidi-be
   pip install -r requirements.txt
   
3. Install dependencies for the frontend (Flutter):
   ```bash
   cd Skibidi-Insurance
   flutter pub get
   
4. Start the Django backend server:
   ```bash
   python manage.py runserver
   
5. Run the Flutter application:
   ```bash
   flutter run

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Authors
- Apoorv Singh
- Raghav Mantri

## Acknowledgments
Special thanks to NYU and Dr. Jean-Claude Franchitti for their guidance and support throughout the development of this project.
Thanks to all contributors and testers who helped in refining the application.
