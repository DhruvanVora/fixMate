import 'package:auto_route/auto_route.dart';
import 'package:fixmate/features/auth/view/login_page.dart';
import 'package:fixmate/features/home/view/home_page.dart';
import 'package:fixmate/features/splash/view/splash_page.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@LazySingleton()
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
  ];
}
