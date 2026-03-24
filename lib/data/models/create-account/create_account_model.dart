// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../features/create_account/domain/entities/create_account_entity.dart';
part 'create_account_model.g.dart';

@JsonSerializable(createToJson: true)
class CreateAccountModel extends CreateAccountEntity {
  CreateAccountModel(
      {required super.access_token,
      required super.expires_at,
      required super.token_type});
  factory CreateAccountModel.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountModelFromJson(json);
}
