import 'package:flutter/material.dart';
import 'package:protokoll_generator/screens/home/widgets/order_card.dart';
import 'package:protokoll_generator/shared/theme/styled_text.dart';
import 'package:protokoll_generator/shared/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  final List<String> dummyList = [
    'Müchen > Gießen',
    'Rehden > Ulm',
    'Saarbrücken > Linz am Rhein',
    'Dortmund > Fernwald',
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Protocoll vehicles'),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: dummyList.length,
                itemBuilder: (_, index) => OrderCard(text: dummyList[index]),
              ),
            ),
          ),
          SizedBox(height: 16),
          FilledButton(
            onPressed: () {},
            child: StyledButtonText('create new order'),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
