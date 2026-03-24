// ignore_for_file: non_constant_identifier_names

abstract class CreateAccountEntity {
  final String access_token;
  final String token_type;
  final int expires_at;
  CreateAccountEntity(
      {required this.access_token,
      required this.expires_at,
      required this.token_type});
}
