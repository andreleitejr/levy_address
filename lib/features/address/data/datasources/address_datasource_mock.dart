import 'package:injectable/injectable.dart';
import 'package:levy_address/address.dart';
import 'package:levy_core/core.dart';

@Injectable(as: AddressDataSource, env: [InjectEnv.mock])
final class AddressDataSourceMock implements AddressDataSource {

  @override
  Future<List<AddressModel>> get() async {
    await Future.delayed(const Duration(milliseconds: 600));

    return AddressMock.response.map<AddressModel>((address) {
      return AddressModel.fromJson(address);
    }).toList();
  }
}
