import 'package:flutter/material.dart';
import '../../../res/colors/app_colors.dart';
import '../../../res/text styles/app_text_styles.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    Key? key,
    required this.leading,
    required this.trailing,
    this.isBold = false,
  }) : super(key: key);
  final String leading, trailing;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          leading,
          style: AppTextStyles.bodyHeading(
              fontSize: isBold ? 18 : 16,
              fontWeight: isBold ? FontWeight.w700 : FontWeight.w600),
        ),
        const Spacer(),
        Text(
          '\$',
          style: AppTextStyles.bodyHeading(
              fontSize: isBold ? 14 : 12,
              fontWeight: FontWeight.w700,
              color: AppColors.red),
        ),
        Text(
          trailing,
          style: AppTextStyles.bodyHeading(
              fontSize: isBold ? 18 : 16,
              fontWeight: FontWeight.w700,
              color: AppColors.red),
        ),
      ],
    );
  }
}
