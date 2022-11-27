import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'const.dart';
import 'generated/locale/l10n.dart';
import 'src/di/injector_widget.dart';
import 'src/presenter/theme/theme_app.dart';
import 'src/routing/routes.gr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.blueAccent),
  );
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return InjectorWidget(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Youtube Player Flutter',
        theme: ThemeApp.data,
        builder: (context, rootWidget) {
          return rootWidget ??
              const Center(
                child: CircularProgressIndicator(),
              );
        },
        onGenerateTitle: _onGenerateTitle,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate(
          navigatorObservers: () => [AutoRouteObserver()],
        ),
      ),
    );
  }

  String _onGenerateTitle(BuildContext context) {
    try {
      return S.of(context).appName;
    } catch (e) {
      return Const.appName;
    }
  }
}
