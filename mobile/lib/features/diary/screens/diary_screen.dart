import 'package:flutter/material.dart';
import 'package:mobile/features/diary/widget/location_widget.dart';
import 'package:mobile/features/diary/widget/photo_widget.dart';
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
      body: Column(
        children: [
          const LocationWidget(),
          TitleWidget(
            title: S.current.add_site_to_diary,
          ),
          Card(
            elevation: 6,
            margin: const EdgeInsets.only(
                left: Spacing.spacing16, right: Spacing.spacing16),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: Spacing.spacing16, right: Spacing.spacing16),
              child: Column(
                children: [
                  const TitleWidget(
                    title: 'Add Photos to site diary',
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    rightIcon: SizedBox(),
                    padding: EdgeInsets.fromLTRB(
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
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              'Add a photo',
                              style: TextStyle(fontSize: 16),
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
                        const Text(
                          'Include in photo gallery',
                          style: TextStyle(color: Color(0xffB4B4B4)),
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
          )
        ],
      ),
    );
  }
}
