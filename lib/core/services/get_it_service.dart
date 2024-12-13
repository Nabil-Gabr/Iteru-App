import 'package:get_it/get_it.dart';
import 'package:iteru_app/core/services/api/api_auth_service.dart';
import 'package:iteru_app/modules/auth/data/repo_impl/auth_repo_impl.dart';
import 'package:iteru_app/modules/auth/domain/repos/auth_repo.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<ApiAuthService>(ApiAuthService());

  getIt.registerSingleton<AuthRepo>(
      AuthRepoImpl(apiAuthService: getIt<ApiAuthService>()));
}

