part of 'create_account_bloc.dart';

abstract class CreateAccountEvent extends BaseEvent {}

@freezed
class EmailChangedEvent extends CreateAccountEvent with _$EmailChangedEvent {
  factory EmailChangedEvent(String value) = _EmailChangedEvent;
}

@freezed
class PassworkChangedEvent extends CreateAccountEvent
    with _$PassworkChangedEvent {
  factory PassworkChangedEvent(String value) = _PassworkChangedEvent;
}

@freezed
class NameChangedEvent extends CreateAccountEvent with _$NameChangedEvent {
  factory NameChangedEvent(String value) = _NameChangedEvent;
}

@freezed
class ClickCreateEventAccountEvent extends CreateAccountEvent
    with _$ClickCreateEventAccountEvent {
  factory ClickCreateEventAccountEvent() = _ClickCreateEventAccountEvent;
}
