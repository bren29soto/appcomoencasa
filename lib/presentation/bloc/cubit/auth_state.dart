part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthSignedIn extends AuthState {
  final AuthUser user;
  AuthSignedIn(this.user);
  @override
  List<Object?> get props => [user];
}

class AuthSigningIn extends AuthState {}

class AuthSignedOut extends AuthState {}

class Error extends AuthState {
  String message;
  Error(this.message);
  @override
  List<Object> get props => [message];
}
