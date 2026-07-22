import 'package:flutter/material.dart';
import '../../cubit/auth_cubit.dart';
import '../../cubit/auth_state.dart';
import '../signup_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_learning_v2/core/widgets/loading_overlay.dart';

class SignupPageBlocConsumer extends StatelessWidget {
  const SignupPageBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return LoadingOverlay(isLoading: state.isLoading, child: SignupPage());
      },
    );
  }
}
