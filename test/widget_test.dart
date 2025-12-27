import 'package:flutter/material.dart';
import 'package:flutter_learn/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Hello World", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(Container), findsOneWidget);
    expect(find.text("Hello World"), findsOneWidget);
    expect(find.byType(Center), findsOneWidget);
  });
}
