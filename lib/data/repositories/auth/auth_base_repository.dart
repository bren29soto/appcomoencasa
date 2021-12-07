import 'package:equatable/equatable.dart';

class AuthUser extends Equatable {
  String? uid = '';
  String? hotmail = '';

  AuthUser(this.uid, this.hotmail);

  @override
  // TODO: implement props
  List<Object?> get props => [uid, hotmail];
}

abstract class AuthBaseRepository {
  Stream<AuthUser?> get onAuthStateChanged;
  Future<AuthUser?> signInWithGoogle();
  Future<AuthUser?> signInWithEmailAndPassword(String hotmail, String password);
  Future<AuthUser?> createUserWithEmailAndPassword(
      String hotmail, String password);
  Future<AuthUser?> signInAnonymously();
  Future<void> signOut();
}
