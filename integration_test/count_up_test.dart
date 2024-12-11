import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_practice/main.dart';

void main() {
  patrolTest('demo',
      framePolicy: LiveTestWidgetsFlutterBindingFramePolicy.fullyLive,
      config: const PatrolTesterConfig(
        printLogs: true,
      ), ($) async {
    await $.pumpWidgetAndSettle(const MyApp());

    expect($('Flutter Demo Home Page'), findsOneWidget);

    expect($('0'), findsOneWidget);

    final button = $(FloatingActionButton);

    expect(button, findsOneWidget);

    await button.tap();

    await $('1').waitUntilVisible();

    expect($('1'), findsOneWidget);

    await button.tap();
    await $('2').waitUntilVisible();

    expect($('2'), findsOneWidget);
  });
}
