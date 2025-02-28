import 'package:levy_address/address.dart';

abstract class AddressDataSource {
  Future<List<AddressModel>> get();
}
