import 'package:auto_route/auto_route.dart';
import 'package:levy_address/address.dart';
import 'package:levy_core/core/router/router.dart';

final class AddressRouter implements MicroAppRouter {
  @override
  String get name => "address";

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AddressRoute.page),
  ];
}
