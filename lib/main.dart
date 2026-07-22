import 'package:flutter/material.dart';
import 'core/theme/cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_learning_v2/generated/l10n.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:e_learning_v2/core/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_learning_v2/core/bloc/cubit_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:e_learning_v2/injection/injection_container.dart';
import 'package:e_learning_v2/core/services/supabase_service.dart';
import 'package:e_learning_v2/core/services/custom_bloc_observer.dart';

import 'features/auth/presentation/views/login_page.dart';
import 'features/auth/presentation/views/signup_page.dart';
import 'features/splash/presentation/view/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await dotenv.load(fileName: '.env');
  await SupabaseService.initialize();
  await setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CubitProvider(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                title: '',
                theme: AppTheme.light,
                darkTheme: AppTheme.dark,
                themeMode: state.themeMode,
                locale: const Locale('en'),
                localizationsDelegates: [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                home: SignupPage(),
                debugShowCheckedModeBanner: false,
              );
            },
          );
        },
      ),
    );
  }
}
