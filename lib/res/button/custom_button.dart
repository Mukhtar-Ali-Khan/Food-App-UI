import 'package:flutter/material.dart';
import '../colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.height = 55,
      this.width = 55,
      required this.widget,
      required this.onPress})
      : super(key: key);

  final double width, height;
  final VoidCallback onPress;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.yellow,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: AppColors.lightGray,
                spreadRadius: 2.0,
                blurRadius: 3.0,
                offset: const Offset(2.0, 2.0)),
            BoxShadow(
                color: AppColors.lightGray,
                spreadRadius: 2.0,
                blurRadius: 3.0,
                offset: const Offset(-2.0, -2.0))
          ],
        ),
        child: widget,
      ),
    );
  }
}
