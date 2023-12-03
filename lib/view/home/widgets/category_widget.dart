import 'package:flutter/material.dart';
import 'package:food_app_ui/model/category/category_model.dart';
import '../../../res/colors/app_colors.dart';
import '../../../res/text styles/app_text_styles.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.categoryModel,
    required this.onPress,
    required this.isSelect,
  }) : super(key: key);

  final CategoryModel categoryModel;
  final VoidCallback onPress;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding:
            const EdgeInsets.symmetric(vertical: 2).copyWith(left: 2, right: 8),
        decoration: BoxDecoration(
          color: isSelect ? AppColors.yellow : AppColors.lightGray,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 55,
              width: 55,
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: isSelect ? AppColors.whiteColor : AppColors.yellow,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                categoryModel.image,
                height: 45,
                width: 45,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              categoryModel.name,
              style: AppTextStyles.bodySmall(
                  fontSize: 16, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
