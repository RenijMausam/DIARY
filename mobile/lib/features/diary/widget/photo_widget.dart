import 'package:flutter/material.dart';
import 'package:mobile/utils/spacing.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 80,
          width: 80,
          color: Colors.green,
          child: Image.network('https://picsum.photos/250?image=9'),
        ),
        Positioned(
          right: -10,
          top: -10,
          child: Container(
            padding: const EdgeInsets.all(Spacing.spacing2),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
            child: const Icon(
              Icons.close,
              color: Colors.white,
              size: 18,
            ),
          ),
        )
      ],
    );
  }
}
