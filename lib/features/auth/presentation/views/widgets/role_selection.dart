import 'role_card.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_v2/generated/l10n.dart';
import 'package:e_learning_v2/core/utils/app_sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoleSelectionSection extends StatelessWidget {
  final String? selectedRole;
  final bool showRoleError;
  final ValueChanged<String> onSelect;

  const RoleSelectionSection({
    super.key,
    required this.selectedRole,
    required this.showRoleError,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.signupTitle,

          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: AppSizes.s),
        Row(
          children: [
            Expanded(
              child: RoleCard(
                role: 'student',
                title: S.current.roleStudent,
                subtitle: S.current.roleStudentDesc,
                icon: Icons.school_outlined,
                isSelected: selectedRole == 'student',
                isDark: isDark,
                onTap: onSelect,
              ),
            ),
            SizedBox(width: AppSizes.m),
            Expanded(
              child: RoleCard(
                role: 'instructor',
                title: S.current.roleTutor,
                subtitle: S.current.roleTutorDesc,
                icon: Icons.psychology_outlined,
                isSelected: selectedRole == 'instructor',
                isDark: isDark,
                onTap: onSelect,
              ),
            ),
          ],
        ),
        if (showRoleError)
          Padding(
            padding: EdgeInsets.only(top: AppSizes.s, left: AppSizes.s),
            child: Text(
              S.current.roleRequiredError,
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
                fontSize: 12.sp,
              ),
            ),
          ),
      ],
    );
  }
}
