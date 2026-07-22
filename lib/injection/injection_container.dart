import 'package:get_it/get_it.dart';
import '../features/auth/presentation/cubit/auth_cubit.dart';
import '../features/auth/repository/auth_repo.dart';
import '../features/auth/repository/auth_repo_imp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_learning_v2/core/theme/cubit/theme_cubit.dart';
import 'package:e_learning_v2/core/services/supabase_service.dart';
import '../features/auth/data/datasource/auth_remote_datasource.dart';
import '../features/auth/data/datasource/auth_remote_datasource_imp.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  final pref = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => pref);

  getIt.registerFactory(() => ThemeCubit(getIt()));

 // getIt.registerSingleton(()=> AppRouter());

  getIt.registerLazySingleton(() => SupabaseService());

  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDatasourceImp(getIt()),
  );

  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImp(getIt()));

  getIt.registerFactory(() => AuthCubit(getIt()));
}
