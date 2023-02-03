import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lit_code/business_logic/cubits/cubit/experience_cubit.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';
import 'package:lit_code/theme/theme_utils.dart';
import 'package:lottie/lottie.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({
    super.key,
    required ExperienceCubit experienceCubit,
  }) : _experienceCubit = experienceCubit;

  final ExperienceCubit _experienceCubit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ImageContainer(
        size: size,
        darkBackgroundImage: 'assets/images/dark_auth_screen_background.png',
        lightBackgroundImage: 'assets/images/light_auth_screen_background.png',
        theme: theme,
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPageHorizontalPadding,
          vertical: defaultPageVerticalPadding,
        ),
        child: BlocProvider(
          create: (context) => _experienceCubit,
          child: _ExperienceContent(
            theme: theme,
            experienceCubit: _experienceCubit,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _experienceCubit.completeExperience();
          context.go('/');
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class _ExperienceContent extends StatefulWidget {
  const _ExperienceContent({
    required this.theme,
    required ExperienceCubit experienceCubit,
  }) : _experienceCubit = experienceCubit;

  final ThemeData theme;

  final ExperienceCubit _experienceCubit;

  @override
  State<_ExperienceContent> createState() => _ExperienceContentState();
}

class _ExperienceContentState extends State<_ExperienceContent>
    with TickerProviderStateMixin {
  late final AnimationController _advancedController;
  late final AnimationController _beginnerController;
  late final AnimationController _intermediateController;

  @override
  void dispose() {
    _beginnerController.dispose();
    _intermediateController.dispose();
    _advancedController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _beginnerController = AnimationController(
      vsync: this,
    );
    _intermediateController = AnimationController(
      vsync: this,
    );
    _advancedController = AnimationController(
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ExperienceCubit, ExperienceState>(
      builder: (context, state) {
        if (state.experience == Experience.beginner) {
          _beginnerController.repeat(
            period: const Duration(milliseconds: 2700),
          );
          _intermediateController.reset();
          _advancedController.reset();
        } else if (state.experience == Experience.intermediate) {
          _beginnerController.reset();
          _intermediateController.repeat(
            period: const Duration(milliseconds: 3200),
          );
          _advancedController.reset();
        } else if (state.experience == Experience.advanced) {
          _beginnerController.reset();
          _intermediateController.reset();
          _advancedController.repeat(
            period: const Duration(seconds: 3),
          );
        }
        final groupValue = widget._experienceCubit.state.experience;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _HeadingWithIcon(theme: theme),
            const SizedBox(height: sizeBoxMedium),
            _BeginnerRadioListTile(
              groupValue: groupValue,
              widget: widget,
              theme: theme,
              beginnerController: _beginnerController,
            ),
            const SizedBox(height: sizeBoxMedium),
            _IntermediateRadioListTile(
              groupValue: groupValue,
              widget: widget,
              theme: theme,
              intermediateController: _intermediateController,
            ),
            const SizedBox(height: sizeBoxMedium),
            _AdvancedRadioListTile(
              groupValue: groupValue,
              widget: widget,
              theme: theme,
              advancedController: _advancedController,
            ),
          ],
        );
      },
    );
  }
}

class _AdvancedRadioListTile extends StatelessWidget {
  const _AdvancedRadioListTile({
    required this.groupValue,
    required this.widget,
    required this.theme,
    required AnimationController advancedController,
  }) : _advancedController = advancedController;

  final Experience groupValue;
  final ThemeData theme;
  final _ExperienceContent widget;

  final AnimationController _advancedController;

  @override
  Widget build(BuildContext context) {
    return CustomRadioListTile(
      value: Experience.advanced,
      title: 'Advanced',
      groupValue: groupValue,
      onChanged: (value) {
        widget._experienceCubit.updateExperience(value!);
      },
      leading: _LeadingSvgPicture(theme: theme),
      trailing: Lottie.asset(
        'assets/lotties/dazzle-man-programmer-writing-code-on-a-laptop.json',
        height: illustratedAnimationSize,
        fit: BoxFit.cover,
        controller: _advancedController,
      ),
    );
  }
}

class _IntermediateRadioListTile extends StatelessWidget {
  const _IntermediateRadioListTile({
    required this.groupValue,
    required this.widget,
    required this.theme,
    required AnimationController intermediateController,
  }) : _intermediateController = intermediateController;

  final Experience groupValue;
  final ThemeData theme;
  final _ExperienceContent widget;

  final AnimationController _intermediateController;

  @override
  Widget build(BuildContext context) {
    return CustomRadioListTile(
      value: Experience.intermediate,
      title: 'Intermediate',
      groupValue: groupValue,
      onChanged: (value) {
        widget._experienceCubit.updateExperience(value!);
      },
      leading: _LeadingSvgPicture(theme: theme),
      trailing: Lottie.asset(
        'assets/lotties/dazzle-man-sitting-near-computer-with-cup.json',
        height: illustratedAnimationSize,
        fit: BoxFit.cover,
        controller: _intermediateController,
      ),
    );
  }
}

class _BeginnerRadioListTile extends StatelessWidget {
  const _BeginnerRadioListTile({
    required this.groupValue,
    required this.widget,
    required this.theme,
    required AnimationController beginnerController,
  }) : _beginnerController = beginnerController;

  final Experience groupValue;
  final ThemeData theme;
  final _ExperienceContent widget;

  final AnimationController _beginnerController;

  @override
  Widget build(BuildContext context) {
    return CustomRadioListTile(
      value: Experience.beginner,
      title: 'Beginner',
      groupValue: groupValue,
      onChanged: (value) {
        widget._experienceCubit.updateExperience(value!);
      },
      leading: _LeadingSvgPicture(theme: theme),
      trailing: Lottie.asset(
        'assets/lotties/twinkle-online-education.json',
        height: illustratedAnimationSize,
        fit: BoxFit.cover,
        controller: _beginnerController,
      ),
    );
  }
}

class _HeadingWithIcon extends StatelessWidget {
  const _HeadingWithIcon({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: 'https://i.imgur.com/iH1Gjkv.png',
          width: 50,
          fit: BoxFit.contain,
          errorWidget: (context, url, error) =>
              const Icon(Icons.rocket_launch_outlined),
        ),
        const SizedBox(width: sizeBoxSmall),
        Text(
          'Experience Level',
          style: theme.textTheme.displayMedium!.copyWith(
            fontSize: 32,
          ),
        ),
      ],
    );
  }
}

class _LeadingSvgPicture extends StatelessWidget {
  const _LeadingSvgPicture({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/pointing.svg',
      height: 70,
      width: 70,
      color: ThemeUtils.getThemeColor(
        theme,
        lightPrimaryColor,
        darkSecondaryColor,
      ),
    );
  }
}
