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
        _statistics.getTotalQuestionsCountByCategory(category).toDouble();
    final theme = Theme.of(context);
    return Card(
      color: ThemeUtils.getThemeColor(
        theme,
        lightProgressCardColor.withOpacity(0.57),
        darkSecondaryColor.withOpacity(0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 10, 18, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
            ),
            Row(
              children: [
                SvgPicture.asset(
                  category.icon,
                  height: 85,
                  width: 85,
                ),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
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
                        currentStep: 2,
                        size: 9,
                        theme: theme,
                        roundedEdges: true,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(
              height: sizeBoxHeightSmall,
            ),
            HighlightedText(
              '0.85🔥',
              style: theme.textTheme.headline5!.copyWith(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
