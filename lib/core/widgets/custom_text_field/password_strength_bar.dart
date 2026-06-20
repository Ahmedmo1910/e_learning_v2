part of 'custom_text_field.dart';

class PasswordStrengthBar extends StatelessWidget {
  final PasswordStrength strength;

  const PasswordStrengthBar({super.key, required this.strength});

  @override
  Widget build(BuildContext context) {
    final color = _strengthColor(context, strength);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: AppSizes.s),
        Row(
          children: [
            // Progress bar
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: LinearProgressIndicator(
                  minHeight: 6,
                  value: _strengthValue(strength),
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation(color),
                ),
              ),
            ),

            SizedBox(width: AppSizes.s),

            Text(
              _strengthText(strength),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: color,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
