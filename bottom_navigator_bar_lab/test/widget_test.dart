import 'package:flutter_test/flutter_test.dart';
import 'package:bottom_navigator_bar_lab/main.dart';

void main() {
  testWidgets('Bottom navigation bar displays four screens', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const BottomNavLab());

    expect(find.text('Bottom Navigation Bar'), findsOneWidget);

    expect(find.text('Home'), findsWidgets);
    expect(find.text('Alarm'), findsWidgets);
    expect(find.text('Business'), findsWidgets);
    expect(find.text('School'), findsWidgets);

    await tester.tap(find.text('Alarm').last);
    await tester.pumpAndSettle();

    expect(find.text('Alarm'), findsWidgets);

    await tester.tap(find.text('Business').last);
    await tester.pumpAndSettle();

    expect(find.text('Business'), findsWidgets);

    await tester.tap(find.text('School').last);
    await tester.pumpAndSettle();

    expect(find.text('School'), findsWidgets);
  });
}
