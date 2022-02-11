import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/add_ratings_screen.dart';
import 'package:flutter_application_1/screens/bookmarks_screen.dart';
import 'package:flutter_application_1/screens/categories_screen.dart';
import 'package:flutter_application_1/screens/category_detail_screen.dart';
import 'package:flutter_application_1/screens/change_language_screen.dart';
import 'package:flutter_application_1/screens/change_password_screen.dart';
import 'package:flutter_application_1/screens/edit_profile_screen.dart';
import 'package:flutter_application_1/screens/filter_screen.dart';
import 'package:flutter_application_1/screens/find_friends_screen.dart';
import 'package:flutter_application_1/screens/forgot_password_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/menu_photos_screen.dart';
import 'package:flutter_application_1/screens/new_review_screen.dart';
import 'package:flutter_application_1/screens/notification_screen.dart';
import 'package:flutter_application_1/screens/preview_menu_photos.dart';
import 'package:flutter_application_1/screens/profile_screen.dart';
import 'package:flutter_application_1/screens/register_screen.dart';
import 'package:flutter_application_1/screens/restaurant_details_screen.dart';
import 'package:flutter_application_1/screens/review_rating_screen.dart';
import 'package:flutter_application_1/screens/root_screen.dart';
import 'package:flutter_application_1/screens/search_results.dart';
import 'package:flutter_application_1/screens/set_location_screen.dart';
import 'package:flutter_application_1/screens/settings_screen.dart';
import 'package:flutter_application_1/screens/splash_screen.dart';
import 'package:flutter_application_1/screens/trending_restaurant_screen.dart';
import 'package:meta/meta.dart';

//@MaterialAutoRouter()
//@CustomAutoRouter(transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 200)

@CupertinoAutoRouter()
class $Router {
  @initial
  @CustomAutoRouter(
      transitionsBuilder: TransitionsBuilders.slideRight,
      durationInMilliseconds: 2000)
  LoginScreen loginScreen;

  @CustomAutoRouter(
      transitionsBuilder: TransitionsBuilders.slideRight,
      durationInMilliseconds: 2000)
  SplashScreen splashScreen;

  ForgotPasswordScreen forgotPasswordScreen;

  @MaterialRoute()
  RegisterScreen registerScreen;

  SetLocationScreen setLocationScreen;

  HomeScreen homeScreen;

  RootScreen rootScreen;

  ProfileScreen profileScreen;

  NotificationsScreen notificationsScreen;

  TrendingRestaurantsScreen trendingRestaurantsScreen;
  RestaurantDetailsScreen restaurantDetailsScreen;
  BookmarksScreen bookmarksScreen;

  FilterScreen filterScreen;
  SearchResultsScreen searchResultsScreen;
  ReviewRatingScreen reviewRatingScreen;

  AddRatingsScreen addRatingsScreen;
  MenuPhotosScreen menuPhotosScreen;
  PreviewMenuPhotosScreen previewMenuPhotosScreen;
  CategoriesScreen categoriesScreen;

  CategoryDetailScreen categoryDetailScreen;
  FindFriendsScreen findFriendsScreen;
  SettingsScreen settingsScreen;
  ChangePasswordScreen changePasswordScreen;

  ChangeLanguageScreen changeLanguageScreen;
  EditProfileScreen editProfileScreen;
  NewReviewScreen newReviewScreen;
}

class SearchValue {
  final String value;

  SearchValue(this.value);
}

class RestaurantDetails {
  final String imagePath;
  final String restaurantName;
  final String restaurantAddress;
  final String category;
  final String distance;
  final String rating;

  RestaurantDetails({
    @required this.imagePath,
    @required this.restaurantName,
    @required this.restaurantAddress,
    @required this.category,
    @required this.distance,
    @required this.rating,
  });
}

class CurrentScreen {
  final Widget currentScreen;
  final int tab_no;

  CurrentScreen({
    @required this.tab_no,
    @required this.currentScreen,
  });
}
