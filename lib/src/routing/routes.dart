import 'package:auto_route/annotations.dart';

import '../presenter/screens/edit_screen.dart';
import '../presenter/screens/find_screen.dart';
import '../presenter/screens/home_screen.dart';
import '../presenter/screens/setting_screen.dart';
import '../presenter/screens/tracks_screen.dart';
import '../presenter/widgets/blank_wrapper.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
        name: "HomeRoute",
        page: BlankWrapper,
        //guards: [AuthorizedOnlyGuard, RegisteredOnlyGuard],
        initial: true,
        children: [
          AutoRoute(
            name: "TabsRoute",
            page: HomeScreen,
            initial: true,
            children: [
              AutoRoute(name: "TrackRoute", page: BlankWrapper, children: [
                AutoRoute(
                  name: "TrackRoot",
                  page: TrackScreen,
                  initial: true,
                ),
              ]),
              AutoRoute(page: FindScreen),
              AutoRoute(page: EditScreen),
              AutoRoute(page: SettingScreen),
            ],
          ),
        ]),
    // AutoRoute(
    //   guards: [BoardingGuard],
    //   page: ScreenRegistration,
    // ),
  ],
  replaceInRouteName: 'Screen,Route',
)
class $AppRouter {}
