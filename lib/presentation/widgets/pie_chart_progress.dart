import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/pie_chart_touch_data_cubit.dart';

class PieChartProgress extends StatelessWidget {
  const PieChartProgress({
    super.key,
    required this.easy,
    required this.medium,
    required this.hard,
  });

  final double easy;
  final double medium;
  final double hard;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: BlocProvider(
        create: (context) => PieChartTouchDataCubit(),
        child: BlocBuilder<PieChartTouchDataCubit, PieChartTouchDataState>(
          builder: (context, state) {
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
                    if (pieTouchResponse.touchedSection!.touchedSectionIndex ==
                        state.touchedIndex) {
                      return;
                    }
                    BlocProvider.of<PieChartTouchDataCubit>(
                      context,
                    ).updateTouchData(
                      pieTouchResponse.touchedSection!.touchedSectionIndex,
                    );
                  },
                ),
                sections: _sectionBuilder(
                  easy,
                  medium,
                  hard,
                  state.touchedIndex,
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
  double easy,
  double medium,
  double hard,
  int touchedIndex,
) {
  const touchedSectionRadius = 60.0;
  const normalSectionRadius = 50.0;
  if (easy == 0 && medium == 0 && hard == 0) {
    return [
      PieChartSectionData(
        value: 1,
        showTitle: false,
        radius: touchedSectionRadius,
      ),
    ];
  }
  return [
    PieChartSectionData(
      color: Colors.green,
      value: easy,
      showTitle: false,
      radius: touchedIndex == 0 ? touchedSectionRadius : normalSectionRadius,
    ),
    PieChartSectionData(
      color: Colors.orange,
      value: medium,
      showTitle: false,
      radius: touchedIndex == 1 ? touchedSectionRadius : normalSectionRadius,
    ),
    PieChartSectionData(
      color: Colors.red,
      value: hard,
      showTitle: false,
      radius: touchedIndex == 2 ? touchedSectionRadius : normalSectionRadius,
    ),
  ];
}
