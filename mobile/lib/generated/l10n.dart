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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `New Diary`
  String get new_diary {
    return Intl.message(
      'New Diary',
      name: 'new_diary',
      desc: '',
      args: [],
    );
  }

  /// `zell`
  String get z {
    return Intl.message(
      'zell',
      name: 'z',
      desc: '',
      args: [],
    );
  }

  /// `20041075 | TAP-NS TAP-North Strathfield`
  String get location {
    return Intl.message(
      '20041075 | TAP-NS TAP-North Strathfield',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Add to site diary`
  String get add_site_to_diary {
    return Intl.message(
      'Add to site diary',
      name: 'add_site_to_diary',
      desc: '',
      args: [],
    );
  }

  /// `Add Photos to site diary`
  String get ass_photo_to_site_diary {
    return Intl.message(
      'Add Photos to site diary',
      name: 'ass_photo_to_site_diary',
      desc: '',
      args: [],
    );
  }

  /// `Add a photo`
  String get add_photo {
    return Intl.message(
      'Add a photo',
      name: 'add_photo',
      desc: '',
      args: [],
    );
  }

  /// `Include in photo gallery`
  String get include_in_photo_gallery {
    return Intl.message(
      'Include in photo gallery',
      name: 'include_in_photo_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get comments {
    return Intl.message(
      'Comments',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Select Area`
  String get select_area {
    return Intl.message(
      'Select Area',
      name: 'select_area',
      desc: '',
      args: [],
    );
  }

  /// `Task Category`
  String get task_category {
    return Intl.message(
      'Task Category',
      name: 'task_category',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get tags {
    return Intl.message(
      'Tags',
      name: 'tags',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
