import 'package:flutter/material.dart';

class LocaleControlSrc extends ValueNotifier<Locale> {
  LocaleControlSrc(super.value);
  void setLocale(Locale? locale) {
    value = locale!;
  }
}
