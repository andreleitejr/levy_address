import 'package:levy_shared_entities/entities.dart';

abstract class GetAddressUseCase {
  Future<List<AddressEntity>> call();
}
