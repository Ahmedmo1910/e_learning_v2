import 'package:flutter/material.dart';
import '../../cubit/auth_cubit.dart';
import '../../cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/loading_overlay.dart';
import '../login_page.dart';

class LoginPageBlocConsumer extends StatelessWidget {
  const LoginPageBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return LoadingOverlay(isLoading: state.isLoading, child: LoginPage());
      },
    );
  }
}
