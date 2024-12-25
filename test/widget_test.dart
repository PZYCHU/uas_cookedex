import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:uas_cookedex/screens/auth_screen.dart'; // Import AuthScreen

void main() {
  testWidgets('Auth screen smoke test', (WidgetTester tester) async {
    // Build the AuthScreen widget and trigger a frame.
    await tester.pumpWidget(const AuthScreen());

    // Verify that the title text is displayed.
    expect(find.text('Cookédex'), findsOneWidget);
    expect(find.text('Everyone can be a chef'), findsOneWidget);

    // Verify the presence of the Send OTP button.
    expect(find.text('Send OTP'), findsOneWidget);

    // Verify the presence of the social login buttons.
    expect(find.text('Apple'), findsOneWidget);
    expect(find.text('Facebook'), findsOneWidget);
    expect(find.text('Google'), findsOneWidget);
  });
}
