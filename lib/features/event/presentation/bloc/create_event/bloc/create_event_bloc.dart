import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../app/base/bloc/base_event.dart';

part 'create_event_event.dart';
part 'create_event_state.dart';
part 'create_event_bloc.freezed.dart';

class CreateEventBloc extends Bloc<CreateEventEvent, CreateEventState> {
  CreateEventBloc() : super(_Initial()) {
    on<CreateEventEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  FutureOr<void> _initPage(InitPage event, Emitter<CreateEventState> emit) {}
  FutureOr<void> _desChange(DesChange event, Emitter<CreateEventState> emit) {
    emit(state.copyWith(des: event.value));
    _validarButton();
  }

  void _validarButton() {
    if (state.des.isNotEmpty && state.title.isNotEmpty) {}
  }
}
