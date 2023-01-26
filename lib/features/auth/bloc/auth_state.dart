part of 'auth_bloc.dart';

enum AuthStatus {
  authenticating,
  authenticated,
  unauthenticated,
  authenticationError
}

class AuthState extends Equatable {
  final AuthStatus status;
  final String? accessToken;

  const AuthState({required this.status, this.accessToken});

  @override
  List<Object?> get props => [status, accessToken];

  AuthState copyWith({final AuthStatus? status, final String? accessToken}) {
    return AuthState(
        status: status ?? this.status,
        accessToken: accessToken ?? this.accessToken);
  }
}
