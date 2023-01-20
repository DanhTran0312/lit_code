import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';
import 'package:lit_code/theme/theme_utils.dart';

class CategoryProgressCard extends StatelessWidget {
  const CategoryProgressCard({
    super.key,
    required this.category,
    required Statistics statistics,
  }) : _statistics = statistics;

  final Category category;
  final Statistics _statistics;

  @override
  Widget build(BuildContext context) {
    final completedQuestionsCount =
        _statistics.getCompletedQuestionsCountByCategory(category).toDouble();
    final totalQuestionsCount =
        _statistics.getTotalQuestionsCountByCategory(category).toDouble() == 0
            ? 1.0
            : _statistics.getTotalQuestionsCountByCategory(category).toDouble();
    final currentStep =
        (completedQuestionsCount / totalQuestionsCount * 14).toInt();
    final theme = Theme.of(context);
    return Card(
      color: ThemeUtils.getThemeColor(
        theme,
        lightProgressCardColor.withOpacity(0.57),
        darkSecondaryColor.withOpacity(0.5),
      ),
      child: _CategoryProgressContent(
        category: category,
        theme: theme,
        completedQuestionsCount: completedQuestionsCount,
        totalQuestionsCount: totalQuestionsCount,
        currentStep: currentStep,
      ),
    );
  }
}

class _CategoryProgressContent extends StatelessWidget {
  const _CategoryProgressContent({
    required this.category,
    required this.theme,
    required this.completedQuestionsCount,
    required this.totalQuestionsCount,
    required this.currentStep,
  });

  final Category category;
  final ThemeData theme;
  final double completedQuestionsCount;
  final double totalQuestionsCount;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 10, 18, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CategoryTitleAndProgress(
            category: category,
            theme: theme,
            completedQuestionsCount: completedQuestionsCount,
            totalQuestionsCount: totalQuestionsCount,
          ),
          _CategoryIconAndStatistics(
            category: category,
            theme: theme,
            currentStep: currentStep,
          ),
          const SizedBox(
            height: sizeBoxHeightSmall,
          ),
        ],
      ),
    );
  }
}

class _CategoryIconAndStatistics extends StatelessWidget {
  const _CategoryIconAndStatistics({
    required this.category,
    required this.theme,
    required this.currentStep,
  });

  final Category category;
  final ThemeData theme;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          category.icon,
          height: 85,
          width: 85,
        ),
        const SizedBox(
          width: 25,
        ),
        _StatisticsProgressBars(
          theme: theme,
          currentStep: currentStep,
        ),
        const Spacer(),
      ],
    );
  }
}

class _StatisticsProgressBars extends StatelessWidget {
  const _StatisticsProgressBars({
    required this.theme,
    required this.currentStep,
  });

  final ThemeData theme;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Confidence',
            style: theme.textTheme.headline6,
          ),
          const SizedBox(
            height: sizeBoxHeightExtraSmall,
          ),
          CustomBoxedProgressBar(
            totalSteps: 14,
            currentStep: 6,
            size: 9,
            theme: theme,
            roundedEdges: true,
          ),
          const SizedBox(
            height: sizeBoxHeightExtraSmall,
          ),
          Text(
            'Progress',
            style: theme.textTheme.headline6,
          ),
          const SizedBox(
            height: sizeBoxHeightExtraSmall,
          ),
          CustomBoxedProgressBar(
            totalSteps: 14,
            currentStep: currentStep,
            size: 9,
            theme: theme,
            roundedEdges: true,
          ),
        ],
      ),
    );
  }
}

class _CategoryTitleAndProgress extends StatelessWidget {
  const _CategoryTitleAndProgress({
    required this.category,
    required this.theme,
    required this.completedQuestionsCount,
    required this.totalQuestionsCount,
  });

  final Category category;
  final ThemeData theme;
  final double completedQuestionsCount;
  final double totalQuestionsCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            category.name,
            style: theme.textTheme.headline5!.copyWith(
              fontSize: 20,
            ),
          ),
        ),
        CustomCirCularProgressBar(
          size: 55,
          initialValue: completedQuestionsCount,
          total: totalQuestionsCount,
          theme: theme,
        ),
      ],
    );
  }
}