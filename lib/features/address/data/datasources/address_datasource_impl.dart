import 'package:levy_address/address.dart';
import 'package:levy_core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:levy_shared_entities/entities.dart';


@Injectable(as: AddressDataSource, env: [InjectEnv.impl])
final class AddressDataSourceImpl implements AddressDataSource {
  @override
  Future<List<AddressModel>> get() async {
    return [];
  }
}
