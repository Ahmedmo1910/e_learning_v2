import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_learning_v2/core/theme/cubit/theme_cubit.dart';
import 'package:e_learning_v2/injection/injection_container.dart';

class CubitProvider extends StatelessWidget {
  final Widget child;
  const CubitProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ThemeCubit>()),
        BlocProvider(
          create: (context) => getIt<AuthCubit>()..checkAuthStatus(),
        ),
      ],
      child: child,
    );
  }
}
