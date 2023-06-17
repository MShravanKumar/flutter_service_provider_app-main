import 'package:flutter/material.dart';

import '../../../Utils/color_constants.dart';
import '../../../Utils/images_constants.dart';

class NewDeailsWidget extends StatelessWidget {
  const NewDeailsWidget({
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
                  ImagesView.greenImg,
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
            trailing: IconButton(
              icon: const Icon(Icons
                  .arrow_forward_ios_rounded),
              onPressed: () {},
            ),
          ),
          const Divider(
              height: 1, color: greyColor),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "TO CONTACT THIS CUSTOMER, ACCEPT THIS LEAD:",
              style: TextStyle(
                  color: greyColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              const Spacer(),
              Container(
                height: 40,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(8),
                    color: lightBackGroundColor),
                child: const Text(
                  "Reject Lead",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight:
                          FontWeight.w500),
                ),
              ),
              const Spacer(),
              Container(
                height: 40,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(8),
                    color: blueColor),
                child: const Text(
                  "Accept Lead",
                  style: TextStyle(
                      fontSize: 14,
                      color: whiteColor,
                      fontWeight:
                          FontWeight.w500),
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 8),
        ],
      )),
    );
  }
}
