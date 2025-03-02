import 'package:injectable/injectable.dart';
import 'package:levy_address/address.dart';
import 'package:levy_shared_entities/entities.dart';

@Injectable(as: GetAddressUseCase)
final class GetAddressUseCaseImpl implements GetAddressUseCase {
  const GetAddressUseCaseImpl(this._repository);

  final AddressRepository _repository;

  @override
  Future<List<AddressEntity>> call() async {
    return _repository.get();
  }
}
