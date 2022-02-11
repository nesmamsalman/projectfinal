import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/router.dart';
import 'package:flutter_application_1/routes/router.gr.dart';
import 'package:flutter_application_1/values/data.dart';
import 'package:flutter_application_1/values/values.dart';
import 'package:flutter_application_1/widgets/foody_bite_card.dart';
import 'package:flutter_application_1/widgets/search_input_field.dart';
import 'package:flutter_application_1/widgets/spaces.dart';

class SearchResultsScreen extends StatelessWidget {
  final SearchValue searchValue;

  SearchResultsScreen(this.searchValue);

  @override
  Widget build(BuildContext context) {
    void navigateToDetailScreen() {
      AppRouter.navigator.pushNamed(AppRouter.restaurantDetailsScreen);
    }

    var controller = TextEditingController(text: searchValue.value);

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(
            left: Sizes.MARGIN_16,
            right: Sizes.MARGIN_16,
            top: Sizes.MARGIN_16,
          ),
          child: Column(
            children: <Widget>[
              FoodyBiteSearchInputField(
                ImagePath.searchIcon,
                controller: controller,
                textFormFieldStyle:
                    Styles.customNormalTextStyle(color: AppColors.accentText),
                hintText: StringConst.HINT_TEXT_TRENDING_SEARCH_BAR,
                hintTextStyle:
                    Styles.customNormalTextStyle(color: AppColors.accentText),
                suffixIconImagePath: ImagePath.closeIcon,
                onTapOfSuffixIcon: () => Navigator.pop(context),
                borderWidth: 0.0,
                borderStyle: BorderStyle.solid,
              ),
              SizedBox(height: Sizes.WIDTH_16),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  separatorBuilder: (context, index) {
                    return SpaceH8();
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      child: FoodyBiteCard(
                        onTap: () => AppRouter.navigator.pushNamed(
                          AppRouter.restaurantDetailsScreen,
                          arguments: RestaurantDetails(
                            imagePath: imagePaths[index],
                            restaurantName: restaurantNames[index],
                            restaurantAddress: addresses[index],
                            rating: ratings[index],
                            category: category[index],
                            distance: distance[index],
                          ),
                        ),
                        imagePath: imagePaths[index],
                        status: status[index],
                        cardTitle: restaurantNames[index],
                        rating: ratings[index],
                        category: category[index],
                        distance: distance[index],
                        address: addresses[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
