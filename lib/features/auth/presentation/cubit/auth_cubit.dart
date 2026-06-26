import 'auth_state.dart';
import '../../repository/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_learning_v2/core/bloc/base_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authRepo;
  AuthCubit(this.authRepo) : super(const AuthState());

  Future<void> signIn({required String email, required String password}) async {
    emit(state.copyWith(status: Status.loading));
    final result = await authRepo.signIn(email: email, password: password);
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: Status.failure,
          message: failure.message,
          failure: failure,
        ),
      ),
      (user) => emit(
        state.copyWith(
          status: Status.success,
          user: user,
          isAuthenticated: true,
          isEmailVerified: user.isEmailVerified,
        ),
      ),
    );
  }

  Future<void> signUp({
    required String email,
    required String password,
    required String name,
    required String role,
  }) async {
    emit(state.copyWith(status: Status.loading));
    final result = await authRepo.signUp(
      email: email,
      password: password,
      name: name,
      role: role,
    );
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: Status.failure,
          message: failure.message,
          failure: failure,
        ),
      ),
      (user) => emit(
        state.copyWith(
          status: Status.success,
          user: user,
          isAuthenticated: true,
          isEmailVerified: false,
        ),
      ),
    );
  }

  Future<void> sendOTP({required String email, required String token}) async {
    emit(state.copyWith(status: Status.loading));
    final result = await authRepo.sendOTP(email: email, otp: token);
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: Status.failure,
          message: failure.message,
          failure: failure,
        ),
      ),
      (user) => emit(
        state.copyWith(
          status: Status.success,
          user: user,
          isEmailVerified: true,
          isAuthenticated: true,
        ),
      ),
    );
  }

  Future<void> reSendOTP({required String email}) async {
    emit(state.copyWith(status: Status.loading));
    final result = await authRepo.reSendOTP(email: email);
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: Status.failure,
          message: failure.message,
          failure: failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          status: Status.success,
          message: 'OTP resent successfully',
        ),
      ),
    );
  }

  Future<void> signOut() async {
    emit(state.copyWith(status: Status.loading));
    final result = await authRepo.signOut();
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: Status.failure,
          message: failure.message,
          failure: failure,
        ),
      ),
      (_) => emit(const AuthState()),
    );
  }

  Future<void> checkAuthStatus() async {
    final user = authRepo.getCurrentUser();
    if (user != null) {
      emit(
        state.copyWith(
          status: Status.success,
          user: user,
          isAuthenticated: true,
          isEmailVerified: user.isEmailVerified,
        ),
      );
    } else {
      emit(const AuthState());
    }
  }
}
