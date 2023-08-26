import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/user/login/form_field/phone.dart';

part 'forgot_password_state.freezed.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  factory ForgotPasswordState(
      {required Phone phone,
      required FormzStatus status,
      Object? error,
      required bool isLoadingForgotPassword}) = _ForgotPasswordState;

  const ForgotPasswordState._();

  factory ForgotPasswordState.initial() => ForgotPasswordState(
      phone: Phone.pure(),
      status: FormzStatus.pure,
      error: null,
      isLoadingForgotPassword: false);
}
