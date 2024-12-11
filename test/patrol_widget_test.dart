// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol_finders/patrol_finders.dart';

import 'package:patrol_practice/main.dart';

void main() {
  patrolWidgetTest('Counter increments smoke test(patrol_finders)',
      (PatrolTester $) async {
    // Build our app and trigger a frame.
    await $.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect($('0'), findsOneWidget);
    expect($('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await $.tap($(Icons.add));
    await $.pump();

    // Verify that our counter has incremented.
    expect($('0'), findsNothing);
    expect($('1'), findsOneWidget);
  });
}
