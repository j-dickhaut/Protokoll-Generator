import 'package:flutter/material.dart';
import 'package:protokoll_generator/features/home/widgets/order_card.dart';
import 'package:protokoll_generator/shared/theme/styled_text.dart';
import 'package:protokoll_generator/shared/theme/theme.dart';

class HomeView extends StatelessWidget {
  final List<String> dummyList = [
    'Müchen > Gießen',
    'Rehden > Ulm',
    'Saarbrücken > Linz am Rhein',
    'Dortmund > Fernwald',
  ];
  HomeView({super.key});

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
          SizedBox(height: 10),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: dummyList.length,
                itemBuilder: (_, index) => OrderCard(text: dummyList[index]),
              ),
            ),
          ),
          SizedBox(height: 8),
          FilledButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('/new_case');
            },
            label: StyledButtonText('new case'),
            icon: Icon(Icons.add),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
