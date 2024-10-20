import 'package:app_increment/firstScreen.dart';
import 'package:app_increment/main.dart';
import 'package:app_increment/secondScreen.dart';
import 'package:app_increment/thirdScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // tearDown(() async {
  //   try {
  //     // Countdown loop for 60 seconds
  //     for (int i = 1; i <= 5; i++) {
  //       await Future.delayed(const Duration(seconds: 1));
  //       print('Elapsed seconds: $i'); // Prints each second
  //     }
  //
  //   } catch (e) {
  //   }
  // });

  group('end-to-end test', () {
    // Test Case 1: Verify Counter Increments
    // testWidgets('tap on the floating action button, verify counter', (tester) async {
    //   // Load app widget.
    //   await tester.pumpWidget(const MyApp());
    //
    //   // Verify the counter starts at 0.
    //   expect(find.text('0'), findsOneWidget);
    //
    //   // Finds the floating action button to tap on.
    //   // final fab = find.byKey(const ValueKey('increment'));
    //   final fab = find.byType(FloatingActionButton);
    //   // Emulate a tap on the floating action button.
    //   for (int i = 0; i < 10; i++) {
    //     await tester.tap(fab);
    //     await tester.pumpAndSettle(); // Wait for animations or updates
    //   }
    //
    //   // Verify the counter increments by 1.
    //   expect(find.text('10'), findsOneWidget);
    //
    //   // Find the TextFormField and enter text.
    //   // final textField = find.byType(TextFormField);
    //   final textField = find.byKey(const ValueKey("EnterField"));
    //   expect(textField, findsOneWidget); // Verify the TextFormField is present
    //
    //   // Enter some text into the TextFormField.
    //   await tester.enterText(textField, 'Hello, Flutter!');
    //   await tester.pumpAndSettle(); // Wait for any updates
    //
    //   // Verify the text in the TextFormField.
    //   expect(find.text('Hello, Flutter!'), findsOneWidget);
    //
    //   // Trigger a frame.
    //   await tester.pumpAndSettle();
    //
    //   // Keep the app running indefinitely
    //   // await Future.delayed(Duration(hours: 1));
    // });
    //
    // testWidgets('tap on the floating action button, verify counter', (tester) async {
    //   await Future.delayed(Duration(seconds: 5));
    //   // Load app widget.
    //   await tester.pumpWidget(const MyApp());
    //
    //   // Verify the counter starts at 0.
    //   expect(find.text('0'), findsOneWidget);
    //
    //   // Finds the floating action button to tap on.
    //   // final fab = find.byKey(const ValueKey('increment'));
    //   final fab = find.byType(FloatingActionButton);
    //   // Emulate a tap on the floating action button.
    //   for (int i = 0; i < 5; i++) {
    //     await tester.tap(fab);
    //     await tester.pumpAndSettle(); // Wait for animations or updates
    //   }
    //
    //   // Verify the counter increments by 1.
    //   expect(find.text('5'), findsOneWidget);
    //
    //   // Find the TextFormField and enter text.
    //   // final textField = find.byType(TextFormField);
    //   final textField = find.byKey(const ValueKey("EnterField"));
    //   expect(textField, findsOneWidget); // Verify the TextFormField is present
    //
    //   // Enter some text into the TextFormField.
    //   await tester.enterText(textField, 'Hello, Flutter!');
    //   await tester.pumpAndSettle(); // Wait for any updates
    //
    //   // Verify the text in the TextFormField.
    //   expect(find.text('Hello, Flutter!'), findsOneWidget);
    //
    //   // Trigger a frame.
    //   await tester.pumpAndSettle();
    //
    //   // Keep the app running indefinitely
    //   // await Future.delayed(Duration(hours: 1));
    // });



    testWidgets('Test 1', (tester) async {
      // Load app widget.
      await tester.pumpWidget(const MyApp());

      expect(find.byType(firstScreen), findsOneWidget);
      print("1st Screen is found ----->");

      final fab = find.byType(ElevatedButton);
      await tester.tap(fab);
      await tester.pumpAndSettle();

      expect(find.byType(secondScreen), findsOneWidget);
      print("2nd Screen is found ----->");


      await tester.pumpAndSettle();

    });

    testWidgets('Test 2', (tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.byType(firstScreen), findsOneWidget);
      print("1st Screen is found ----->");

      final fab = find.byType(ElevatedButton);
      await tester.tap(fab);
      await tester.pumpAndSettle();

      expect(find.byType(secondScreen), findsOneWidget);
      print("2nd Screen is found ----->");

      // expect(find.byType(thirdScreen), findsOneWidget);
      // print("1st Screen is found ----->");


      await tester.pumpAndSettle();

    });
    
  });

}