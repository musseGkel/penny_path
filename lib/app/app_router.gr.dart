// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:penny_path/budget/budget_view.dart' as _i2;
import 'package:penny_path/dashboard/dashboard_view.dart' as _i3;
import 'package:penny_path/intro/intro_view.dart' as _i4;
import 'package:penny_path/menu/menu_view.dart.dart' as _i5;
import 'package:penny_path/report/report_view.dart' as _i6;
import 'package:penny_path/setting/about_view.dart' as _i1;
import 'package:penny_path/setting/setting_view.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AboutView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutView(),
      );
    },
    BudgetView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BudgetView(),
      );
    },
    DashboardView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardView(),
      );
    },
    IntroView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.IntroView(),
      );
    },
    MenuView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MenuView(),
      );
    },
    ReportView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ReportView(),
      );
    },
    SettingView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SettingView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutView]
class AboutView extends _i8.PageRouteInfo<void> {
  const AboutView({List<_i8.PageRouteInfo>? children})
      : super(
          AboutView.name,
          initialChildren: children,
        );

  static const String name = 'AboutView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BudgetView]
class BudgetView extends _i8.PageRouteInfo<void> {
  const BudgetView({List<_i8.PageRouteInfo>? children})
      : super(
          BudgetView.name,
          initialChildren: children,
        );

  static const String name = 'BudgetView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashboardView]
class DashboardView extends _i8.PageRouteInfo<void> {
  const DashboardView({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardView.name,
          initialChildren: children,
        );

  static const String name = 'DashboardView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.IntroView]
class IntroView extends _i8.PageRouteInfo<void> {
  const IntroView({List<_i8.PageRouteInfo>? children})
      : super(
          IntroView.name,
          initialChildren: children,
        );

  static const String name = 'IntroView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MenuView]
class MenuView extends _i8.PageRouteInfo<void> {
  const MenuView({List<_i8.PageRouteInfo>? children})
      : super(
          MenuView.name,
          initialChildren: children,
        );

  static const String name = 'MenuView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ReportView]
class ReportView extends _i8.PageRouteInfo<void> {
  const ReportView({List<_i8.PageRouteInfo>? children})
      : super(
          ReportView.name,
          initialChildren: children,
        );

  static const String name = 'ReportView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingView]
class SettingView extends _i8.PageRouteInfo<void> {
  const SettingView({List<_i8.PageRouteInfo>? children})
      : super(
          SettingView.name,
          initialChildren: children,
        );

  static const String name = 'SettingView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
