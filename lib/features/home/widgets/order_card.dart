import 'package:flutter/material.dart';
import 'package:protokoll_generator/features/home/widgets/location_time.dart';
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
      color: AppColor.primaryLightest,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [StyledText('102806'), StyledText('Kein Status')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StyledHeading('BO - MS 1293'),
                Icon(Icons.unfold_more_outlined),
              ],
            ),
            StyledText('in 3 Tagen'),
            Container(
              color: Colors.grey,
              height: 1.8,
              margin: EdgeInsets.symmetric(vertical: 4),
            ),
            Row(
              children: [
                LocationTime(
                  city: '12345 München',
                  street: 'Augustiner Straße 12',
                  date: 'Mo, 12.12.25',
                  time: '8-12 Uhr',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Icon(Icons.keyboard_arrow_right_outlined, size: 30),
                ),
                LocationTime(
                  city: '12345 Fernwald',
                  street: 'Oppenröder Straße 1',
                  date: 'Mo, 12.12.25',
                  time: '8-16 Uhr',
                ),
              ],
            ),
            Container(
              color: Colors.grey,
              height: 1.8,
              margin: EdgeInsets.symmetric(vertical: 4),
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.check_box_outline_blank),
                      StyledText('Volltanken'),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: Row(
                    children: [Icon(Icons.check_box), StyledText('Waschen')],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.info),
                SizedBox(width: 10),
                StyledText('min. 50 km Restreichweite'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.business_center),
                SizedBox(width: 10),
                StyledText('Deutsche Leasing AG'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
