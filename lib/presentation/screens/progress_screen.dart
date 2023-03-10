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
            const SizedBox(height: sizeBoxSmall),
            _HeatMapCalendarDecoratedContainer(theme: theme),
            const SizedBox(height: sizeBoxSmall),
            const SectionHeading(title: 'Category Progress'),
            const SizedBox(height: sizeBoxSmall),
            const _CategoryProgressCardsBuilder(),
          ],
        ),
      ),
    );
  }
}

class _CategoryProgressCardsBuilder extends StatelessWidget {
  const _CategoryProgressCardsBuilder();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<StatisticsBloc, StatisticsState, Statistics>(
      selector: (state) {
        if (state.statistics.completedQuestions != null &&
            state.statistics.completedQuestions!.isNotEmpty) {
          return state.statistics;
        }
        return const Statistics();
      },
      builder: (context, statistics) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: Category.values.length,
          itemBuilder: (context, index) {
            final category = Category.values[index];
            return CategoryProgressCard(
              category: category,
              statistics: statistics,
            );
          },
        );
      },
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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPageHorizontalPadding,
      ),
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

        final datasets = <DateTime, int>{};
        for (var i = 0; i < questions.length; i++) {
          final date = DateUtils.dateOnly(
            DateTime.fromMillisecondsSinceEpoch(
              questions[i].completedAt!,
            ),
          );
          datasets[date] = 1 + (datasets[date] ?? 0);
        }
        return _CustomHeatMapCalendar(theme: theme, datasets: datasets);
      },
    );
  }
}

class _CustomHeatMapCalendar extends StatelessWidget {
  const _CustomHeatMapCalendar({
    required this.theme,
    required this.datasets,
  });

  final ThemeData theme;
  final Map<DateTime, int> datasets;

  @override
  Widget build(BuildContext context) {
    return HeatMapCalendar(
      flexible: true,
      monthTextStyle: theme.textTheme.headlineMedium!.copyWith(
        color: ThemeUtils.getThemeColor(
          theme,
          Colors.black,
          Colors.white,
        ),
        fontSize: 27,
      ),
      weekTextStyle: theme.textTheme.titleLarge!.copyWith(
        color: darkPrimaryColor,
        fontSize: 14,
      ),
      weekFontSize: 14,
      monthFontSize: 25,
      margin: const EdgeInsets.symmetric(
        horizontal: 5.8,
        vertical: 1.5,
      ),
      size: 37,
      showColorTip: false,
      textColor: ThemeUtils.getThemeColor(
        theme,
        Colors.black,
        Colors.white,
      ),
      fontSize: 15,
      weekTextColor: Colors.white,
      borderRadius: 12,
      defaultColor: Colors.transparent,
      datasets: datasets,
      colorsets: heatMapColorSet,
    );
  }
}
