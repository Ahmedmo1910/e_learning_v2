import 'package:flutter/material.dart';
import 'package:e_learning_v2/generated/l10n.dart';
import 'package:e_learning_v2/core/utils/app_sizes.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(S.current.alreadyHaveAccount),
        SizedBox(width: AppSizes.s),
        GestureDetector(
          onTap: () {
            // context.router.push(LoginRoute());
          },
          child: Text(
            S.current.loginButton,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
