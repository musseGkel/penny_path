import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: IntroView.page,
        ),
        AutoRoute(
          page: MenuView.page,
        ),
        AutoRoute(
          page: SettingView.page,
        ),
        AutoRoute(
          page: AboutView.page,
        ),
        AutoRoute(
          page: ReportView.page,
          initial: true,
        )
      ];
}
