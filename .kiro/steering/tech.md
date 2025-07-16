# Technology Stack

## Framework & Language
- **Flutter SDK**: Cross-platform mobile development framework
- **Dart**: Programming language (SDK >=3.5.0 <4.0.0)
- **Target Platforms**: Android, iOS

## Key Dependencies

### UI & Fonts
- `google_fonts: ^6.2.1` - Typography with Google Fonts
- `flutter_svg: ^2.0.17` - SVG image support
- `carousel_slider: ^5.0.0` - Image carousels and sliders

### State Management
- `provider: ^6.1.2` - State management solution
- `shared_preferences: ^2.2.2` - Local data persistence

### Audio & Media
- `just_audio: ^0.9.36` - Audio playback for prayers and recitations
- `path_provider: ^2.1.2` - File system path access

### Networking & External
- `http: ^1.3.0` - HTTP requests
- `url_launcher: ^6.2.5` - External URL handling
- `shake_flutter: ^17.0.1` - Shake gesture detection

### Development Tools
- `flutter_lints: ^5.0.0` - Dart/Flutter linting rules
- `flutter_launcher_icons: ^0.14.3` - App icon generation
- `change_app_package_name: ^1.5.0` - Package name modification

## Build Commands

### Development
```bash
# Get dependencies
flutter pub get

# Run on device/emulator
flutter run

# Run with specific flavor
flutter run --debug
flutter run --release
```

### Building
```bash
# Build APK
flutter build apk

# Build App Bundle (recommended for Play Store)
flutter build appbundle

# Build iOS
flutter build ios
```

### Maintenance
```bash
# Update dependencies
flutter pub upgrade

# Clean build cache
flutter clean

# Generate launcher icons
flutter pub run flutter_launcher_icons:main
```

## Architecture Patterns
- **Provider Pattern**: Used for state management
- **Screen-based Navigation**: Each major feature has its own screen directory
- **Constants Organization**: Centralized styling, colors, and asset management
- **Model-based Data**: Simple data classes for structured information