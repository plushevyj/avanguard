import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';

import '../../../pages/auth/auth_controller.dart';
import '../../account/model/player_account.dart';
import '../repository/login_repository.dart';
import '../repository/token_repository.dart';
import '../repository/token_repository_impl.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginRepository loginRepository;
  final TokenRepository tokenRepository;

  AuthBloc({
    this.loginRepository = const LoginRepository(),
    this.tokenRepository = const TokenRepositoryImpl(),
  }) : super(const AuthInitial()) {
    on<AuthAppStarted>(_appStarted);
    on<AuthLogIn>(_logIn);
    on<AuthLogOut>(_logOut);
  }

  Future<void> _appStarted(
    AuthAppStarted event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthLoading());
      final token = await tokenRepository.getToken();
      if (token == null) {
        emit(const AuthUnauthenticated());
        return;
      }
      tokenRepository.addToken(token);
      final player = await loginRepository.loginByToken();
      Get.put(AuthController(), permanent: true).account.value = player;
      emit(AuthPlayerAuthenticated(player));
      tokenRepository.saveToken(player.sessionToken);
    } catch (error, trace) {
      emit(AuthError('$error\n$trace'));
      emit(const AuthUnauthenticated());
    }
  }

  Future<void> _logIn(AuthLogIn event, Emitter<AuthState> emit) async {
    try {
      final player = await loginRepository.logIn(
        username: event.email,
        password: event.password,
      );
      emit(AuthPlayerAuthenticated(player));
      Get.put(AuthController(), permanent: true).account.value = player;
      tokenRepository.addToken(player.sessionToken);
      tokenRepository.saveToken(player.sessionToken);
    } catch (error, trace) {
      emit(AuthError('$error\n$trace'));
      emit(const AuthUnauthenticated());
      Get.put(AuthController(), permanent: true).passwordErrorText.value =
          'Некорректная почта или пароль';
    }
  }

  Future<void> _logOut(AuthLogOut event, Emitter<AuthState> emit) async {
    await tokenRepository.clearToken();
    emit(const AuthUnauthenticated());
  }
}
