import '../models/user_model.dart';
import 'auth_remote_datasource.dart';
import '../../../../core/errors/failures.dart';
import 'package:e_learning_v2/generated/l10n.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../core/services/supabase_service.dart';
import 'package:e_learning_v2/core/errors/exceptions.dart';

class AuthRemoteDatasourceImp implements AuthRemoteDataSource {
  final SupabaseService _supabaseService;
  AuthRemoteDatasourceImp(this._supabaseService);

  GoTrueClient get _auth => _supabaseService.auth;
  UserModel _mapUser(User user) => UserModel.fromAuthUser(user);

  @override
  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _auth.signInWithPassword(
        email: email,
        password: password,
      );
      final user = response.user;
      if (user == null) {
        throw UnexpectedFailure(message: S.current.unexpectedError);
      }
      return _mapUser(user);
    } catch (e) {
      throw CustomException.map(e);
    }
  }

  @override
  Future<UserModel> signUp({
    required String name,
    required String email,
    required String role,
    required String password,
  }) async {
    try {
      final response = await _auth.signUp(
        email: email,
        password: password,
        data: {'full_name': name, 'role': role},
      );
      final user = response.user;
      if (user == null) {
        throw UnexpectedFailure(message: S.current.unexpectedError);
      }
      if (user.identities?.isEmpty ?? false) {
        throw EmailAlreadyInUseFailure(message: S.current.emailInUse);
      }
      return _mapUser(user);
    } catch (e) {
      // avoid double-mapping if already a Failure
      if (e is Failure) rethrow;
      throw CustomException.map(e);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw CustomException.map(e);
    }
  }

  @override
  UserModel getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw UnexpectedFailure(message: S.current.unexpectedError);
      }
      return _mapUser(user);
    } catch (e) {
      if (e is Failure) rethrow;
      throw CustomException.map(e);
    }
  }

  @override
  Future<UserModel> sendOTP({
    required String email,
    required String otp,
  }) async {
    try {
      final response = await _auth.verifyOTP(
        email: email,
        token: otp,
        type: OtpType.signup,
      );
      final user = response.user;
      if (user == null) throw InvalidOtpFailure(message: S.current.invalidOtp);
      return _mapUser(user);
    } catch (e) {
      if (e is Failure) rethrow;
      throw CustomException.map(e);
    }
  }

  @override
  Future<void> reSendOTP({required String email}) async {
    try {
      await _auth.resend(email: email, type: OtpType.signup);
    } catch (e) {
      throw CustomException.map(e);
    }
  }

  @override
  Stream<bool> authStateChanges() {
    return _auth.onAuthStateChange.map((event) => event.session != null);
  }

  @override
  Future<void> resetPassword({required String email}) async {
    try {
      await _auth.resetPasswordForEmail(email);
    } catch (e) {
      throw CustomException.map(e);
    }
  }
}
