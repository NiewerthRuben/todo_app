// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Localize {
  Localize();

  static Localize? _current;

  static Localize get current {
    assert(
      _current != null,
      'No instance of Localize was loaded. Try to initialize the Localize delegate before accessing Localize.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Localize> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Localize();
      Localize._current = instance;

      return instance;
    });
  }

  static Localize of(BuildContext context) {
    final instance = Localize.maybeOf(context);
    assert(
      instance != null,
      'No instance of Localize present in the widget tree. Did you add Localize.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static Localize? maybeOf(BuildContext context) {
    return Localizations.of<Localize>(context, Localize);
  }

  /// `My ToDo List`
  String get appTitle {
    return Intl.message('My ToDo List', name: 'appTitle', desc: '', args: []);
  }

  /// `Add ToDo`
  String get addTodoButton {
    return Intl.message('Add ToDo', name: 'addTodoButton', desc: '', args: []);
  }

  /// `Add New ToDo`
  String get newTodoTitle {
    return Intl.message(
      'Add New ToDo',
      name: 'newTodoTitle',
      desc: '',
      args: [],
    );
  }

  /// `ToDo Title`
  String get hintTodoTitle {
    return Intl.message(
      'ToDo Title',
      name: 'hintTodoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get buttonCancel {
    return Intl.message('Cancel', name: 'buttonCancel', desc: '', args: []);
  }

  /// `Add`
  String get buttonAdd {
    return Intl.message('Add', name: 'buttonAdd', desc: '', args: []);
  }

  /// `Add your first task!`
  String get emptyListMessage {
    return Intl.message(
      'Add your first task!',
      name: 'emptyListMessage',
      desc: '',
      args: [],
    );
  }

  /// `Starting App...`
  String get startingAppText {
    return Intl.message(
      'Starting App...',
      name: 'startingAppText',
      desc: '',
      args: [],
    );
  }

  /// `An Error Occured: `
  String get anErrorOccured {
    return Intl.message(
      'An Error Occured: ',
      name: 'anErrorOccured',
      desc: '',
      args: [],
    );
  }

  /// `Display of the last known data.`
  String get showLastData {
    return Intl.message(
      'Display of the last known data.',
      name: 'showLastData',
      desc: '',
      args: [],
    );
  }

  /// `unknown state`
  String get unknownState {
    return Intl.message(
      'unknown state',
      name: 'unknownState',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Localize> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Localize> load(Locale locale) => Localize.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
