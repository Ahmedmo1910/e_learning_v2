import 'widgets/signup_header.dart';
import 'widgets/role_selection.dart';
import 'package:flutter/material.dart';
import 'widgets/signup_form_fields.dart';
import 'widgets/already_have_account.dart';
import 'package:auto_route/auto_route.dart';
import 'package:e_learning_v2/generated/l10n.dart';
import 'package:e_learning_v2/core/utils/app_sizes.dart';
import 'package:e_learning_v2/core/widgets/custom_button.dart';

@RoutePage()
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String? _selectedRole;
  bool _showRoleError = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.l,
            vertical: AppSizes.xl,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SignupHeader(),
                SizedBox(height: AppSizes.xxl),
                SignUpFormFields(
                  nameController: _nameController,
                  emailController: _emailController,
                  passwordController: _passwordController,
                  confirmPasswordController: _confirmPasswordController,
                ),
                SizedBox(height: AppSizes.m),
                RoleSelectionSection(
                  selectedRole: _selectedRole,
                  showRoleError: _showRoleError,
                  onSelect: (role) {
                    setState(() {
                      _selectedRole = role;
                      _showRoleError = false;
                    });
                  },
                ),
                SizedBox(height: AppSizes.l),
                CustomButton(text: S.current.registerButton, onPressed: () {}),
                SizedBox(height: AppSizes.l),
                const AlreadyHaveAccount(),
                SizedBox(height: AppSizes.l),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
