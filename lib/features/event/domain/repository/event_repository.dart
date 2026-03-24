import '../entities/event_respose_entity.dart';

abstract class EventRepository {
  Future<EventResposeEntity> getEvents(int page);
}
