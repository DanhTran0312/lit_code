import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/on_boarding_cubit.dart';
import 'package:lit_code/data/models/models.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnBoardingCubit, OnBoardingState>(
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
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            BlocProvider.of<OnBoardingCubit>(context).nextStep();
          },
          child: const Icon(Icons.arrow_forward),
        ),
        body: BlocBuilder<OnBoardingCubit, OnBoardingState>(
          builder: (context, state) {
            return PageView.builder(
              controller:
                  BlocProvider.of<OnBoardingCubit>(context).pageController,
              itemCount: onBoardingData.length,
              itemBuilder: (context, index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(onBoardingData[index].backgroundImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        onBoardingData[index].image,
                        height: 250,
                        width: 250,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        onBoardingData[index].title,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        onBoardingData[index].description,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
