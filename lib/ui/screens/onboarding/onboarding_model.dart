import 'package:islami_c13_sun/ui/utils/asset_manager.dart';

class OnboardingModel {
  late String image;

  late String headText;
  late String descriptionText;

  OnboardingModel(this.image, this.headText, this.descriptionText);
}

List<OnboardingModel> pages = [
  OnboardingModel(AssetsManager.welcome1, "Welcome To Islami App", ""),
  OnboardingModel(AssetsManager.welcome2, "Welcome To Islami",
      "We Are Very Excited To Have You In Our Community"),
  OnboardingModel(AssetsManager.quranreading, "Reading the Quran",
      "Read, and your Lord is the Most Generous"),
  OnboardingModel(AssetsManager.doaaimg, "Bearish",
      "Praise the name of your Lord, the Most High"),
  OnboardingModel(AssetsManager.microphone, "Holy Quran Radio",
      "You can listen to the Holy Quran Radio through the application for free and easily"),
];
