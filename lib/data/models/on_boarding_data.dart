class OnBoardingData {
  OnBoardingData({
    required this.backgroundImage,
    required this.title,
    required this.description,
    required this.image,
  });
  final String title;
  final String description;
  final String image;
  final String backgroundImage;
}

List<OnBoardingData> onBoardingData = [
  OnBoardingData(
    image: 'assets/img/light-bulb.png',
    title: 'Welcome to LitCode',
    description:
        'LitCode is a code editor that allows you to write code in a fun and interactive way.',
    backgroundImage: 'assets/img/onboarding_background_1.png',
  ),
  OnBoardingData(
    image: 'assets/img/goal.png',
    title: 'Write code in a fun way',
    description:
        'Write code in a fun and interactive way. You can write code in a fun way.',
    backgroundImage: 'assets/img/onboarding_background_2.png',
  ),
  OnBoardingData(
    image: 'assets/img/rocket.png',
    title: 'Write code in a fun way',
    description:
        'Write code in a fun and interactive way. You can write code in a fun way.',
    backgroundImage: 'assets/img/onboarding_background_3.png',
  ),
];
