import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Home/HomeScreens/interested_update_status_view.dart';

import '../../Utils/color_constants.dart';
import '../../Utils/images_constants.dart';
import 'HomeScreens/claimed_update_status_view.dart';

class HomeScreenListView extends StatelessWidget {
  const HomeScreenListView({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        ListTile(
          leading: Image.asset(
            ImagesView.orderRecieved,
          ),
          title: const Text("Arya Das"),
          subtitle:
              const Text("28-11-2022, 4:54 PM"),
          trailing: PopupMenuButton(
              onSelected: (String value) {
                if (value == "1") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ClaimedUpdateStatusView(),
                      ));
                } else if (value == "2") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const InterestedUpdateStatusView(),
                      ));
                }
              },
              itemBuilder: (BuildContext ctx) => [
                    const PopupMenuItem(
                        value: '1',
                        child: Text(
                            'Move to Intrested')),
                    const PopupMenuItem(
                        value: '2',
                        child: Text(
                            'Update Status')),
                    const PopupMenuItem(
                        value: '3',
                        child: Text(
                            'Delete Customer')),
                    const PopupMenuItem(
                        value: '4',
                        child: Text(
                            'Report Customer')),
                  ]),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 8, right: 8, bottom: 8),
          child: Row(
            children: [
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.start,
                children: const [
                  Text(
                    "- Follow up done",
                    style: TextStyle(
                        color: greyColor,
                        fontWeight:
                            FontWeight.w500),
                  ),
                  Text(
                    "2 Days ago",
                    style: TextStyle(
                        color: greyColor,
                        fontWeight:
                            FontWeight.w400),
                  )
                ],
              ),
              const Spacer(),
              Image.asset(IconsView.callViewIcon,
                  scale: 3),
              const SizedBox(width: 15),
              Image.asset(
                  IconsView.messageViewIcon,
                  scale: 3)
            ],
          ),
        )
      ],
    ));
  }
}
