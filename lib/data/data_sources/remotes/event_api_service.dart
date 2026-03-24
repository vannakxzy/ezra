import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/constants/constants.dart';
import '../../models/event/event_respose_model.dart';

part 'event_api_service.g.dart';

@LazySingleton()
@RestApi()
abstract class EventApiService {
  @FactoryMethod()
  factory EventApiService(Dio dio) = _EventApiService;
  @GET(ApiEndpoints.events)
  Future<EventResposeModel> getEvents(@Query("page") int page);
}
