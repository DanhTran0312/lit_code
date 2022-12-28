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
    title: 'Welcome to LitCode',
    description:
        'LitCode is a code editor that allows you to write code in a fun and interactive way.',
    darkbackgroundImage: 'assets/images/dark_onboarding_background_1.png',
    lightBackgroundImage: 'assets/images/light_onboarding_background_1.png',
  ),
  OnBoardingData(
    illustration: 'assets/svg/onboarding_2.svg',
    title: 'Write code in a fun way',
    description:
        'Write code in a fun and interactive way. You can write code in a fun way.',
    darkbackgroundImage: 'assets/images/dark_onboarding_background_2.png',
    lightBackgroundImage: 'assets/images/light_onboarding_background_2.png',
  ),
  OnBoardingData(
    illustration: 'assets/svg/onboarding_3.svg',
    title: 'Write code in a fun way',
    description:
        'Write code in a fun and interactive way. You can write code in a fun way.',
    darkbackgroundImage: 'assets/images/dark_onboarding_background_3.png',
    lightBackgroundImage: 'assets/images/light_onboarding_background_3.png',
  ),
];
