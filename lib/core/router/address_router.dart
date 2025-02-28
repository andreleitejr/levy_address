import 'package:auto_route/auto_route.dart';
import 'package:levy_address/core/router/address_router.gr.dart';

@AutoRouterConfig()
final class AddressRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AddressRoute.page),
  ];
}
