import 'package:flutter/material.dart';
import 'package:e_learning_v2/generated/l10n.dart';
import 'package:e_learning_v2/core/utils/app_sizes.dart';
import 'package:e_learning_v2/core/helpers/app_validator.dart';
import '../../../../../core/widgets/custom_text_field/custom_text_field.dart';

class SignUpFormFields extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const SignUpFormFields({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: nameController,
          label: S.current.nameLabel,
          hint: S.current.nameHint,
          prefixIcon: const Icon(Icons.person_outline),
        ),

        SizedBox(height: AppSizes.m),

        CustomTextField(
          controller: emailController,
          label: S.current.emailLabel,
          hint: S.current.emailHint,
          prefixIcon: const Icon(Icons.email_outlined),
          keyboardType: TextInputType.emailAddress,
          liveValidation: true,
        ),

        SizedBox(height: AppSizes.m),

        CustomTextField(
          controller: passwordController,
          label: S.current.passwordLabel,
          hint: S.current.passwordHint,
          isPassword: true,
          validator: (value) => AppValidators.validateConfirmPassword(
            value,
            passwordController.text,
          ),
          prefixIcon: const Icon(Icons.lock_outline),
          liveValidation: true,
          showPasswordStrength: true,
        ),

        SizedBox(height: AppSizes.m),

        CustomTextField(
          controller: confirmPasswordController,
          label: S.current.confirmPasswordLabel,
          hint: S.current.confirmPasswordHint,
          isPassword: true,
          prefixIcon: const Icon(Icons.lock_outline),
        ),
      ],
    );
  }
}
