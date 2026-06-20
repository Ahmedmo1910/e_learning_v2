part of 'custom_text_field.dart';

//! Input Decoration Builder

InputDecoration _buildDecoration({
  required BuildContext context,
  required String? hint,
  required Widget? prefixIcon,
  required Widget? suffixIcon,
  required bool isPassword,
  required bool isPasswordVisible,
  required bool liveValidation,
  required bool isEmailField,
  required bool isValidEmail,
  required String value,
  required VoidCallback onTogglePassword,
}) {
  final theme = Theme.of(context);
  final isDark = theme.brightness == Brightness.dark;

  return InputDecoration(
    hintText: hint,

    hintStyle: theme.textTheme.bodyMedium?.copyWith(
      color: isDark ? AppColors.grey600 : AppColors.grey500,
    ),

    prefixIcon: prefixIcon,

    suffixIcon: _buildSuffixIcon(
      context: context,
      isPassword: isPassword,
      isPasswordVisible: isPasswordVisible,
      liveValidation: liveValidation,
      isEmailField: isEmailField,
      isValidEmail: isValidEmail,
      value: value,
      suffixIcon: suffixIcon,
      onTogglePassword: onTogglePassword,
    ),

    filled: true,
    fillColor: isDark ? AppColors.surfaceDark : AppColors.grey100,

    contentPadding: EdgeInsets.symmetric(
      horizontal: AppSizes.m,
      vertical: AppSizes.s,
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.rM),
      borderSide: BorderSide.none,
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.rM),
      borderSide: BorderSide.none,
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.rM),
      borderSide: BorderSide(color: theme.colorScheme.primary, width: 1.5),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.rM),
      borderSide: BorderSide(color: theme.colorScheme.error, width: 1.5),
    ),
  );
}

//! Dynamic Suffix Icon

Widget? _buildSuffixIcon({
  required BuildContext context,
  required bool isPassword,
  required bool isPasswordVisible,
  required bool liveValidation,
  required bool isEmailField,
  required bool isValidEmail,
  required String value,
  required Widget? suffixIcon,
  required VoidCallback onTogglePassword,
}) {
  //? Password toggle
  if (isPassword) {
    return IconButton(
      onPressed: onTogglePassword,
      icon: Icon(
        isPasswordVisible
            ? Icons.visibility_off_outlined
            : Icons.visibility_outlined,
      ),
    );
  }

  //? Live email validation icon
  if (liveValidation && isEmailField && value.isNotEmpty) {
    return Icon(
      isValidEmail ? Icons.check_circle : Icons.cancel,
      color: isValidEmail ? Colors.green : Colors.redAccent,
    );
  }

  return suffixIcon;
}
