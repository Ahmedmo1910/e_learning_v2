import 'package:e_learning_v2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_v2/core/theme/app_colors.dart';
import 'package:e_learning_v2/core/utils/app_sizes.dart';

import 'password_strength.dart';
part 'text_field_helpers.dart';
part 'text_field_decoration.dart';
part 'password_strength_bar.dart';

class CustomTextField extends StatefulWidget {
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;
  final int? maxLines;
  final void Function(String)? onChanged;
  final bool liveValidation;
  final bool showPasswordStrength;

  const CustomTextField({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled = true,
    this.maxLines = 1,
    this.onChanged,
    this.liveValidation = false,
    this.showPasswordStrength = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isPasswordVisible = false;
  String _value = '';

  bool get _isEmailField => widget.keyboardType == TextInputType.emailAddress;

  bool get _isValidEmail => _checkIsValidEmail(_value);

  PasswordStrength get _passwordStrength => _calcPasswordStrength(_value);

  bool get _showStrengthBar =>
      widget.showPasswordStrength && widget.isPassword && _value.isNotEmpty;

  void _togglePasswordVisibility() {
    setState(() => _isPasswordVisible = !_isPasswordVisible);
  }

  void _onChanged(String value) {
    setState(() => _value = value);
    widget.onChanged?.call(value);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Label
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: theme.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: isDark
                  ? AppColors.textPrimaryDark
                  : AppColors.textPrimaryLight,
            ),
          ),
          SizedBox(height: AppSizes.xs),
        ],

        TextFormField(
          controller: widget.controller,
          obscureText: widget.isPassword && !_isPasswordVisible,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          enabled: widget.enabled,
          maxLines: widget.isPassword ? 1 : widget.maxLines,
          style: theme.textTheme.bodyMedium,
          onChanged: _onChanged,
          decoration: _buildDecoration(
            context: context,
            hint: widget.hint,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            isPassword: widget.isPassword,
            isPasswordVisible: _isPasswordVisible,
            liveValidation: widget.liveValidation,
            isEmailField: _isEmailField,
            isValidEmail: _isValidEmail,
            value: _value,
            onTogglePassword: _togglePasswordVisibility,
          ),
        ),

        if (_showStrengthBar) PasswordStrengthBar(strength: _passwordStrength),
      ],
    );
  }
}
