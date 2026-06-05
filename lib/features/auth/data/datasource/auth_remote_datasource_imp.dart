import '../models/user_model.dart';
import 'auth_remote_datasource.dart';
import '../../../../core/errors/exceptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../core/services/supabase_service.dart';

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
    final response = await _auth.signInWithPassword(
      email: email,
      password: password,
    );
    final user = response.user;
    if (user == null) {
      throw CustomException(message: 'Failed to sign in');
    }
    return _mapUser(user);
  }

  @override
  Future<UserModel> signUp({
    required String name,
    required String email,
    required bool role,
    required String password,
  }) async {
    final response = await _auth.signUp(
      email: email,
      password: password,
      data: {'full_name': name, 'role': role},
    );
    final user = response.user;
    if (user == null) {
      throw CustomException(message: 'Failed to sign up');
    }
    if (user.identities?.isEmpty ?? false) {
      throw CustomException(message: 'Email already exists');
    }
    return _mapUser(user);
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }

  @override
  UserModel getCurrentUser() {
    final user = _auth.currentUser;
    if (user == null) {
      throw CustomException(message: 'No user found');
    }
    return _mapUser(user);
  }

  @override
  Future<UserModel> sendOTP({
    required String email,
    required String otp,
  }) async {
    final response = await _auth.verifyOTP(
      email: email,
      token: otp,
      type: OtpType.signup,
    );
    final user = response.user;
    if (user == null) {
      throw CustomException(message: 'Invalid OTP');
    }
    return _mapUser(user);
  }

  @override
  Future<void> reSendOTP({required String email}) async {
    await _auth.resend(email: email, type: OtpType.signup);
  }

  @override
  Stream<bool> authStateChanges() {
    return _auth.onAuthStateChange.map((event) => event.session != null);
  }
  
  @override
  Future<void> resetPassword({required String email}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }
}
