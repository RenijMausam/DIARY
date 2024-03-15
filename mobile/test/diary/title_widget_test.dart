import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/features/diary/widget/title_widget.dart';

import '../extensions/widget_tester_extensions.dart';

void main() {
  testWidgets('Title Widget test', (WidgetTester tester) async {
    await tester.wrapAndPumpWidget(const TitleWidget(title: 'title'));

    expect(find.byType(Row), findsOneWidget);
    expect(find.byType(Icon), findsOneWidget);
    expect(find.text('title'), findsOneWidget);
  });
}
