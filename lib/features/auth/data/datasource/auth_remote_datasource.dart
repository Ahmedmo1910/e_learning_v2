import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signIn({required String email, required String password});
  Future<UserModel> signUp({
    required String name,
    required String email,
    required String role,
    required String password,
  });
  Future<void> signOut();
  UserModel getCurrentUser();
  Future<void> resetPassword({required String email});
  Future<UserModel> sendOTP({required String email, required String otp});
  Future<void> reSendOTP({required String email});
  Stream<bool> authStateChanges();
}
