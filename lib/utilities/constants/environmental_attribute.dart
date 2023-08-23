import '../helpers/app_helper/app_flavor_helper.dart';

class EnvironmentalAttribute {
  EnvironmentalAttribute.development() : flavorType = AppFlavor.development;
  EnvironmentalAttribute.staging() : flavorType = AppFlavor.staging;
  EnvironmentalAttribute.production() : flavorType = AppFlavor.production;

  final AppFlavor flavorType;

  bool get isDevelopment => flavorType == AppFlavor.development;

  bool get isStaging => flavorType == AppFlavor.staging;

  bool get isProduction => flavorType == AppFlavor.production;
}
