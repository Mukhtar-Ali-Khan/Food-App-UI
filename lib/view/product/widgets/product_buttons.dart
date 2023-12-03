import 'package:flutter/material.dart';
import 'package:food_app_ui/res/colors/app_colors.dart';

class ProductButtons extends StatelessWidget {
  const ProductButtons(
      {Key? key,
      required this.widget,
      required this.buttonColor,
      required this.onPress,
      this.width = 45,
      this.height = 45})
      : super(key: key);
  final double height, width;
  final Color buttonColor;
  final VoidCallback onPress;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      // padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: onPress,
        splashColor: AppColors.whiteColor,
        child: widget,
      ),
    );
  }
}
