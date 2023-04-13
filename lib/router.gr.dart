// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:deeplink_tutorial/main.dart' as _i1;
import 'package:flutter/material.dart' as _i3;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    CatFactsRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CatFactsPage(),
      );
    },
    SingleFactRoute.name: (routeData) {
      final args = routeData.argsAs<SingleFactRouteArgs>();
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.SingleFactPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.CatFactsPage]
class CatFactsRoute extends _i2.PageRouteInfo<void> {
  const CatFactsRoute({List<_i2.PageRouteInfo>? children})
      : super(
          CatFactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatFactsRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.SingleFactPage]
class SingleFactRoute extends _i2.PageRouteInfo<SingleFactRouteArgs> {
  SingleFactRoute({
    _i3.Key? key,
    required String id,
    List<_i2.PageRouteInfo>? children,
  }) : super(
          SingleFactRoute.name,
          args: SingleFactRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'SingleFactRoute';

  static const _i2.PageInfo<SingleFactRouteArgs> page =
      _i2.PageInfo<SingleFactRouteArgs>(name);
}

class SingleFactRouteArgs {
  const SingleFactRouteArgs({
    this.key,
    required this.id,
  });

  final _i3.Key? key;

  final String id;

  @override
  String toString() {
    return 'SingleFactRouteArgs{key: $key, id: $id}';
  }
}
