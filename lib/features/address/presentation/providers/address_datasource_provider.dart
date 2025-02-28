import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_address/address.dart';

final addressDataSourceProvider = Provider<AddressDataSource>((ref) {
  return AddressDataSourceMock();
});
