import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../generated/locale/l10n.dart';
import '../../routing/routes.gr.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: AutoTabsScaffold(
          animationDuration: const Duration(microseconds: 0),
          lazyLoad: false,
          routes: const [
            EditRoute(),
            TrackRoute(),
            FindRoute(),
            SettingRoute(),
          ],
          extendBody: true,
          builder: (context, child, animation) {
            return Column(
              children: [
                Expanded(child: child),
                _BottomNavBar(tabsRouter: AutoTabsRouter.of(context)),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({required this.tabsRouter});
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return BottomNavBar(
      barItem: [
        BottomBarItem(
          title: S.of(context).editTitle,
          onTap: () => tabsRouter.setActiveIndex(0),
          icon: Icons.edit_note_outlined,
          iconActive: Icons.edit_note_rounded,
          isActive: tabsRouter.activeIndex == 0,
        ),
        BottomBarItem(
          title: S.of(context).trackTitle,
          onTap: () => tabsRouter.setActiveIndex(1),
          icon: Icons.movie_outlined,
          iconActive: Icons.movie_rounded,
          isActive: tabsRouter.activeIndex == 1,
        ),
        BottomBarItem(
          title: S.of(context).findTitle,
          onTap: () => tabsRouter.setActiveIndex(2),
          icon: Icons.find_in_page_outlined,
          iconActive: Icons.find_in_page_rounded,
          isActive: tabsRouter.activeIndex == 2,
        ),
        BottomBarItem(
          title: S.of(context).settingTitle,
          onTap: () => tabsRouter.setActiveIndex(3),
          icon: Icons.settings,
          iconActive: Icons.settings_rounded,
          isActive: tabsRouter.activeIndex == 3,
        ),
      ],
    );
  }
}
