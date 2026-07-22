import 'package:flutter/material.dart';
import 'widgets/do_not_have_account.dart';
import 'package:auto_route/auto_route.dart';
import 'package:e_learning_v2/generated/l10n.dart';
import 'package:e_learning_v2/core/utils/app_sizes.dart';
import 'package:e_learning_v2/core/widgets/custom_button.dart';
import 'package:e_learning_v2/core/helpers/app_validator.dart';
import '../../../../core/widgets/custom_text_field/custom_text_field.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.l),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.school_rounded,
                    size: AppSizes.iconXXL,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(height: AppSizes.m),
                  Text(
                    S.current.loginTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    S.current.loginSubtitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: AppSizes.xxl),
                  CustomTextField(
                    controller: _emailController,
                    label: S.current.emailLabel,
                    hint: S.current.emailHint,
                    prefixIcon: const Icon(Icons.email_outlined),
                    keyboardType: TextInputType.emailAddress,
                    validator: AppValidators.validateEmail,
                    liveValidation: true,
                  ),
                  SizedBox(height: AppSizes.m),
                  CustomTextField(
                    controller: _passwordController,
                    label: S.current.passwordLabel,
                    hint: S.current.passwordHint,
                    prefixIcon: const Icon(Icons.lock_outline),
                    isPassword: true,
                    validator: AppValidators.validatePassword,
                    liveValidation: true,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Navigate to forgot password
                      },
                      child: Text(
                        S.current.forgotPassword,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSizes.l),
                  CustomButton(text: S.current.loginButton, onPressed: () {}),
                  SizedBox(height: AppSizes.xl),
                  DoNotHaveAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
