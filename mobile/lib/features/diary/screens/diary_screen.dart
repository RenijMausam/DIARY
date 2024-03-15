import 'package:flutter/material.dart';
import 'package:mobile/features/diary/widget/card_widget.dart';
import 'package:mobile/features/diary/widget/comment_widget.dart';
import 'package:mobile/features/diary/widget/details_widget.dart';
import 'package:mobile/features/diary/widget/location_widget.dart';
import 'package:mobile/features/diary/widget/title_widget.dart';
import 'package:mobile/generated/l10n.dart';
import 'package:mobile/utils/spacing.dart';

class NewDiaryScreen extends StatelessWidget {
  const NewDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close),
        title: Text(
          S.current.new_diary,
          style: const TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LocationWidget(),
            TitleWidget(
              title: S.current.add_site_to_diary,
            ),
            const CardWidget(),
            const SizedBox(height: Spacing.spacing16),
            const CommentWidget(),
            const SizedBox(height: Spacing.spacing16),
            const DetailsWidget(),
            const SizedBox(height: Spacing.spacing16),
          ],
        ),
      ),
    );
  }
}
