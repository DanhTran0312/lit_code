// ignore_for_file: lines_longer_than_80_chars

class OnBoardingData {
  OnBoardingData({
    required this.title,
    required this.description,
    required this.illustration,
    required this.darkbackgroundImage,
    required this.lightBackgroundImage,
  });
  final String title;
  final String description;
  final String illustration;
  final String darkbackgroundImage;
  final String lightBackgroundImage;
}

List<OnBoardingData> onBoardingData = [
  OnBoardingData(
    illustration: 'assets/svg/onboarding_1.svg',
    title: 'Welcome to\nLit Code 🔥',
    description:
        'Lit Code is a learning platform for coders to learn and keep track coding interview questions in a fun way.',
    darkbackgroundImage: 'assets/images/dark_onboarding_background_1.png',
    lightBackgroundImage: 'assets/images/light_onboarding_background_1.png',
  ),
  OnBoardingData(
    illustration: 'assets/svg/onboarding_2.svg',
    title: 'Achive your goals',
    description:
        'Set you goals and start learning. You can achive your goals with Lit Code.',
    darkbackgroundImage: 'assets/images/dark_onboarding_background_2.png',
    lightBackgroundImage: 'assets/images/light_onboarding_background_2.png',
  ),
  OnBoardingData(
    illustration: 'assets/svg/onboarding_3.svg',
    title: 'Advance your 💻 interview skills',
    description:
        'Reach your goals and advance your coding interview skills with Lit Code.',
    darkbackgroundImage: 'assets/images/dark_onboarding_background_3.png',
    lightBackgroundImage: 'assets/images/light_onboarding_background_3.png',
  ),
];
