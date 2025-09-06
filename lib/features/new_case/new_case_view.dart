import 'package:flutter/material.dart';
import 'package:protokoll_generator/features/new_case/widgets/location_card.dart';
import 'package:protokoll_generator/shared/theme/styled_text.dart';
import 'package:protokoll_generator/shared/theme/theme.dart';

class NewCaseView extends StatelessWidget {
  const NewCaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('new case'),
        backgroundColor: AppColor.primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'lib/assets/images/cuno_logo1.png',
                height: 32,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LocationCard(heading: 'pickup location'),
            LocationCard(heading: 'drop of location'),
          ],
        ),
      ),
    );
  }
}
