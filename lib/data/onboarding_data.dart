import 'package:expenz_flutter/models/onboarding_model.dart';

class OnboardingData {
  static final List<OnboardingModel> onboardingDataList = [
    OnboardingModel(
      imageUrl: "assets/images/onboard_1.png",
      title: "Gain total control\nof your money",
      description: "Become your own money manager\nand make every cent count",
    ),
    OnboardingModel(
      imageUrl: "assets/images/onboard_2.png",
      title: "Know where your\nmoney goes",
      description:
          "Track your transaction easily,\nwith categories and financial report",
    ),
    OnboardingModel(
      imageUrl: "assets/images/onboard_3.png",
      title: "Planning ahead",
      description: "Setup your budget for each category\nso you in control",
    ),
  ];
}
