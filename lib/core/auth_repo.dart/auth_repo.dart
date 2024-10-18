import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'auth_repo_impl.dart';

abstract interface class AuthRepo {
  Future<void> signIn(String email, String password);

  Future<void> signUp(String email, String password);

  Future<void> signOut();

  Future<void> signInWithGoogle();
}
