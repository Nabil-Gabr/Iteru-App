import 'package:flutter/material.dart';
import 'package:iteru_app/layouts/layouts.dart';
import 'package:iteru_app/modules/auth/presentation/views/code_validation_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/forgot_password_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/login_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/signup_view.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/onboarding_view.dart';
import 'package:iteru_app/modules/splash/presentation/views/splash_view.dart';

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

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
