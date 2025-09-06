import 'package:flutter/material.dart';
import 'package:protokoll_generator/shared/theme/styled_text.dart';

class LocationTime extends StatelessWidget {
  final String city;
  final String street;
  final String date;
  final String time;

  const LocationTime({
    required this.city,
    required this.street,
    required this.date,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyledTextLarge(city),
            StyledText(street),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.schedule),
                //Icon(Icons.share_arrival_time),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [StyledText(date), StyledText(time)],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
