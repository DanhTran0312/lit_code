import 'package:flutter/material.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/theme/theme_utils.dart';
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
      max: total == 0 ? 1 : total,
      initialValue: initialValue,
      innerWidget: (value) {
        return _CustomInnerWidget(
          size: size,
          total: total,
          theme: theme,
          value: value,
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
          trackColor: ThemeUtils.getThemeColor(
            theme,
            lightCircularProgressBarTrackColor,
            darkCircularProgressBarTrackColor,
          ),
          progressBarColor: ThemeUtils.getThemeColor(
            theme,
            lightCircularProgressBarColor,
            darkCircularProgressBarColor,
          ),
          hideShadow: true,
        ),
      ),
    );
  }
}

class _CustomInnerWidget extends StatelessWidget {
  const _CustomInnerWidget({
    required this.size,
    required this.total,
    required this.theme,
    required this.value,
  });

  final double size;
  final double total;
  final ThemeData theme;
  final double value;

  @override
  Widget build(BuildContext context) {
    final total = this.total == 0 ? 1 : this.total;
    final percentage = (value / total * 100).toStringAsFixed(0);
    return Container(
      margin: EdgeInsets.all(size * 0.165),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: lightCircularProgressBarColor,
      ),
      child: Center(
        child: Text(
          '$percentage%',
          style: theme.textTheme.displaySmall!.copyWith(
            color: Colors.white,
            fontSize: size * 0.18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
