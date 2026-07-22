import 'package:flutter/material.dart';
import 'package:e_learning_v2/generated/l10n.dart';
import 'package:e_learning_v2/core/utils/app_sizes.dart';

class DoNotHaveAccount extends StatelessWidget {
  const DoNotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text(S.current.noAccount),
        SizedBox(width: AppSizes.s),
        GestureDetector(
          onTap: () {
            // context.router.push( SignupRoute());
          },
          child: Text(
            S.current.registerButton,
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
