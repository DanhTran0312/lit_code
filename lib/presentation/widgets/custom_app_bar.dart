import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/theme_cubit.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.url,
    required this.theme,
  });

  final ThemeData theme;
  final String? url;

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: url != null
                  ? ClipOval(
                      child: _CachedNetworkImage(url: url),
                    )
                  : const Icon(Icons.person),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back!',
                  style: theme.textTheme.headlineMedium,
                ),
              ],
            ),
            const Spacer(),
            AnimatedThemeToggleSwitch(
              themeCubit: themeCubit,
            ),
          ],
        ),
      ],
    );
  }
}

class _CachedNetworkImage extends StatelessWidget {
  const _CachedNetworkImage({
    required this.url,
  });

  final String? url;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url!,
      width: 60,
      height: 60,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
