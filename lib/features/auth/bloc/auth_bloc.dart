import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_teacher_dashboard_app/features/auth/repositories/auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;

  AuthBloc({required this.authRepo})
      : super(const AuthState(status: AuthStatus.authenticating)) {
    on<AuthGetAccessTokenEvent>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.authenticating));
      final bool isAuthenticated = await authRepo.isAuthenticated();
      if (isAuthenticated) {
        emit(state.copyWith(status: AuthStatus.authenticated));
      } else {
        emit(state.copyWith(status: AuthStatus.unauthenticated));
      }
    });
    on<AuthLoginEvent>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.authenticating));
      final String? accessToken = await authRepo.login(
          username: event.username, password: event.password);
      await Future.delayed(const Duration(seconds: 3));
      if (accessToken != null) {
        emit(state.copyWith(status: AuthStatus.authenticated));
      } else {
        emit(state.copyWith(status: AuthStatus.authenticationError));
      }
    });
    on<AuthLogoutEvent>((event, emit) async {
      await authRepo.logout();
      emit(state.copyWith(status: AuthStatus.unauthenticated));
    });

    add(AuthGetAccessTokenEvent());
  }
}
