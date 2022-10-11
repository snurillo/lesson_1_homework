import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson1/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      
    )
      body: Center(
        child: Text(
          AppLocalizations.of(context).welcome,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'first',
            onPressed: () {
              currentLocale!.setLocale(const Locale('en'));
            },
            child: const Text('EN'),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            heroTag: 'second',
            onPressed: () {
              currentLocale!.setLocale(const Locale('es'));
            },
            child: const Text('ES'),
          ),
        ],
      ),
    );
  }
}
