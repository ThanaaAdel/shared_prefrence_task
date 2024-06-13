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

  /// `Live Exam`
  String get live_exam {
    return Intl.message(
      'Live Exam',
      name: 'live_exam',
      desc: '',
      args: [],
    );
  }

  /// `We have a live exam that will start at 10 pm `
  String get text_from_live_exam {
    return Intl.message(
      'We have a live exam that will start at 10 pm ',
      name: 'text_from_live_exam',
      desc: '',
      args: [],
    );
  }

  /// `Student Name`
  String get student_name {
    return Intl.message(
      'Student Name',
      name: 'student_name',
      desc: '',
      args: [],
    );
  }

  /// `Student Class`
  String get student_class {
    return Intl.message(
      'Student Class',
      name: 'student_class',
      desc: '',
      args: [],
    );
  }

  /// `First Term`
  String get Student_Term {
    return Intl.message(
      'First Term',
      name: 'Student_Term',
      desc: '',
      args: [],
    );
  }

  /// `Introductory videos`
  String get introductory_videos {
    return Intl.message(
      'Introductory videos',
      name: 'introductory_videos',
      desc: '',
      args: [],
    );
  }

  /// `Start studying`
  String get start_studying {
    return Intl.message(
      'Start studying',
      name: 'start_studying',
      desc: '',
      args: [],
    );
  }

  /// `Select the class`
  String get select_the_class {
    return Intl.message(
      'Select the class',
      name: 'select_the_class',
      desc: '',
      args: [],
    );
  }

  /// `final review`
  String get final_review {
    return Intl.message(
      'final review',
      name: 'final_review',
      desc: '',
      args: [],
    );
  }

  /// `Start the journey`
  String get start_the_journey {
    return Intl.message(
      'Start the journey',
      name: 'start_the_journey',
      desc: '',
      args: [],
    );
  }

  /// `Explanation of the curriculum`
  String get explanation_of_the_curriculum {
    return Intl.message(
      'Explanation of the curriculum',
      name: 'explanation_of_the_curriculum',
      desc: '',
      args: [],
    );
  }

  /// `Class exams`
  String get class_exams {
    return Intl.message(
      'Class exams',
      name: 'class_exams',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
