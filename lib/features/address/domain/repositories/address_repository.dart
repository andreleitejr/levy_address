import 'package:levy_address/address.dart';

abstract class AddressRepository {
  Future<List<AddressEntity>> get();
}
