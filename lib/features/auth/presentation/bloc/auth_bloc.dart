import 'package:bloc/bloc.dart';
import 'package:buy_vana/core/failures/failures.dart';
import 'package:buy_vana/features/auth/data/models/sign_in_request_model.dart';
import 'package:buy_vana/features/auth/data/models/sign_up_request_model.dart';
import 'package:buy_vana/features/auth/domin/usecases/sign_up_use_case.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/auth_response_model.dart';
import '../../domin/usecases/sign_in_use_case.dart';
part 'auth_event.dart';
part 'auth_state.dart';
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
   SignUpUseCase signUpUseCase;
   SignInUseCase signInUseCase;
  AuthBloc(this.signUpUseCase, this.signInUseCase) : super(AuthInitial()) {
    on<SignUpEvent>((event, emit) async {
      emit(state.copyWith(signUpRequestState:RequestState.loading));
      var response =await signUpUseCase.call(request: event.model);
      response.fold((error) {
        emit(state.copyWith(signUpRequestState:RequestState.error,failures:error));
      }, (data) {
        emit(state.copyWith(signUpRequestState: RequestState.loaded,authResponseModel: data));
      },);
    });

    on<SignInEvent>((event, emit) async {
      emit(state.copyWith(signInRequestState: RequestState.loading));
      var response = await signInUseCase.call(signInRequestModel: event.signInRequestModel);
      response.fold((error) {
        emit(state.copyWith(signInRequestState: RequestState.error,failures: error));
      }, (data) {
        emit(state.copyWith(signInRequestState: RequestState.loaded,authResponseModel:data));
      });

    });
  }
}
