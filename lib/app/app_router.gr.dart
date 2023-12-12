// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:penny_path/intro/intro_view.dart' as _i1;
import 'package:penny_path/menu/menu_view.dart.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    IntroView.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.IntroView(),
      );
    },
    MenuView.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MenuView(),
      );
    },
  };
}

/// generated route for
/// [_i1.IntroView]
class IntroView extends _i3.PageRouteInfo<void> {
  const IntroView({List<_i3.PageRouteInfo>? children})
      : super(
          IntroView.name,
          initialChildren: children,
        );

  static const String name = 'IntroView';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MenuView]
class MenuView extends _i3.PageRouteInfo<void> {
  const MenuView({List<_i3.PageRouteInfo>? children})
      : super(
          MenuView.name,
          initialChildren: children,
        );

  static const String name = 'MenuView';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
