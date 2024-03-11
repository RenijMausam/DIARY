import 'package:flutter/material.dart';
import 'package:mobile/utils/spacing.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget(
      {super.key,
      required this.title,
      this.rightIcon,
      this.textStyle,
      this.padding});
  final String title;
  final Widget? rightIcon;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(Spacing.spacing16),
      child: Row(
        children: [
          Text(
            title,
            style: textStyle ??
                const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          rightIcon ??
              Container(
                padding: const EdgeInsets.all(Spacing.spacing2),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF9A9A9A)),
                child: const Icon(
                  Icons.question_mark_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              )
        ],
      ),
    );
  }
}
