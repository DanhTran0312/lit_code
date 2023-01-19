import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';
import 'package:lit_code/theme/theme_utils.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPageHorizontalPadding,
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            const SectionHeading(title: 'Activity Calendar'),
            const SizedBox(height: sizeBoxHeightMedium),
            _HeatMapCalendarDecoratedContainer(theme: theme),
            const SizedBox(height: sizeBoxHeightMedium),
            const SectionHeading(title: 'Category Progress'),
            BlocSelector<StatisticsBloc, StatisticsState, Statistics>(
              selector: (state) {
                if (state.statistics.completedQuestions != null &&
                    state.statistics.completedQuestions!.isNotEmpty) {
                  return state.statistics;
                }
                return const Statistics();
              },
              builder: (context, statistics) {
                return Column(
                  children: [
                    for (final category in Category.values)
                      Text(
                        '${category.name}: ${statistics.completedQuestionsByCategory[category] != null ? statistics.completedQuestionsByCategory[category]!.length : 0}',
                      )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _HeatMapCalendarDecoratedContainer extends StatelessWidget {
  const _HeatMapCalendarDecoratedContainer({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeUtils.getThemeColor(
          theme,
          lightProgressCardColor.withOpacity(0.8),
          darkCalendarBackgroundColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
      child: _HeatMapCalendar(theme: theme),
    );
  }
}

class _HeatMapCalendar extends StatelessWidget {
  const _HeatMapCalendar({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatisticsBloc, StatisticsState>(
      builder: (context, state) {
        final questions = state.completedQuestions.values.toList();

        final datasets = <DateTime, int>{
          DateTime(2023): 3,
          DateTime(2023, 1, 2): 2,
          DateTime(2023, 1, 3): 1,
          DateTime(2023, 1, 4): 2,
          DateTime(2023, 1, 5): 3,
          DateTime(2023, 1, 6): 4,
          DateTime(2023, 1, 7): 5,
          DateTime(2023, 1, 8): 6,
          DateTime(2023, 1, 9): 7,
        };
        for (var i = 0; i < questions.length; i++) {
          final date = DateUtils.dateOnly(
            DateTime.fromMillisecondsSinceEpoch(
              questions[i].completedAt!,
            ),
          );
          datasets[date] = 1 + (datasets[date] ?? 0);
        }
        return HeatMapCalendar(
          monthTextStyle: theme.textTheme.headline4!.copyWith(
            color: ThemeUtils.getThemeColor(
              theme,
              Colors.black,
              Colors.white,
            ),
            fontSize: 27,
          ),
          weekTextStyle: theme.textTheme.headline6!.copyWith(
            color: Colors.amber,
            fontSize: 12,
          ),
          weekFontSize: 14,
          monthFontSize: 25,
          showColorTip: false,
          textColor: Colors.black,
          fontSize: 15,
          weekTextColor: Colors.white,
          borderRadius: 15,
          defaultColor: Colors.white,
          flexible: true,
          datasets: datasets,
          colorsets: const {
            1: Color.fromARGB(20, 2, 179, 8),
            2: Color.fromARGB(40, 2, 179, 8),
            3: Color.fromARGB(60, 2, 179, 8),
            4: Color.fromARGB(80, 2, 179, 8),
            5: Color.fromARGB(100, 2, 179, 8),
            6: Color.fromARGB(120, 2, 179, 8),
            7: Color.fromARGB(150, 2, 179, 8),
            8: Color.fromARGB(180, 2, 179, 8),
            9: Color.fromARGB(220, 2, 179, 8),
            10: Color.fromARGB(255, 2, 179, 8),
          },
        );
      },
    );
  }
}
