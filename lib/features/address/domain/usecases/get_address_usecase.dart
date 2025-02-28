import 'package:levy_address/address.dart';

abstract class GetAddressUseCase {
  Future<List<AddressEntity>> call();
}
