import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../config.dart';
import '../../presentation/auth/login/auth_login.screen.dart';
import '../../presentation/auth/register/auth_register.screen.dart';
import '../../presentation/home/home.screen.dart';
import 'bindings/controllers/auth_login.controller.binding.dart';
import 'bindings/controllers/auth_register.controller.binding.dart';
import 'bindings/controllers/home.controller.binding.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.AUTH_LOGIN,
      page: () => const AuthLoginScreen(),
      binding: AuthLoginControllerBinding(),
    ),
    GetPage(
      name: Routes.AUTH_REGISTER,
      page: () => const AuthRegisterScreen(),
      binding: AuthRegisterControllerBinding(),
    ),
  ];
}
