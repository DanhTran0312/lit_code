import 'package:flutter/material.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/theme/theme.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    required this.labelText,
    this.obscureText,
    required this.fieldKey,
    required this.onChanged,
    this.keyboardType,
    this.errorText,
  });

  final String? hintText;
  final String labelText;
  final bool? obscureText;
  final Key fieldKey;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Text(
            labelText,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        const SizedBox(height: sizeBoxHeightSmall),
        TextField(
          key: fieldKey,
          onChanged: onChanged,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            errorText: errorText,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: inputHorizontalPadding,
              vertical: inputVerticalPadding,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(inputBorderRadius),
              borderSide: const BorderSide(
                color: inputBorderColor,
                width: inputBorderWidth,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(inputBorderRadius),
              borderSide: const BorderSide(
                color: inputBorderColor,
                width: inputBorderWidth,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(inputBorderRadius),
              borderSide: const BorderSide(
                color: Colors.redAccent,
                width: inputBorderWidth,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(inputBorderRadius),
              borderSide: const BorderSide(
                color: Colors.redAccent,
                width: inputBorderWidth,
              ),
            ),
          ),
          obscureText: obscureText ?? false,
          style: theme.brightness == Brightness.light
              ? lightInputTextTheme
              : darkInputTextTheme,
        ),
      ],
    );
  }
}
