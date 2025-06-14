<div align="center">
  <h2 align="center">Threads Clone</h2>
  <p align="center">
      A SwiftUI + Firebase-powered clone of Meta's Threads app, built for iOS.
    <br/>
    <br >
    <a href="https://github.com/SpencerVJones/ThreadsClone/issues">Report Bug</a>
    ·
    <a href="https://github.com/SpencerVJones/ThreadsClone/issues">Request Feature</a>
  </p>
</div>


<!-- PROJECT SHIELDS -->
![License](https://img.shields.io/github/license/SpencerVJones/ThreadsClone?style=for-the-badge)
![Contributors](https://img.shields.io/github/contributors/SpencerVJones/ThreadsClone?style=for-the-badge)
![Forks](https://img.shields.io/github/forks/SpencerVJones/ThreadsClone?style=for-the-badge)
![Stargazers](https://img.shields.io/github/stars/SpencerVJones/ThreadsClone?style=for-the-badge)
![Issues](https://img.shields.io/github/issues/SpencerVJones/ThreadsClone?style=for-the-badge)
![Last Commit](https://img.shields.io/github/last-commit/SpencerVJones/ThreadsClone?style=for-the-badge)
![Repo Size](https://img.shields.io/github/repo-size/SpencerVJones/ThreadsClone?style=for-the-badge)
![Platform](https://img.shields.io/badge/platform-iOS-lightgrey.svg?style=for-the-badge)
![SwiftUI](https://img.shields.io/badge/SwiftUI-Framework-blue.svg?style=for-the-badge)
![Combine](https://img.shields.io/badge/Combine-Framework-purple.svg?style=for-the-badge)
![CocoaPods](https://img.shields.io/badge/CocoaPods-supported-lightgrey.svg?style=for-the-badge)
![Firebase](https://img.shields.io/badge/Firebase-Integrated-ffca28.svg?style=for-the-badge)
![Auth](https://img.shields.io/badge/Firebase%20Auth-✔️-orange.svg?style=for-the-badge)
![Firestore](https://img.shields.io/badge/Firebase%20Firestore-✔️-yellow.svg?style=for-the-badge)
![Storage](https://img.shields.io/badge/Firebase%20Storage-✔️-blue.svg?style=for-the-badge)


## 📑 Table of Contents
- [Overview](#overview)
- [Technologies Used](#technologies-used)
- [Features](#features)
- [Demo](#demo)
- [Project Structure](#project-structure)
- [Testing](#testing)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [How to Use](#how-to-use)
- [Usage](#usage)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
	- [Contributors](#contributors)
- [License](#license)
- [Contact](#contact)

## Overview
ThreadsClone is a fully functional iOS app built using SwiftUI, Firebase Authentication, Firestore, and Firebase Storage. It replicates the core functionality of Meta's Threads app, allowing users to register, log in, create threads, explore content, and manage profiles—all in a streamlined and visually modern iOS environment.


## Technologies Used
- 🚀 Swift 6
- 🧩 SwiftUI
- 🔁 Combine
- 🔐 Firebase Authentication
- 📂 Firebase Firestore
- 🧾 Firebase Storage
- 🧪 Xcode + iOS Simulator

## Features
- User registration and login (Firebase Auth)
- Real-time feed of threads (Firestore)
- Create posts
- Explore page to discover new users
- Profile management
- Upload and update profile images (Firebase Storage)
- Tab-based navigation (SwiftUI TabView)
- Custom SwiftUI components and view modifiers

## Demo
Coming Soon!

## Project Structure
``` bash
ThreadsClone/
    ├── Core/
    │   ├── Activity/
    │   │   └── View/
    │   │       └── ActivityView.swift
    │   ├── Authentication/
    │   │   ├── Service/
    │   │   │   └── AuthService.swift
    │   │   ├── ViewModel/
    │   │   │   ├── LoginViewModel.swift
    │   │   │   └── RegistrationViewModel.swift
    │   │   └── Views/
    │   │       ├── LoginView.swift
    │   │       └── RegistrationView.swift
    │   ├── Components/
    │   │   ├── CircularProfileImageView.swift
    │   │   ├── ThreadCell.swift
    │   │   └── UserCell.swift
    │   ├── Explore/
    │   │   ├── View/
    │   │   │   └── ExploreView.swift
    │   │   └── viewModel/
    │   │       └── ExploreViewModel.swift
    │   ├── Feed/
    │   │   ├── View/
    │   │   │   └── FeedView.swift
    │   │   └── ViewModel/
    │   │       └── FeedViewModel.swift
    │   ├── Profile/
    │   │   ├── Components/
    │   │   │   ├── View/
    │   │   │   │   ├── ProfileHeaderView.swift
    │   │   │   │   └── UserContentListView.swift
    │   │   │   └── ViewModel/
    │   │   │       └── UserContentListViewModel.swift
    │   │   ├── CurrentUserProfile/
    │   │   │   ├── View/
    │   │   │   │   └── CurrentUserProfileView.swift
    │   │   │   └── ViewModel/
    │   │   │       └── CurrentUserProfileViewModel.swift
    │   │   ├── Edit Profile/
    │   │   │   ├── View/
    │   │   │   │   └── EditProfileView.swift
    │   │   │   └── ViewModel/
    │   │   │       └── EditProfileViewModel.swift
    │   │   ├── Model/
    │   │   │   └── ProfileThreadFilter.swift
    │   │   └── UserProfile/
    │   │       └── ProfileView.swift
    │   ├── Root/
    │   │   ├── View/
    │   │   │   └── ContentView.swift
    │   │   └── ViewModel/
    │   │       └── ContentViewModel.swift
    │   ├── TabBar/
    │   │   └── ThreadsTabView.swift
    │   └── TreadCreation/
    │       ├── View/
    │       │   └── CreateThreadView.swift
    │       └── ViewModel/
    │           └── CreateThreadViewModel.swift
    ├── Extensions/
    │   ├── PreviewProvider.swift
    │   └── Timestamp.swift
    ├── Model/
    │   ├── Thread.swift
    │   └── User.swift
    ├── Services/
    │   ├── ImageUploader.swift
    │   ├── ThreadService.swift
    │   └── UserService.swift
    └── Utils/
        └── View Modifiers/
            ├── SignInButtonModifier.swift
            └── TextFieldModifier.swift
```

## Testing
Coming Soon!

## Getting Started

### Prerequisites
#### 🔧 Firebase Setup

This project uses Firebase for backend services. To run the app locally or on your device, you’ll need to provide your own Firebase configuration.

#####  Required File

You must add a `GoogleService-Info.plist` file to the root of your iOS project. 

#####  Step-by-Step Setup

1.  Go to the Firebase Console.
    
2.  Click **“Add project”** and create a new Firebase project (or use an existing one).
    
3.  Click **“Add app”** and choose the **iOS** platform.
    
4.  Register your iOS bundle ID 
    
5.  Download the `GoogleService-Info.plist` file provided by Firebase.
    
6.  In Xcode, drag the `GoogleService-Info.plist` file into your project:
    
    -   Make sure **“Copy items if needed”** is checked.
        
    -   Add it to the appropriate targets.
        
7.  Confirm the following Firebase services are enabled:
    
    -   🔐 Authentication (e.g., Google Sign-In or Email/Password)
        
    -   ☁️ Firestore or Realtime Database (if used)
        
    -   🧾 Storage (if storing user data or files)
        

### Installation
1.  **Clone the repo**
 `git clone https://github.com/SpencerVJones/ThreadsClone.git cd ThreadsClone` 
    
2.  **Install dependencies** via CocoaPods
`sudo gem install cocoapods`
 `pod install` 
    
3.  **Open the project**
`open ThreadsClone.xcworkspace` 
    
4.  **Add `GoogleService-Info.plist`**  
    Add your Firebase configuration file to the project.
    
5.  **Build and run**
    -   Choose a simulator or your device.
    -   Press ⌘R or hit the play button in Xcode.
###  How to Use
 -   Open the app and register for a new account using your email and password.
-   Log in and start browsing threads on the **Feed** screen.
-   Use the **Explore** tab to discover users and view their content.
-   Tap the **+ icon** to create a new thread.
-   Head to your **Profile** to see all your activity or update your image/bio.
 
## Usage
 -   🧪 Great for learning SwiftUI and Firebase integration.
-   📱 Use as a base to build your own social or chat app.
-   🛠️ Customize components like `FeedViewModel`, `UserService`, or `ThreadService` to support more complex features.
 
## Roadmap
 - [ ] Add follow/unfollow functionality
 - [ ] Like/comment system for threads
 - [ ] Push notifications (Firebase Messaging)
 - [ ] Dark mode support
 - [ ] Unit and UI test coverage
 - [ ] Post image attachments
 
See open issues for a full list of proposed features (and known issues).
 
 
## Contributing
Contributions are welcome! Feel free to submit issues or pull requests with bug fixes, improvements, or new features.
- Fork the Project
- Create your Feature Branch (git checkout -b feature/AmazingFeature)
- Commit your Changes (git commit -m 'Add some AmazingFeature')
- Push to the Branch (git push origin feature/AmazingFeature)
- Open a Pull Request

### Contributors
<a href="https://github.com/SpencerVJones/ThreadsClone/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=SpencerVJones/ThreadsClone"/>
</a>


## License
Distributed under the MIT License. See LICENSE for more information.


## Contact
Spencer Jones
📧 [SpencerVJones@outlook.com](mailto:SpencerVJones@outlook.com)  
🔗 [GitHub Profile](https://github.com/SpencerVJones)  
🔗 [Project Repository](https://github.com/SpencerVJones/ThreadsClone)
