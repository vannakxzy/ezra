part of 'create_event_bloc.dart';

class CreateEventEvent extends BaseEvent {}

@freezed
class InitPage extends CreateEventEvent with _$InitPage {
  const factory InitPage() = _InitPage;
}

@freezed
class TitleChange extends CreateEventEvent with _$TitleChange {
  const factory TitleChange(String value) = _TitleChange;
}

@freezed
class DesChange extends CreateEventEvent with _$DesChange {
  const factory DesChange(String value) = _DesChange;
}

@freezed
class CoverChange extends CreateEventEvent with _$CoverChange {
  const factory CoverChange() = _CoverChange;
}

@freezed
class ClickDropLocation extends CreateEventEvent with _$ClickDropLocation {
  const factory ClickDropLocation() = _ClickDropLocation;
}

@freezed
class LocationChange extends CreateEventEvent with _$LocationChange {
  const factory LocationChange(String value) = _LocationChange;
}

@freezed
class ClickCreateButton extends CreateEventEvent with _$ClickCreateButton {
  const factory ClickCreateButton() = _ClickCreateButton;
}
