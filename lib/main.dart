import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:happ/routes.dart';
import 'dart:ui' as ui;

Future main() async {
  await DotEnv().load('.env');

  runApp(EasyLocalization(child: MyApp()));
}

/*
* You can change the language of the app using :
  this.setState(() {
    data.changeLocale(Locale("en","US"));
    print(Localizations.localeOf(context).languageCode);
  });
*
* */
class MyApp extends StatelessWidget {
  final String _initialRoute = '/';

  static const list = [
    Locale('en', 'US'),
    Locale('fr', 'FR'),
    ];

  @override
  Widget build(BuildContext context) {
    final data = EasyLocalizationProvider.of(context).data;
    Locale locale = MyApp.list.indexOf(ui.window.locale) != -1
        ? ui.window.locale
        : Locale('en', 'US');

    return EasyLocalizationProvider(
      data: data,
      child: MaterialApp(
        title: 'SysTranca',
        initialRoute: _initialRoute,
        routes: routes,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          //app-specific localization
          EasylocaLizationDelegate(locale: locale, path: 'assets/langs'),
        ],
        supportedLocales: MyApp.list,
        locale: data.savedLocale == null ? locale : data.savedLocale,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}