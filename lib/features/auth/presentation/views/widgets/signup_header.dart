import 'package:flutter/material.dart';
import 'package:e_learning_v2/generated/l10n.dart';
import 'package:e_learning_v2/core/utils/app_sizes.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.current.signupTitle,
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: AppSizes.s),
        Text(
          S.current.signupSubtitle,
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}