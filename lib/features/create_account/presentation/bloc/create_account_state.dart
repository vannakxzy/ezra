part of 'create_account_bloc.dart';

@freezed
class CreateAccountState extends BaseState with _$CreateAccountState {
  const factory CreateAccountState({
    @Default('') String email,
    @Default(false) bool isloading,
    @Default(false) bool validateButton,
    @Default(false) bool emailTaken,
  }) = _Initial;
}
