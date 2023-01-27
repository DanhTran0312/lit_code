import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/settings_bloc.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/constants/enums.dart';
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
              return ListView(
                shrinkWrap: true,
                children: [
                  const SectionHeading(
                    title: 'Profile Settings',
                    fontSize: 26,
                  ),
                  const SizedBox(height: sizeBoxMedium),
                  Card(
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
                                  style:
                                      theme.textTheme.headlineSmall!.copyWith(
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
                  ),
                  const SizedBox(height: sizeBoxMedium),
                  const SectionHeading(
                    title: 'Program Settings',
                    color: Colors.white,
                    fontSize: 22,
                  ),
                  const SizedBox(height: sizeBoxMedium),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(inputBorderRadius),
                      side: const BorderSide(
                        color: inputBorderColor,
                      ),
                    ),
                    title: const Text(
                      'Difficulty Level',
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: theme.primaryColor,
                    ),
                    onTap: () async {
                      // Open dialog to select difficulty level
                      final difficulties = await showDialog<Set<String>>(
                        context: context,
                        builder: (context) => CustomMultiChipsSelectorDialog(
                          selectedItems: state.settings.difficulties
                              .map((e) => e.name)
                              .toSet(),
                          title: Text(
                            'Select Difficulty Level',
                            style: theme.textTheme.headlineMedium,
                          ),
                          width: size.width * 0.85,
                          height: size.height * 0.25,
                          items: Difficulty.values.map((e) => e.name).toSet(),
                        ),
                      );

                      if (difficulties != null) {
                        // ignore: use_build_context_synchronously
                        context.read<SettingsBloc>().add(
                              SettingsEvent.difficultyChanged(
                                difficulty: difficulties
                                    .map(
                                      (e) => Difficulty.values.firstWhere(
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
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(inputBorderRadius),
                      side: const BorderSide(
                        color: inputBorderColor,
                      ),
                    ),
                    title: const Text(
                      'Category',
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: theme.primaryColor,
                    ),
                    onTap: () async {
                      // Open dialog to select category
                      final selectedItems = await showDialog<Set<String>>(
                        context: context,
                        builder: (context) => CustomMultiChipsSelectorDialog(
                          selectedItems: state.settings.categories
                              .map((e) => e.name)
                              .toSet(),
                          title: Text(
                            'Select Category',
                            style: theme.textTheme.headlineMedium,
                          ),
                          width: size.width * 0.9,
                          height: size.height * 0.3,
                          items: Category.values.map((e) => e.name).toSet(),
                        ),
                      );
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
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Goals 🎯',
                            style: theme.textTheme.headlineMedium,
                          ),
                          const SizedBox(height: sizeBoxMedium),
                          Row(
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
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<AppBloc>()
                          .add(const AppEvent.appLogoutRequested());
                    },
                    child: const Text('Sign Out'),
                  ),
                ],
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
