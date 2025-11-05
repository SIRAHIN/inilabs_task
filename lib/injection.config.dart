// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'data/api_service/i_user_api_service.dart' as _i377;
import 'data/api_service/user_api_service.dart' as _i635;
import 'data/repository/user_repository.dart' as _i762;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.lazySingleton<_i635.UserApiService>(() => _i377.IUserApiService());
  gh.lazySingleton<_i762.UserRepository>(
    () => _i762.IUserRepository(gh<_i635.UserApiService>()),
  );
  return getIt;
}
