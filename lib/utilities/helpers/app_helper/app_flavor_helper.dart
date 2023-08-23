// ignore_for_file: always_declare_return_types

import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../constants/environmental_attribute.dart';

enum AppFlavor {
  development,
  staging,
  production,
}

extension AppFlavorHelper on AppFlavor {
  EnvironmentalAttribute get attributeFlavor {
    switch (this) {
      case AppFlavor.development:
        return EnvironmentalAttribute.development();
      case AppFlavor.staging:
        return EnvironmentalAttribute.staging();
      case AppFlavor.production:
        return EnvironmentalAttribute.production();
    }
  }

  AppFlavor get flavorType => attributeFlavor.flavorType;

  bool get isDevelopment => attributeFlavor.isDevelopment;

  bool get isStaging => attributeFlavor.isStaging;

  bool get isProduction => attributeFlavor.isProduction;

  setup() async {
    switch (flavorType) {
      case AppFlavor.development:
        await dotenv.load(fileName: ".env.development");
        break;
      case AppFlavor.staging:
        await dotenv.load(fileName: ".env.staging");
        break;
      case AppFlavor.production:
        await dotenv.load(fileName: ".env.production");
        break;
    }
  }
}
