import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CustomCirCularProgressBar extends StatelessWidget {
  const CustomCirCularProgressBar({
    super.key,
    required this.size,
    required this.initialValue,
    required this.total,
    required this.theme,
  });

  final double size;
  final double initialValue;
  final double total;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      max: total,
      initialValue: initialValue,
      innerWidget: (value) {
        return Container(
          margin: EdgeInsets.all(size * 0.165),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: lightCircularProgressBarColor,
          ),
          child: Center(
            child: Text(
              '${(value / total * 100).toStringAsFixed(0)}%',
              style: theme.textTheme.headline3!.copyWith(
                color: Colors.white,
                fontSize: size * 0.18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
      appearance: CircularSliderAppearance(
        size: size,
        customWidths: CustomSliderWidths(
          trackWidth: size * 0.05,
          progressBarWidth: size * 0.1,
        ),
        startAngle: -90,
        angleRange: 360,
        customColors: CustomSliderColors(
          dotColor: Colors.transparent,
          trackColor: lightCircularProgressBarTrackColor,
          progressBarColor: lightCircularProgressBarColor,
          hideShadow: true,
        ),
      ),
    );
  }
}
