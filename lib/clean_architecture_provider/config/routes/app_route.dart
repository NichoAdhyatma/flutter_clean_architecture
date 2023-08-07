import 'package:auto_route/auto_route.dart';
import 'package:flutter_clean_architecture/clean_architecture_provider/config/routes/app_route.gr.dart';
import 'package:flutter_clean_architecture/clean_architecture_provider/presentation/pages/home/view.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {

  List<AutoRoute> get routes => [
    AutoRoute( page: HomeRoute.page, initial: true),
  ];
}

class $AppRouter {}