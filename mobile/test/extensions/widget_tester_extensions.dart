import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/generated/l10n.dart';

extension WrapAndPump on WidgetTester {
  Future<void> wrapAndPumpWidget(
    Widget widget, {
    bool isSetGlobalMaterialLocalizations = true,
  }) async {
    final Widget materialAppTestWrapper = _MaterialAppTestWrapper(
      child: widget,
      isSetGlobalMaterialLocalizations: isSetGlobalMaterialLocalizations,
    );

    await pumpWidget(materialAppTestWrapper);
    await pump();
  }
}

class WrapAndPumpImport {} // Importer helper class. Does nothing.

class _MaterialAppTestWrapper extends StatelessWidget {
  const _MaterialAppTestWrapper(
      {Key? key,
      required this.child,
      required this.isSetGlobalMaterialLocalizations})
      : super(key: key);

  final Widget child;
  final bool isSetGlobalMaterialLocalizations;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: child),
      localizationsDelegates: [
        S.delegate,
        if (isSetGlobalMaterialLocalizations)
          GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}
