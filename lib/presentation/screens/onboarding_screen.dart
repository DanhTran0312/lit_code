import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lit_code/business_logic/cubits/cubit/on_boarding_cubit.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/data/models/models.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {
          if (state is OnBoarded) {
            Navigator.of(context).pushReplacementNamed('/');
          } else if (state is OnBoardingError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                BlocProvider.of<OnBoardingCubit>(context).nextStep();
              },
              child: const Icon(Icons.arrow_forward),
            ),
            body: const OnBoardingPageView(),
          );
        },
      ),
    );
  }
}

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PageView.builder(
      controller: BlocProvider.of<OnBoardingCubit>(context).pageController,
      itemCount: onBoardingData.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                theme.brightness == Brightness.light
                    ? onBoardingData[index].lightBackgroundImage
                    : onBoardingData[index].darkbackgroundImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              SvgPicture.asset(
                onBoardingData[index].illustration,
                height: 300,
              ),
              const SizedBox(height: sizeBoxHeightMedium),
              Text(
                onBoardingData[index].title,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: sizeBoxHeightMedium),
              Text(
                onBoardingData[index].description,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        );
      },
    );
  }
}
