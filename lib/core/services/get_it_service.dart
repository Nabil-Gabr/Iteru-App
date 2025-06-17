import 'package:get_it/get_it.dart';
import 'package:iteru_app/core/repos/monument_repo/monument_repo.dart';
import 'package:iteru_app/core/repos/monument_repo/monument_repo_impl.dart';
import 'package:iteru_app/core/repos/museum_repo/museum_repo.dart';
import 'package:iteru_app/core/repos/museum_repo/museum_repo_impl.dart';
import 'package:iteru_app/core/services/api/api_auth_service.dart';
import 'package:iteru_app/core/services/api/api_database_service.dart';
import 'package:iteru_app/modules/auth/data/repo_impl/auth_repo_impl.dart';
import 'package:iteru_app/modules/auth/domain/repos/auth_repo.dart';
import 'package:iteru_app/modules/chat/data/repo_impl/send_message_repo_impl.dart';
import 'package:iteru_app/modules/chat/domain/repo/send_message_repo.dart';
import 'package:iteru_app/modules/hotels/data/repo/hotel_repo_impl.dart';
import 'package:iteru_app/modules/hotels/domain/repo/hotel_repo.dart';
import 'package:iteru_app/modules/recommendation/data/repo_impl/recommendation_repo_impl.dart';
import 'package:iteru_app/modules/recommendation/domain/repo/recommendation_repo.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<ApiAuthService>(ApiAuthService());
  getIt.registerSingleton<ApiDatabaseService>(ApiDatabaseService());

  getIt.registerSingleton<AuthRepo>(
      AuthRepoImpl(apiAuthService: getIt<ApiAuthService>()));

  getIt.registerSingleton<MuseumRepo>(
      MuseumRepoImpl(apiDatabaseService: getIt<ApiDatabaseService>()));
  
  getIt.registerSingleton<MonumentRepo>(
      MonumentRepoImpl(apiDatabaseService: getIt<ApiDatabaseService>()));

  getIt.registerSingleton<SendMessageRepo>(
      SendMessageRepoImpl(apiDatabaseService: getIt<ApiDatabaseService>()));

  getIt.registerSingleton<RecommendationRepo>(
      RecommendationRepoImpl(databaseService: getIt<ApiDatabaseService>()));

  getIt.registerSingleton<HotelRepo>(
      HotelRepoImpl(apiDatabaseService: getIt<ApiDatabaseService>()));
}
