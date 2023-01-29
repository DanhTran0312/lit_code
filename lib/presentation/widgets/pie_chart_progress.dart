// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/pie_chart_touch_data_cubit.dart';
import 'package:lit_code/theme/theme_utils.dart';

class PieChartProgress extends StatelessWidget {
  const PieChartProgress({
    super.key,
    required this.easy,
    required this.medium,
    required this.hard,
  });

  final double easy;
  final double hard;
  final double medium;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: BlocProvider(
        create: (context) => PieChartTouchDataCubit(),
        child: BlocSelector<PieChartTouchDataCubit, PieChartTouchDataState,
            PieChartSectionData?>(
          selector: (state) => state.touchedSection,
          builder: (context, touchedSection) {
            return PieChart(
              swapAnimationCurve: Curves.easeInOutCubic,
              swapAnimationDuration: const Duration(milliseconds: 160),
              PieChartData(
                pieTouchData: PieTouchData(
                  touchCallback: (
                    FlTouchEvent event,
                    pieTouchResponse,
                  ) {
                    if (!event.isInterestedForInteractions ||
                        pieTouchResponse == null ||
                        pieTouchResponse.touchedSection == null) {
                      return;
                    }
                    if (pieTouchResponse.touchedSection!.touchedSection ==
                        touchedSection) {
                      return;
                    }
                    BlocProvider.of<PieChartTouchDataCubit>(
                      context,
                    ).updateTouchData(
                      pieTouchResponse.touchedSection!.touchedSection,
                    );
                  },
                ),
                sections: _sectionBuilder(
                  theme,
                  easy,
                  medium,
                  hard,
                  touchedSection,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

List<PieChartSectionData> _sectionBuilder(
  ThemeData theme,
  double easy,
  double medium,
  double hard,
  PieChartSectionData? touchedSection,
) {
  const touchedSectionRadius = 60.0;
  const normalSectionRadius = 50.0;
  if (easy == 0 && medium == 0 && hard == 0) {
    return [
      PieChartSectionData(
        color: ThemeUtils.getThemeColor(
          theme,
          Colors.blue.shade200,
          Colors.pink.shade200,
        ),
        value: 1,
        showTitle: false,
        radius: touchedSectionRadius,
      ),
    ];
  }

  final isEasyTouched =
      touchedSection != null ? touchedSection.color == Colors.green : false;
  final isMediumTouched =
      touchedSection != null ? touchedSection.color == Colors.orange : false;
  final isHardTouched =
      touchedSection != null ? touchedSection.color == Colors.red : false;

  return [
    PieChartSectionData(
      color: Colors.green,
      value: easy,
      showTitle: isEasyTouched,
      title: '${(easy * 100).toStringAsFixed(0)}%',
      radius: isEasyTouched ? touchedSectionRadius : normalSectionRadius,
    ),
    PieChartSectionData(
      color: Colors.orange,
      value: medium,
      showTitle: isMediumTouched,
      title: '${(medium * 100).toStringAsFixed(0)}%',
      radius: isMediumTouched ? touchedSectionRadius : normalSectionRadius,
    ),
    PieChartSectionData(
      color: Colors.red,
      value: hard,
      showTitle: isHardTouched,
      title: '${(hard * 100).toStringAsFixed(0)}%',
      radius: isHardTouched ? touchedSectionRadius : normalSectionRadius,
    ),
  ];
}
