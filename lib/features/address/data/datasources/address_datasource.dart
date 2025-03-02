import 'package:levy_shared_entities/entities.dart';

abstract class AddressDataSource {
  Future<List<AddressModel>> get();
}
