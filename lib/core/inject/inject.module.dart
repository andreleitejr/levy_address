//@GeneratedMicroModule;LevyAddressPackageModule;package:levy_address/core/inject/inject.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:levy_address/address.dart' as _i938;
import 'package:levy_address/features/address/data/datasources/address_datasource_impl.dart'
    as _i737;
import 'package:levy_address/features/address/data/datasources/address_datasource_mock.dart'
    as _i871;
import 'package:levy_address/features/address/data/repositories/address_repository_impl.dart'
    as _i820;
import 'package:levy_address/features/address/domain/usecases/get_address_usecase_impl.dart'
    as _i94;

const String _impl = 'impl';
const String _mock = 'mock';

class LevyAddressPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i938.AddressDataSource>(
      () => _i737.AddressDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i938.AddressDataSource>(
      () => _i871.AddressDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i938.AddressRepository>(
        () => _i820.AddressRepositoryImpl(gh<_i938.AddressDataSource>()));
    gh.factory<_i938.GetAddressUseCase>(
        () => _i94.GetAddressUseCaseImpl(gh<_i938.AddressRepository>()));
  }
}
