import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Home/HomeScreens/home_constants.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';

class ClaimedUpdateStatusView
    extends StatefulWidget {
  const ClaimedUpdateStatusView({Key? key})
      : super(key: key);

  @override
  State<ClaimedUpdateStatusView> createState() =>
      _ClaimedUpdateStatusViewState();
}

class _ClaimedUpdateStatusViewState
    extends State<ClaimedUpdateStatusView> {
  ClaimedUpdateSates claimedupdateSts =
      ClaimedUpdateSates.followUpDone;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text("Update Status"),
        ),
        body: Column(
          children: <Widget>[
            RadioListTile<ClaimedUpdateSates>(
              activeColor: blueColor,
              groupValue: claimedupdateSts,
              title: const Text("Follow Up Done"),
              value:
                  ClaimedUpdateSates.followUpDone,
              onChanged:
                  (ClaimedUpdateSates? val) {
                setState(() {
                  claimedupdateSts = val!;
                });
              },
            ),
            RadioListTile<ClaimedUpdateSates>(
              activeColor: blueColor,
              groupValue: claimedupdateSts,
              title: const Text(
                  "Follow Up Not Done"),
              value: ClaimedUpdateSates
                  .followUpNotDone,
              onChanged: (val) {
                claimedupdateSts = val!;
                setState(() {});
              },
            ),
            RadioListTile<ClaimedUpdateSates>(
              activeColor: blueColor,
              groupValue: claimedupdateSts,
              title: const Text(
                  "Didn’t Recieved the Call"),
              value: ClaimedUpdateSates
                  .didntRecievedtheCall,
              onChanged:
                  (ClaimedUpdateSates? val) {
                setState(() {
                  claimedupdateSts = val!;
                });
              },
            ),
            RadioListTile<ClaimedUpdateSates>(
              activeColor: blueColor,
              groupValue: claimedupdateSts,
              title: const Text(
                  "User Busy, Call Later"),
              value: ClaimedUpdateSates
                  .userBusyCallLater,
              onChanged:
                  (ClaimedUpdateSates? val) {
                setState(() {
                  claimedupdateSts = val!;
                });
              },
            ),
            RadioListTile<ClaimedUpdateSates>(
              activeColor: blueColor,
              groupValue: claimedupdateSts,
              title: const Text(
                  "User Not Intrested"),
              value: ClaimedUpdateSates
                  .userNotIntrested,
              onChanged:
                  (ClaimedUpdateSates? val) {
                setState(() {
                  claimedupdateSts = val!;
                });
              },
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius:
                        BorderRadius.circular(5)),
                child: const Text(
                  "Done",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
