import 'package:ccaguaviva/src/screens/home_screen.dart';
import 'package:ccaguaviva/src/screens/web_view_screen.dart';
import 'package:ccaguaviva/src/themes/dark_theme.dart';
import 'package:ccaguaviva/src/themes/light_theme.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'settings/settings_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        FirebaseAnalytics.instance.logEvent(
          name: 'is_web_mode',
          parameters: <String, dynamic>{
            'is_web_mode': settingsController.isWebMode.toString(),
          },
        );
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
          ],
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          theme: LightTheme().get(),
          darkTheme: DarkTheme().get(),
          themeMode: settingsController.themeMode,
          home: settingsController.isWebMode
              ? const WebViewScreen(
                  url: 'https://www.aulavirtual.ccaguaviva.website/',
                )
              : HomeScreen(
                  controller: settingsController,
                ),
        );
      },
    );
  }
}
