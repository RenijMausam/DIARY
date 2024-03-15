import 'package:flutter/material.dart';
import 'package:mobile/features/diary/widget/title_widget.dart';
import 'package:mobile/generated/l10n.dart';
import 'package:mobile/utils/spacing.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.only(
          left: Spacing.spacing16, right: Spacing.spacing16),
      child: Padding(
        padding: const EdgeInsets.only(
            left: Spacing.spacing16, right: Spacing.spacing16),
        child: Column(
          children: [
            TitleWidget(
              title: S.current.comments,
              textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff848484)),
              rightIcon: const SizedBox(),
              padding: const EdgeInsets.fromLTRB(
                Spacing.spacing0,
                Spacing.spacing16,
                Spacing.spacing16,
                Spacing.spacing14,
              ),
            ),
            const Divider(
              color: Colors.black45,
            ),
            TextField(
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xffA6A6A6),
                decoration: TextDecoration.none,
              ),
              decoration: InputDecoration(
                  hintText: S.current.comments,
                  hintStyle: const TextStyle(color: Color(0xffB6B6B6)),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffB9B9B9)),
                  ),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffB9B9B9)),
                  )),
            ),
            const SizedBox(
              height: Spacing.spacing16,
            )
          ],
        ),
      ),
    );
  }
}
