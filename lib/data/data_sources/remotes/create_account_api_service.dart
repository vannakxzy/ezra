import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../app/base/response/base_data_response.dart';
import '../../../core/constants/api_constants.dart';
import '../../../core/constants/constants.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/create-account/avatar_model.dart';
import '../../models/create-account/create_account_model.dart';
import '../../models/subject_model.dart';

part 'create_account_api_service.g.dart';

@LazySingleton()
@RestApi()
abstract class CreateAccountApiService {
  @FactoryMethod()
  factory CreateAccountApiService(Dio dio) = _CreateAccountApiService;
  @POST(ApiEndpoints.register)
  Future<CreateAccountModel> createAccount(
    @Body() CreateAccountInput createAccountInput,
  );
  @GET(ApiEndpoints.getAllSubject)
  Future<DataResponse<List<SubjectModel>>> getAllSubject();
  @POST(ApiEndpoints.updateUserSubject)
  Future<void> updateUserSubject(@Body() Map<String, List<int>> subject);
  @GET(ApiEndpoints.getAvatar)
  Future<DataResponse<List<AvatarModel>>> getAvatar();
  @PUT(ApiEndpoints.updatePersonalInfo)
  Future<void> updateAvatar({@Query('profile') required String profile});
}

@JsonSerializable(createToJson: true)
class CreateAccountInput {
  final String name;
  final String password;
  final String email;
  final String device_token;
  final String manufacturer;
  final String model;
  final String otp;
  CreateAccountInput(
      {required this.email,
      required this.name,
      required this.device_token,
      required this.password,
      required this.manufacturer,
      required this.model,
      required this.otp});
  Map<String, dynamic> toJson() => _$CreateAccountInputToJson(this);
}
