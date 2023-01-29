import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/settings_bloc.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/data/models/user.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPageHorizontalPadding,
        ),
        child: BlocBuilder<SettingsBloc, SettingsState>(
          buildWhen: (previous, current) {
            return current.status != SettingStatus.initial;
          },
          builder: (context, state) {
            final user = context.read<AppBloc>().state.user;
            if (state.status == SettingStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.status == SettingStatus.initial) {
              context
                  .read<SettingsBloc>()
                  .add(const SettingsEvent.intializeSettings());
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.status == SettingStatus.success) {
              return _SettingScreenContent(
                user: user,
                theme: theme,
                size: size,
                settingsBloc: context.read<SettingsBloc>(),
              );
            }
            return const Center(
              child: Text('Something went wrong'),
            );
          },
        ),
      ),
    );
  }
}

class _SettingScreenContent extends StatelessWidget {
  const _SettingScreenContent({
    required this.user,
    required this.theme,
    required this.size,
    required SettingsBloc settingsBloc,
  }) : _settingsBloc = settingsBloc;

  final Size size;
  final ThemeData theme;
  final User user;

  final SettingsBloc _settingsBloc;

  Future<Set<String>?> _showCategoryDialog(BuildContext context) {
    return showDialog<Set<String>>(
      context: context,
      builder: (context) => CustomMultiChipsSelectorDialog(
        selectedItems:
            _settingsBloc.state.settings.categories.map((e) => e.name).toSet(),
        title: Text(
          'Select Category',
          style: theme.textTheme.headlineMedium,
        ),
        width: size.width * 0.9,
        height: size.height * 0.35,
        items: Category.values.map((e) => e.name).toSet(),
      ),
    );
  }

  Future<Set<String>?> _showDifficultyDialog(BuildContext context) {
    return showDialog<Set<String>>(
      context: context,
      builder: (context) => CustomMultiChipsSelectorDialog(
        selectedItems: _settingsBloc.state.settings.difficulties
            .map((e) => e.name)
            .toSet(),
        title: Text(
          'Select Difficulty Level',
          style: theme.textTheme.headlineMedium,
        ),
        width: size.width * 0.85,
        height: size.height * 0.15,
        items: Difficulty.values.map((e) => e.name).toSet(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const SectionHeading(
          title: 'Profile Settings',
        ),
        const SizedBox(height: sizeBoxMedium),
        _UserProfileCard(user: user, theme: theme),
        const SizedBox(height: sizeBoxMedium),
        const SectionHeading(
          title: 'Program Settings',
          fontSize: 22.5,
        ),
        const SizedBox(height: sizeBoxMedium),
        _CustomListTile(
          theme: theme,
          size: size,
          title: 'Difficulty Level',
          onTap: () async {
            final difficultiesSelected = await _showDifficultyDialog(context);
            if (difficultiesSelected != null) {
              _settingsBloc.add(
                SettingsEvent.difficultyChanged(
                  difficulty: difficultiesSelected
                      .map(
                        (e) => Difficulty.values
                            .firstWhere((element) => element.name == e),
                      )
                      .toList(),
                ),
              );
            }
          },
        ),
        const SizedBox(height: sizeBoxMedium),
        _CustomListTile(
          theme: theme,
          size: size,
          title: 'Category',
          onTap: () async {
            final selectedItems = await _showCategoryDialog(context);
            if (selectedItems != null) {
              // ignore: use_build_context_synchronously
              context.read<SettingsBloc>().add(
                    SettingsEvent.categoryChanged(
                      category: selectedItems
                          .map(
                            (e) => Category.values.firstWhere(
                              (element) => element.name == e,
                            ),
                          )
                          .toList(),
                    ),
                  );
            }
          },
        ),
        const SizedBox(height: sizeBoxMedium),
        _GoalsCard(theme: theme),
        ElevatedButton(
          onPressed: () {
            context.read<AppBloc>().add(const AppEvent.appLogoutRequested());
          },
          child: const Text('Sign Out'),
        ),
      ],
    );
  }
}

class _GoalsCard extends StatelessWidget {
  const _GoalsCard({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Goals 🎯',
                  style: theme.textTheme.headlineMedium,
                ),
                IconButton(
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365)),
                    );
                  },
                  icon: const Icon(Icons.calendar_month_rounded),
                ),
              ],
            ),
            const SizedBox(height: sizeBoxMedium),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Daily',
                        style: theme.textTheme.headlineSmall,
                      ),
                      const SizedBox(height: sizeBoxSmall),
                      Text(
                        '',
                        style: theme.textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Weekly',
                        style: theme.textTheme.headlineSmall,
                      ),
                      const SizedBox(height: sizeBoxSmall),
                      Text(
                        '',
                        style: theme.textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Monthly',
                        style: theme.textTheme.headlineSmall,
                      ),
                      const SizedBox(height: sizeBoxSmall),
                      Text(
                        '',
                        style: theme.textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.theme,
    required this.size,
    required this.title,
    required this.onTap,
  });

  final void Function()? onTap;
  final Size size;
  final ThemeData theme;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(inputBorderRadius),
        side: const BorderSide(
          color: inputBorderColor,
        ),
      ),
      title: Text(
        title,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: theme.primaryColor,
      ),
      onTap: onTap,
    );
  }
}

class _UserProfileCard extends StatelessWidget {
  const _UserProfileCard({
    required this.user,
    required this.theme,
  });

  final ThemeData theme;
  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: Row(
          children: [
            Expanded(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: CachedNetworkImageProvider(
                  user.photoUrl!,
                ),
              ),
            ),
            const SizedBox(width: sizeBoxSmall),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name!,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: sizeBoxSmall),
                  Text(
                    user.email!,
                    style: theme.textTheme.titleLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: sizeBoxSmall),
            Icon(
              Icons.arrow_forward_ios,
              color: theme.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
