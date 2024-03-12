import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/features/diary/widget/location_widget.dart';
import 'package:mobile/generated/l10n.dart';

import '../extensions/widget_tester_extensions.dart';

void main() {
  testWidgets('Location Widget test', (WidgetTester tester) async {
    await tester.wrapAndPumpWidget(const LocationWidget());

    expect(find.byType(Icon), findsOneWidget);
    expect(find.byType(Text), findsOneWidget);
    expect(find.text(S.current.location), findsOneWidget);
  });
}
