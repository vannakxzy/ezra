import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../personal_info/domain/usecase/check_email_usecase.dart';

import '../../../../../app/base/bloc/bloc.dart';
import '../../../../config/router/page_route/app_route_info.dart';

part 'create_account_bloc.freezed.dart';
part 'create_account_event.dart';
part 'create_account_state.dart';

@Injectable()
class CreateAccountBloc
    extends BaseBloc<CreateAccountEvent, CreateAccountState> {
  CreateAccountBloc(this._checkEmailUseCase) : super(const _Initial()) {
    on<NameChangedEvent>(_onChnageName);
    on<PassworkChangedEvent>(_onPasswordChanged);
    on<ClickCreateEventAccountEvent>(_onClickCreateEventAccountEvent);
    on<EmailChangedEvent>(_onEmailChangedEvent);
  }
  final CheckEmailUseCase _checkEmailUseCase;

  void validateButton(Emitter<CreateAccountState> emit) {
    emit(state.copyWith(validateButton: state.email.isEmail));
  }

  FutureOr<void> _onClickCreateEventAccountEvent(
    ClickCreateEventAccountEvent event,
    Emitter<CreateAccountState> emit,
  ) async {
    await runAppCatching(
      handleError: true,
      () async {
        if (state.email.isEmpty) return;
        emit(state.copyWith(isloading: true));
        final value = await _checkEmailUseCase.excecute(state.email);
        emit(state.copyWith(isloading: false));
        if (value != 0) {
          emit(state.copyWith(emailTaken: true, validateButton: false));
          return;
        }
        appRoute.push(AppRouteInfo.verifyEmailCreateAccount(
          email: state.email,
          name: 'state.name',
          password: 'state.password',
        ));
      },
      onError: (v) async {
        emit(state.copyWith(isloading: false));
      },
    );
  }

  FutureOr<void> _onEmailChangedEvent(
      EmailChangedEvent event, Emitter<CreateAccountState> emit) async {
    emit(state.copyWith(email: event.value, emailTaken: false));
    validateButton(emit);
  }

  FutureOr<void> _onPasswordChanged(
      PassworkChangedEvent event, Emitter<CreateAccountState> emit) async {
    // emit(state.copyWith(password: event.value));
    // validateButton(emit);
  }

  FutureOr<void> _onChnageName(
      NameChangedEvent event, Emitter<CreateAccountState> emit) async {
    // emit(state.copyWith(name: event.value));
    // validateButton(emit);
  }
}
