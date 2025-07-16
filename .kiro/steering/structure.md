# Project Structure

## Root Directory Layout
```
├── lib/                    # Main application code
├── assets/                 # Static assets (images, audio, fonts, icons)
├── android/               # Android-specific configuration
├── ios/                   # iOS-specific configuration
├── test/                  # Unit and widget tests
└── pubspec.yaml          # Dependencies and project configuration
```

## Core Application Structure (`lib/`)

### Main Entry Points
- `main.dart` - Application entry point with provider setup and shake detection

### Feature Organization
```
lib/
├── constants/             # App-wide constants and styling
│   ├── api_urls.dart     # API endpoint definitions
│   ├── app_constants.dart # General app constants
│   ├── appkeys.dart      # App keys and configuration
│   ├── colorclass.dart   # Color palette definitions
│   ├── iconclass.dart    # Icon asset paths
│   ├── imagesclass.dart  # Image asset paths
│   └── textstyleclass.dart # Text styling definitions
├── model/                # Data models
├── provider/             # State management (Provider pattern)
├── screen/               # UI screens organized by feature
├── utils/                # Utility functions and helpers
├── widget/               # Reusable UI components
└── widgets/              # Additional custom widgets
```

### Screen Organization Pattern
Each major feature follows this structure:
```
screen/
├── feature_name/
│   ├── main_screen.dart          # Primary screen for the feature
│   ├── sub_screen.dart           # Additional screens
│   └── feature_specific_widgets.dart # Feature-specific components
```

### Current Feature Screens
- `homescreen/` - Main navigation and app entry
- `mayyith_samskaranam/` - Deceased preparation guidance
- `bathing_corpse/` - Ritual washing instructions
- `kafan/` - Shrouding procedures
- `salat_janaza/` - Funeral prayer guidance
- `janaza_samskaranam/` - Funeral rites
- `after_janaza/` - Post-funeral care
- `gender_selection/` - Gender-specific content selection
- `drawer/` - App drawer screens (about, contact, donate)
- `splash_screen/` - App initialization screen

## Asset Organization
```
assets/
├── audio/                # Prayer recitations and audio guides
├── fonts/                # Custom fonts (Malayalam, Arabic)
├── icons/                # App icons and UI elements
└── images/               # Illustrations and visual guides
```

## Naming Conventions

### Files & Directories
- Use `snake_case` for file and directory names
- Screen files end with `_screen.dart`
- Model files end with `model.dart`
- Provider files end with `provider.dart`

### Classes & Variables
- Use `PascalCase` for class names
- Use `camelCase` for variables and methods
- Use `SCREAMING_SNAKE_CASE` for constants

### Assets
- Organize by type (audio, images, icons, fonts)
- Use descriptive names in English
- Maintain consistent naming within each category

## Code Organization Principles
- **Feature-based grouping**: Related screens and logic grouped together
- **Separation of concerns**: Constants, models, providers, and UI separated
- **Reusable components**: Common widgets extracted to widget directories
- **Centralized styling**: All colors, text styles, and assets defined in constants