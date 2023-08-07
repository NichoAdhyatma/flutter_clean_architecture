import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'clean_architecture_getx/infrastructure/navigation/navigation.dart';
import 'clean_architecture_getx/infrastructure/navigation/routes.dart';
import 'clean_architecture_provider/config/routes/app_route.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: Nav.routes,
    );
  }
}
