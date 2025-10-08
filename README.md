# 🏙️ CityConnect - Public Issue Reporter

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-02569B?logo=flutter)](https://flutter.dev)
[![Firebase](https://img.shields.io/badge/Firebase-Enabled-FFCA28?logo=firebase)](https://firebase.google.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

**CityConnect** is a civic engagement mobile application that empowers citizens to report local public issues like potholes, broken streetlights, garbage accumulation, and more. Built with Flutter and Firebase, it connects citizens directly with city services for faster resolution.

## 📱 Features

### For Citizens
- 📍 **Report Issues** - Submit issues with photos, location, and descriptions
- 🗺️ **Interactive Map** - View all reported issues on an interactive map
- 📊 **Track Status** - Monitor your reports from "Pending" to "Resolved"
- 💬 **Engage** - Comment on issues and upvote for visibility
- 🔔 **Notifications** - Get real-time updates on your reports
- 👤 **Profile Management** - View submission history and manage account


## 🎨 Design System

| Element | Value |
|---------|-------|
| **Primary Color** | #1976D2 (Blue) |
| **Accent Color** | #F9A825 (Amber) |
| **Background** | #F5F6FA (Light Grey) |
| **Font** | Inter / Poppins |
| **Border Radius** | 16px |
| **Icons** | Material Icons (Outlined) |



## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0 or higher)
- Dart SDK (2.17 or higher)
- Firebase account
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/sayedsinan/CityConnect-Public-Issue-Reporter
   cd city_connect
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Firebase Setup**
   
   a. Create a new Firebase project at [Firebase Console](https://console.firebase.google.com)
   
   b. Enable the following services:
      - Authentication (Email/Password & Google Sign-in)
      - Cloud Firestore
      - Firebase Storage
      - Cloud Messaging (FCM)
   
   c. Download configuration files:
      - `google-services.json` for Android → `android/app/`
      - `GoogleService-Info.plist` for iOS → `ios/Runner/`
   
   d. Update Firebase configuration in your project

4. **Run the app**
   ```bash
   flutter run
   ```

## 📦 Dependencies

### Current Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  get: ^4.7.2
  firebase_auth: ^6.1.0
  firebase_core: ^4.1.1
  google_maps_flutter: ^2.13.1
  flutter_vector_icons: ^2.0.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

### Recommended Additional Dependencies
To implement all features, add these to your `pubspec.yaml`:

```yaml
dependencies:
  # Firebase Services
  cloud_firestore: ^5.5.1
  firebase_storage: ^12.4.1
  firebase_messaging: ^15.1.5
  
  # Location Services
  geolocator: ^13.0.2
  geocoding: ^3.0.1
  
  # Image Handling
  image_picker: ^1.1.2
  cached_network_image: ^3.4.1
  
  # UI Components
  flutter_spinkit: ^5.2.1
  shimmer: ^3.0.0
  
  # Utilities
  intl: ^0.19.0
  url_launcher: ^6.3.1
```



## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Authors

- **Sinan jifry** - *Initial work* - (https://github.com/sayedsinan/CityConnect-Public-Issue-Reporter)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Firebase for backend services
- Material Design for UI guidelines
- All contributors who help improve CityConnect

## 📞 Support

For support, email support@cityconnect.app or join our [Discord community](https://discord.gg/cityconnect).


---

Made with ❤️ for civic engagement

**Star ⭐ this repo if you find it helpful!**
