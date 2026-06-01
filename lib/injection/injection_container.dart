import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_learning_v2/core/theme/cubit/theme_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  final pref = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => pref);

  getIt.registerFactory(() => ThemeCubit(getIt()));
}
