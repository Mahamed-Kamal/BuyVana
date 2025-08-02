part of 'auth_bloc.dart';

enum RequestState { init, loading, loaded, error }

class AuthState {
  final AuthResponseModel? authResponseModel;
  final RequestState? signUpRequestState;
  final RequestState? signInRequestState;
  final Failures? failures;

  const AuthState({
    this.authResponseModel,
    this.signInRequestState,
    this.signUpRequestState,
    this.failures,
  });

  AuthState copyWith({
    AuthResponseModel? authResponseModel,
    RequestState? signUpRequestState,
    RequestState? signInRequestState,
    Failures? failures,
  }) {
    return AuthState(
      authResponseModel: authResponseModel ?? this.authResponseModel,
      failures: failures ?? this.failures,
      signUpRequestState: signUpRequestState ?? this.signUpRequestState,
      signInRequestState: signInRequestState ?? this.signInRequestState,
    );
  }
}

final class AuthInitial extends AuthState {
  AuthInitial(): super(signUpRequestState: RequestState.init,signInRequestState: RequestState.init);
}
