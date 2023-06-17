import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Home/HomeScreens/home_constants.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';

class InterestedUpdateStatusView
    extends StatefulWidget {
  const InterestedUpdateStatusView({Key? key})
      : super(key: key);

  @override
  State<InterestedUpdateStatusView>
      createState() =>
          _InterestedUpdateStatusViewState();
}

class _InterestedUpdateStatusViewState
    extends State<InterestedUpdateStatusView> {
  InterestedUpdateStatus interestedupdateStus =
      InterestedUpdateStatus.confirmed;
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
            RadioListTile<InterestedUpdateStatus>(
              activeColor: blueColor,
              groupValue: interestedupdateStus,
              title: const Text("Confirmed"),
              value: InterestedUpdateStatus
                  .confirmed,
              onChanged:
                  (InterestedUpdateStatus? val) {
                setState(() {
                  interestedupdateStus = val!;
                });
              },
            ),
            RadioListTile<InterestedUpdateStatus>(
              activeColor: blueColor,
              groupValue: interestedupdateStus,
              title: const Text("Not Confirmed"),
              value: InterestedUpdateStatus
                  .notConfirmed,
              onChanged: (val) {
                interestedupdateStus = val!;
                setState(() {});
              },
            ),
            RadioListTile<InterestedUpdateStatus>(
              activeColor: blueColor,
              groupValue: interestedupdateStus,
              title: const Text(
                  "Didn’t Recieved the Call"),
              value: InterestedUpdateStatus
                  .didntRecievedtheCall,
              onChanged:
                  (InterestedUpdateStatus? val) {
                setState(() {
                  interestedupdateStus = val!;
                });
              },
            ),
            RadioListTile<InterestedUpdateStatus>(
              activeColor: blueColor,
              groupValue: interestedupdateStus,
              title: const Text(
                  "User Busy, Call Later"),
              value: InterestedUpdateStatus
                  .userBusyCallLater,
              onChanged:
                  (InterestedUpdateStatus? val) {
                setState(() {
                  interestedupdateStus = val!;
                });
              },
            ),
            RadioListTile<InterestedUpdateStatus>(
              activeColor: blueColor,
              groupValue: interestedupdateStus,
              title: const Text(
                  "User Not Intrested"),
              value: InterestedUpdateStatus
                  .userNotIntrested,
              onChanged:
                  (InterestedUpdateStatus? val) {
                setState(() {
                  interestedupdateStus = val!;
                });
              },
            ),
            RadioListTile<InterestedUpdateStatus>(
              activeColor: blueColor,
              groupValue: interestedupdateStus,
              title: const Text("Others"),
              value:
                  InterestedUpdateStatus.others,
              onChanged:
                  (InterestedUpdateStatus? val) {
                setState(() {
                  interestedupdateStus = val!;
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
