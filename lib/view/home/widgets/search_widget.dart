import 'package:flutter/material.dart';
import '../../../res/colors/app_colors.dart';
import '../../../res/text styles/app_text_styles.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: TextField(
          cursorColor: AppColors.yellow,
          style: AppTextStyles.bodySmall(),
          decoration: InputDecoration(
            hintText: 'search your favourite food',
            hintStyle: AppTextStyles.bodySmall(),
            filled: true,
            fillColor: AppColors.lightGray,
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.lightBlack,
            ),
            suffixIcon: InkWell(
              onTap: () {},
              child: Icon(
                Icons.mic,
                color: AppColors.yellow,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
