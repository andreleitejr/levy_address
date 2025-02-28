import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_address/address.dart';

final addressNotifierProvider = StateNotifierProvider<AddressNotifier, AddressState>((ref) {
  return AddressNotifier(ref.read(addressUseCaseProvider));
});
