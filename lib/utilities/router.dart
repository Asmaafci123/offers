import 'package:flutter/material.dart';
import 'package:spicy/utilities/routes.dart';
import 'package:spicy/views/screens/all-branches.dart';
import 'package:spicy/views/screens/details-of-product.dart';
import 'package:spicy/views/screens/about-company-screen.dart';
import 'package:spicy/views/screens/add-payment-method.dart';
import 'package:spicy/views/screens/contact-us-screen.dart';
import 'package:spicy/views/screens/deatails-of-item-of-store.dart';
import 'package:spicy/views/screens/favourite_screen.dart';
import 'package:spicy/views/screens/forgetpassword_screen.dart';
import 'package:spicy/views/screens/home-screen.dart';
import 'package:spicy/views/screens/languages-screen.dart';
import 'package:spicy/views/screens/my-account-screen.dart';
import 'package:spicy/views/screens/my-cards-screen.dart';
import 'package:spicy/views/screens/onboarding_screen.dart';
import 'package:spicy/views/screens/payment-methods-screen.dart';
import 'package:spicy/views/screens/sign-up-screen.dart';
import 'package:spicy/views/screens/sign_in_screen.dart';
import 'package:spicy/views/screens/splach_screen.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.onBoardingScreenRoute:
      return MaterialPageRoute(builder: (_) => OnBoardingScreen());
    case AppRoutes.signInScreenRoute:
      return MaterialPageRoute(builder: (_) => SignInScreen());
    case AppRoutes.forgetPasswordScreenRoute:
      return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());
    case AppRoutes.signUpScreenRoute:
      return MaterialPageRoute(builder: (_) => const SignUpScreen());
    case AppRoutes.homeScreenRoute:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case AppRoutes.detailsOfProductScreenRoute:
      return MaterialPageRoute(builder: (_) => const DetailsOfProductScreen());
    case AppRoutes.myAccountScreenRoute:
      return MaterialPageRoute(builder: (_) => const MyAccountScreen());
    case AppRoutes.favouriteScreenRoute:
      return MaterialPageRoute(builder: (_) => const FavouriteScreen());
    case AppRoutes.myCardsScreenRoute:
      return MaterialPageRoute(builder: (_) => const MyCardsScreen());
    case AppRoutes.paymentMethodsScreenRoute:
      return MaterialPageRoute(builder: (_) => const PaymentMethodsScreen());
    case AppRoutes.addPaymentMethodScreenRoute:
      return MaterialPageRoute(builder: (_) => const AddPaymentMethod());
    case AppRoutes.languagesScreenRoute:
      return MaterialPageRoute(builder: (_) => const LanguagesScreen());
    case AppRoutes.aboutCompanyScreenRoute:
      return MaterialPageRoute(builder: (_) => const AboutCompanyScreen());
    case AppRoutes.contactUsScreenRoute:
      return MaterialPageRoute(builder: (_) => const ContactUsScreen());
    case AppRoutes.detailsOfItemOfStoreScreenRoute:
      return MaterialPageRoute(builder: (_) => const DetailsOfItemOfStore());
    case AppRoutes.allBranchesScreenRoute:
      return MaterialPageRoute(builder: (_) => const AllBranches());
    case AppRoutes.splashScreenRoute:
    default:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
  }
}
