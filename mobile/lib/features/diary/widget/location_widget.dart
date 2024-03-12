import 'package:flutter/material.dart';
import 'package:mobile/generated/l10n.dart';
import 'package:mobile/utils/spacing.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  static const double height = 80;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.white,
      padding: const EdgeInsets.all(Spacing.spacing16),
      child: Row(
        children: [
          const Icon(
            Icons.location_on,
            color: Color(0xFF616161),
          ),
          const SizedBox(width: Spacing.spacing4),
          Text(S.current.location),
        ],
      ),
    );
  }
}
