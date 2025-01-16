import 'package:flutter/material.dart';
import 'package:iteru_app/layouts/layouts.dart';
import 'package:iteru_app/modules/auth/presentation/views/code_validation_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/create_new_password_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/forgot_password_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/login_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/signup_view.dart';
import 'package:iteru_app/modules/bottom_navigation_bar/presentation/view/main_view.dart';
import 'package:iteru_app/modules/hotels/presenation/views/hotel_view.dart';
import 'package:iteru_app/modules/museum/presentation/view/museum_view.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/onboarding_view.dart';
import 'package:iteru_app/modules/popular_places/presentation/view/popular_places_view.dart';
import 'package:iteru_app/modules/splash/presentation/views/splash_view.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/tourism_types_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Layouts.routename:
      return MaterialPageRoute(
        builder: (context) => const Layouts(),
      );

    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );

    case OnboardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnboardingView(),
      );

    case LoginView.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
      );

    case SignupView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignupView(),
      );

    case ForgotPasswordView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgotPasswordView(),
      );

    case CodeValidationView.routeName:
      return MaterialPageRoute(
        builder: (context) => const CodeValidationView(),
      );

    case CreateNewPasswordView.routeName:
      return MaterialPageRoute(
        builder: (context) => const CreateNewPasswordView(),
      );

    case MainView.routeName:
      return MaterialPageRoute(
        builder: (context) => const MainView(),
      );
    
    case MuseumView.routeName:
      return MaterialPageRoute(
        builder: (context) => const MuseumView(),
      );
    
    case TourismTypesView.routeName:
      return MaterialPageRoute(
        builder: (context) => const TourismTypesView(),
      );
    
    case PopularPlacesView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PopularPlacesView(),
      );
    
    case HotelView.routeName:
      return MaterialPageRoute(
        builder: (context) => const HotelView(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
