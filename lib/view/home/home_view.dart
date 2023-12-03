import 'package:flutter/material.dart';
import 'package:food_app_ui/model/product/product_model.dart';
import 'package:food_app_ui/res/colors/app_colors.dart';
import 'package:food_app_ui/res/dummy%20data/dummy_data.dart';
import 'package:food_app_ui/res/text%20styles/app_text_styles.dart';
import 'package:food_app_ui/view/home/widgets/category_widget.dart';
import 'package:food_app_ui/view/home/widgets/home_app_bar_widget.dart';
import 'package:food_app_ui/view/home/widgets/popular_items_widget.dart';
import 'package:food_app_ui/view/home/widgets/search_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 40, left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top app bar
              const HomeAppBarWidget(),
              const SizedBox(height: 24),
              Text('Good Morning', style: AppTextStyles.bodySmall()),
              const SizedBox(height: 4),
              Text('Sylvia Dawson', style: AppTextStyles.titleBold()),
              const SizedBox(height: 25),
              //Search Widget
              const SearchWidget(),
              const SizedBox(height: 30),
              // Category section
              Text(
                'Categories',
                style: AppTextStyles.bodyHeading(),
              ),
              const SizedBox(height: 18),
              SizedBox(
                height: 60,
                child: ListView.separated(
                  itemCount: DummyData.categoryList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, child) =>
                      const SizedBox(width: 5),
                  itemBuilder: (context, index) {
                    return CategoryWidget(
                      categoryModel: DummyData.categoryList[index],
                      isSelect: categoryIndex == index,
                      onPress: () {
                        setState(() {
                          categoryIndex = index;
                        });
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 35),
              // popular Items
              Text(
                'Popular Items',
                style: AppTextStyles.bodyHeading(),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 270,
                child: ListView.separated(
                  itemCount: popularItems().length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8)
                      .copyWith(top: 30, bottom: 8),
                  separatorBuilder: (context, child) =>
                      const SizedBox(width: 15),
                  itemBuilder: (context, index) {
                    return PopularItemsWidget(
                      productModel: popularItems()[index],
                    );
                  },
                ),
              ),
              const SizedBox(height: 25),
              // popular Items
              Text(
                'Exclusive Offers',
                style: AppTextStyles.bodyHeading(),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 270,
                child: ListView.separated(
                  itemCount: DummyData.exclusiveOfferList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8)
                      .copyWith(top: 30, bottom: 8),
                  separatorBuilder: (context, child) =>
                      const SizedBox(width: 15),
                  itemBuilder: (context, index) {
                    return PopularItemsWidget(
                      productModel: DummyData.exclusiveOfferList[index],
                      imageHeight: 100,
                    );
                  },
                ),
              ),
              const SizedBox(height: 18),
              // Restaurants
              Text(
                'Best Restaurants',
                style: AppTextStyles.bodyHeading(),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 90,
                child: ListView.separated(
                  itemCount: DummyData.restaurantsList.length,
                  shrinkWrap: true,
                  cacheExtent: 34,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, child) =>
                      const SizedBox(width: 20),
                  itemBuilder: (context, index) {
                    return Image.asset(DummyData.restaurantsList[index]);
                  },
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }

  List<ProductModel> popularItems() {
    switch (categoryIndex) {
      case 0:
        return DummyData.pizzaList;
      case 1:
        return DummyData.burgerList;
      case 2:
        return DummyData.drinksList;
      case 3:
        return DummyData.dessertList;
      case 4:
        return DummyData.wingsList;
    }
    return DummyData.pizzaList;
  }
}
