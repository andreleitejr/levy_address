import 'package:levy_shared_entities/entities.dart';

abstract class AddressRepository {
  Future<List<AddressEntity>> get();
}
