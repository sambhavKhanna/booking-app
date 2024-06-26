# Booking App

## Introduction

This is a mobile application that manages bookings for villas. It provides a platform for users to create, view, and delete their bookings. Each villa has an account, and under each account, there are multiple users, each having their name, phone number, and email id. 

## Features

- User Management: As of now, there are 2 different categories of users, the normal users, who can manage their bookings, and the admins, who can manage the users in each villa.
- Booking Management: Users can create, view, and delete their bookings through this application.

## Frontend

I have chosen Flutter as the frontend framework for my project due to its numerous advantages. One of its standout features is its cross-platform compatibility, which allows me to develop applications that work seamlessly on both Android and iOS devices. Additionally, Flutter boasts a rich library of widgets, making it easier to create a visually appealing and functional user interface. Another noteworthy benefit is the ability to maintain consistent UI and logic across different platforms, ensuring a unified user experience.<br>
This mobile application is currently only compatible with the Android OS, since iOS development typically requires macOS, which is not available on Windows OS. However, non-Android can still access the application through its web-hosted version. Thanks to Flutter's cross-platform capabilities, I was able to replicate the same interface design on the web, ensuring a cohesive user experience across all platforms.

## Design Principle

I've adopted a minimalist approach in the UI/UX design of this application, with the primary goal of providing users with a straightforward and comfortable experience. 

## Color Palette

![Color Palette](assets/color_palette_cropped.png)

## Backend and Database

In this application, I've strategically utilized a Node.js backend server to manage user roles during login. This is achieved through the Firebase Admin SDK, which allows me to create custom claims for each user. This approach enables me to distinguish between admins and regular users, and accordingly, provide them with different functionalities. For instance, only admins have the authority to add or remove users from their villa account, while regular users can only view and delete their bookings. The use of a backend server for these functions enhances the application's security. Since these functions do not run on the client side, they are less susceptible to tampering. On the other hand, for the booking-related functions, I've chosen to embed them directly into the frontend. This decision was driven by the need to optimize the application's performance and responsiveness. By reducing the number of API calls made to the server, the application can process booking requests more swiftly.<br>
For the database, I've opted for Google Firestore, a NoSQL document database. It's an ideal choice for small to medium-scale mobile application, offering the flexibility of schema-less data structures, real-time synchronization, and scalability to accommodate potential growth. Firestore's dynamic nature ensures adaptability to evolving data requirements, while its real-time capabilities enhance user interaction. This decision ensures a robust and efficient backend infrastructure tailored to the application.

## Prerequisites

Before you can run this application, you need to have the following installed:

- [Flutter](https://flutter.dev/docs/get-started/install): This project is built with Flutter. Follow the linked guide to set up Flutter on your system.

## Installation

1. Clone the repository: Open a terminal and run the following command to clone the repository:

    ```bash
    git clone https://github.com/aadium/booking-app.git
    ```

2. Navigate to the project directory:

    ```bash
    cd booking-app
    ```

3. Get the dependencies: Flutter manages its packages and dependencies through a system called Pub. To pull down the necessary packages, run:

    ```bash
    flutter pub get
    ```

## Usage

To run the application, use the following command in the terminal:

```bash
flutter run
```

## License

This project is licensed with the Apache License
Version 2.0. See the [LICENSE](LICENSE) file for details.