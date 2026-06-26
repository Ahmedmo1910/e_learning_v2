import 'package:flutter/material.dart';
import 'widgets/splash_body.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../auth/presentation/cubit/auth_state.dart';
import '../../../auth/presentation/cubit/auth_cubit.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _canNavigate = false;
  bool _hasNavigated = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      _canNavigate = true;

      if (!mounted) return;

      _handleNavigation(context.read<AuthCubit>().state);
    });
  }

  void _handleNavigation(AuthState state) {
    if (_hasNavigated) return;
    if (!_canNavigate) return;
    if (state.isLoading) return;

    _hasNavigated = true;

    if (state.isAuthenticated) {
      handleHomeNavigation(state);
    } else {
      //  context.router.replace(const LoginRoute());
    }
  }

  void handleHomeNavigation(AuthState state) {
    if (state.user?.role == 'student') {
      // context.router.replace(const StudenHomeRoute());
    } else {
      // context.router.replace(const InstractorHomeRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (p, c) => p.status != c.status,
      listener: (_, state) => _handleNavigation(state),
      child: Scaffold(body: SplashBody()),
    );
  }
}
