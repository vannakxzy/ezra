part of 'create_event_bloc.dart';

@freezed
class CreateEventState with _$CreateEventState {
  const factory CreateEventState({
    @Default('') String title,
    @Default('') String des,
    File? cover,
    @Default('') String location,
    @Default(false) bool enableButton,
  }) = _Initial;
}
