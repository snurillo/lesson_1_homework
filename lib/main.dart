import 'package:flutter/material.dart';
import 'package:lesson1/src/utils.dart';
import 'home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

LocaleControlSrc? currentLocale = LocaleControlSrc(Locale('en'));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
        valueListenable: currentLocale!,
        builder: ((context, currentLocaleValue, _) {
          return MaterialApp(
              locale: currentLocaleValue,
              theme: ThemeData(
                  primaryColor: Colors.blue, primarySwatch: Colors.blue),
              routes: {
                // AccaountPage.routeName: (context) => AccaountPage(),
                '/home': (context) => Page1(),
              },
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              home: Page1());
        }));
  }
}
