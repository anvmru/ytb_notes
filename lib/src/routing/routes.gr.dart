// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../domain/blocs/edit_bloc.dart' as _i10;
import '../domain/blocs/player_block.dart' as _i9;
import '../presenter/screens/edit_screen.dart' as _i4;
import '../presenter/screens/find_screen.dart' as _i3;
import '../presenter/screens/home_screen.dart' as _i2;
import '../presenter/screens/setting_screen.dart' as _i5;
import '../presenter/screens/tracks_screen.dart' as _i6;
import '../presenter/widgets/blank_wrapper.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BlankWrapper(),
      );
    },
    TabsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    TrackRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BlankWrapper(),
      );
    },
    FindRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.FindScreen(),
      );
    },
    EditRoute.name: (routeData) {
      final args = routeData.argsAs<EditRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.EditScreen(
          key: args.key,
          blocPlay: args.blocPlay,
          blocEdit: args.blocEdit,
        ),
      );
    },
    SettingRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.SettingScreen(),
      );
    },
    TrackRoot.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.TrackScreen(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              TabsRoute.name,
              path: '',
              parent: HomeRoute.name,
              children: [
                _i7.RouteConfig(
                  TrackRoute.name,
                  path: 'blank-wrapper',
                  parent: TabsRoute.name,
                  children: [
                    _i7.RouteConfig(
                      TrackRoot.name,
                      path: '',
                      parent: TrackRoute.name,
                    )
                  ],
                ),
                _i7.RouteConfig(
                  FindRoute.name,
                  path: 'find-screen',
                  parent: TabsRoute.name,
                ),
                _i7.RouteConfig(
                  EditRoute.name,
                  path: 'edit-screen',
                  parent: TabsRoute.name,
                ),
                _i7.RouteConfig(
                  SettingRoute.name,
                  path: 'setting-screen',
                  parent: TabsRoute.name,
                ),
              ],
            )
          ],
        )
      ];
}

/// generated route for
/// [_i1.BlankWrapper]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class TabsRoute extends _i7.PageRouteInfo<void> {
  const TabsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TabsRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'TabsRoute';
}

/// generated route for
/// [_i1.BlankWrapper]
class TrackRoute extends _i7.PageRouteInfo<void> {
  const TrackRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TrackRoute.name,
          path: 'blank-wrapper',
          initialChildren: children,
        );

  static const String name = 'TrackRoute';
}

/// generated route for
/// [_i3.FindScreen]
class FindRoute extends _i7.PageRouteInfo<void> {
  const FindRoute()
      : super(
          FindRoute.name,
          path: 'find-screen',
        );

  static const String name = 'FindRoute';
}

/// generated route for
/// [_i4.EditScreen]
class EditRoute extends _i7.PageRouteInfo<EditRouteArgs> {
  EditRoute({
    _i8.Key? key,
    required _i9.MyPlayerBloc blocPlay,
    required _i10.EditBloc blocEdit,
  }) : super(
          EditRoute.name,
          path: 'edit-screen',
          args: EditRouteArgs(
            key: key,
            blocPlay: blocPlay,
            blocEdit: blocEdit,
          ),
        );

  static const String name = 'EditRoute';
}

class EditRouteArgs {
  const EditRouteArgs({
    this.key,
    required this.blocPlay,
    required this.blocEdit,
  });

  final _i8.Key? key;

  final _i9.MyPlayerBloc blocPlay;

  final _i10.EditBloc blocEdit;

  @override
  String toString() {
    return 'EditRouteArgs{key: $key, blocPlay: $blocPlay, blocEdit: $blocEdit}';
  }
}

/// generated route for
/// [_i5.SettingScreen]
class SettingRoute extends _i7.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: 'setting-screen',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i6.TrackScreen]
class TrackRoot extends _i7.PageRouteInfo<void> {
  const TrackRoot()
      : super(
          TrackRoot.name,
          path: '',
        );

  static const String name = 'TrackRoot';
}
