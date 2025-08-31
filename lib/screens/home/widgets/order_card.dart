import 'package:flutter/material.dart';
import 'package:protokoll_generator/shared/theme/styled_text.dart';
import 'package:protokoll_generator/shared/theme/theme.dart';

class OrderCard extends StatelessWidget {
  final String text;
  const OrderCard({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(22),
        side: BorderSide(color: AppColor.primaryDark, width: 2),
      ),
      color: AppColor.primaryLight.withAlpha(50),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StyledHeading(text),
      ),
    );
  }
}
