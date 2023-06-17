import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/IncomeAndEarnings/EarningComponets/earning_history_tile.dart';

class PassiveIncome extends StatelessWidget {
  const PassiveIncome({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height;
    // double width =
    //     MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Passive Income"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return EarningHistoryTile(
                isShowTotalEarnings: true,
                height: height);
          },
        ),
      ),
    );
  }
}
