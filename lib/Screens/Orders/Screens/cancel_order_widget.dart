import 'package:flutter/material.dart';

import '../../../Utils/color_constants.dart';
import '../../../Utils/images_constants.dart';

class CancelledDetailsWidget
    extends StatelessWidget {
  const CancelledDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Stack(
              children: [
                Image.asset(
                  ImagesView.redImage,
                ),
                const Positioned(
                  top: 8,
                  left: 17,
                  child: Text(
                    "A",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight:
                            FontWeight.bold),
                  ),
                )
              ],
            ),
            title: const Text("Arya Das"),
            subtitle: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 5),
                Text(
                    "Smart Village, Bhubaneswar"),
                SizedBox(height: 5),
                Text("28-11-2022, 4:54 PM"),
                SizedBox(height: 5),
              ],
            ),
            trailing: const Text("Cancelled",
                style: TextStyle(
                    color: redColor,
                    fontSize: 18)),
          ),
          const Divider(
              height: 1, color: greyColor),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                const Text(
                  "TO CONTACT THIS CUSTOMER, ACCEPT THIS LEAD:",
                  style: TextStyle(
                      color: greyColor,
                      fontSize: 12,
                      fontWeight:
                          FontWeight.w500),
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Text(
                      "Cancellation Time:",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight:
                              FontWeight.bold),
                    ),
                    Text(
                      "28-11-2022, 4:54 PM",
                      style: TextStyle(
                          color: greyColor,
                          fontSize: 12,
                          fontWeight:
                              FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      )),
    );
  }
}
