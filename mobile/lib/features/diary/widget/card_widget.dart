import 'package:flutter/material.dart';
import 'package:mobile/features/diary/widget/photo_widget.dart';
import 'package:mobile/features/diary/widget/title_widget.dart';
import 'package:mobile/generated/l10n.dart';
import 'package:mobile/utils/spacing.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

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
              title: S.current.ass_photo_to_site_diary,
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
            const SizedBox(
              height: Spacing.spacing16,
            ),
            //TODO [Need to refactor] :
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: Spacing.spacing16),
                    child: PhotoWidget(),
                  );
                },
              ),
            ),
            const SizedBox(
              height: Spacing.spacing16,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        S.current.add_photo,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xff97D600), // Background color
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
              child: Row(
                children: [
                  Text(
                    S.current.include_in_photo_gallery,
                    style: const TextStyle(color: Color(0xffB4B4B4)),
                  ),
                  const Spacer(),
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: const Color(0xff97D600),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
