import 'package:flutter/material.dart';
import 'package:iteru_app/layouts/layouts.dart';
import 'package:iteru_app/modules/auth/presentation/views/code_validation_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/create_new_password_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/forgot_password_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/login_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/signup_view.dart';
import 'package:iteru_app/modules/chat/presentation/view/chat_view.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';
import 'package:iteru_app/modules/home/domain/entites/most_visited_item_entity.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/home/domain/entites/popular_places_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/home_view.dart';
import 'package:iteru_app/modules/hotels/domain/entity/hotel_entity.dart';
import 'package:iteru_app/modules/hotels/presenation/views/hotel_details_view.dart';
import 'package:iteru_app/modules/hotels/presenation/views/hotel_view.dart';
import 'package:iteru_app/modules/hotels/presenation/views/widgets/hotel_view_all.dart';
import 'package:iteru_app/modules/most_visited/presentation/view/most_visited_details_view.dart';
import 'package:iteru_app/modules/most_visited/presentation/view/most_visited_view.dart';
import 'package:iteru_app/modules/museum/presentation/view/museum_details_view.dart';
import 'package:iteru_app/modules/museum/presentation/view/museum_view.dart';
import 'package:iteru_app/modules/museum/presentation/view/museum_rating_view.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/onboarding_view.dart';
import 'package:iteru_app/modules/popular_places/presentation/view/popular_places_details_view.dart';
import 'package:iteru_app/modules/popular_places/presentation/view/popular_places_view.dart';
import 'package:iteru_app/modules/recommendation/domain/entity/recommentation_entity.dart';
import 'package:iteru_app/modules/recommendation/presentation/view/recommendation_result_view.dart';
import 'package:iteru_app/modules/recommendation/recommendation.dart';
import 'package:iteru_app/modules/splash/presentation/views/splash_view.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/tourism_types_details_view.dart';
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

      case RecommendationView.routeName:
      return MaterialPageRoute(
        builder: (context) => const RecommendationView(),
      );

      case RecommendationResultView.routeName:
      final results = settings.arguments as List<RecommentationEntity>;
      return MaterialPageRoute(
        builder: (context) =>  RecommendationResultView(results: results ,),
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

    // case MainView.routeName:
    //   return MaterialPageRoute(
    //     builder: (context) => const MainView(),
    //   );
    case HomeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeView(),
      );

    case ChatView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ChatView(),
      );

    case MuseumView.routeName:
      final museumItemEntity = settings.arguments as List<MuseumItemEntity>;
      return MaterialPageRoute(
        builder: (context) => MuseumView(
          museumItemEntity: museumItemEntity,
        ),
      );

    case TourismTypesView.routeName:
    final monumentEntity = settings.arguments as List<MonumentEntity>;
      return MaterialPageRoute(
        builder: (context) =>  TourismTypesView(monumentEntity: monumentEntity,),
      );

    case PopularPlacesView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PopularPlacesView(),
      );

    case MostVisitedView.routeName:
      return MaterialPageRoute(
        builder: (context) => const MostVisitedView(),
      );

    case HotelView.routeName:
      return MaterialPageRoute(
        builder: (context) => const HotelView(),
      );

    case MuseumDetailsView.routeName:
      final museumItemEntity = settings.arguments as MuseumItemEntity;
      return MaterialPageRoute(
        builder: (context) => MuseumDetailsView(
          museumItemEntity: museumItemEntity,
        ),
      );

    case MostVisitedDetailsView.routeName:
      final mostVisitedItemEntity = settings.arguments as MostVisitedItemEntity;
      return MaterialPageRoute(
        builder: (context) => MostVisitedDetailsView(
          mostVisitedItemEntity: mostVisitedItemEntity,
        ),
      );

    case TourismTypesDetailsView.routeName:
      final monumentEntity = settings.arguments as MonumentEntity;
      return MaterialPageRoute(
        builder: (context) => TourismTypesDetailsView(
            monumentEntity: monumentEntity),
      );

    case PopularPlacesDetailsView.routeName:
      final popularPlacesItemEntity =
          settings.arguments as PopularPlacesItemEntity;
      return MaterialPageRoute(
        builder: (context) => PopularPlacesDetailsView(
          popularPlacesItemEntity: popularPlacesItemEntity,
        ),
      );

    case HotelDetailsView.routeName:
      final hotelItemEntity = settings.arguments as HotelEntity;
      return MaterialPageRoute(
        builder: (context) => HotelDetailsView(
          hotelEntity: hotelItemEntity,
        ),
      );

    case MuseumRatingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const MuseumRatingView(),
      );
    
    case HotelViewAll.routeName:
      return MaterialPageRoute(
        builder: (context) => const HotelViewAll(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
