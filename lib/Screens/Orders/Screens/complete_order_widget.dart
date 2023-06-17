import 'package:flutter/material.dart';

import '../../../Utils/color_constants.dart';
import '../../../Utils/images_constants.dart';

class CompleteOrderWidget extends StatefulWidget {
  const CompleteOrderWidget({Key? key})
      : super(key: key);

  @override
  State<CompleteOrderWidget> createState() =>
      _CompleteOrderWidgetState();
}

class _CompleteOrderWidgetState
    extends State<CompleteOrderWidget> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
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
                    ImagesView.blueImg,
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
              trailing: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.end,
                children: const [
                  Text("Completed",
                      style: TextStyle(
                          color: greenColor,
                          fontWeight:
                              FontWeight.w500,
                          fontSize: 18)),
                  SizedBox(height: 20),
                  Text("View Details",
                      style: TextStyle(
                          color: blueColor,
                          fontSize: 12))
                ],
              )),
          const Divider(
              height: 1, color: greyColor),
          const SizedBox(height: 5),
          Row(
            children: [
              const SizedBox(width: 15),
              Container(
                height: 40,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(8),
                    color: blueColor),
                child: const Text(
                  "Call",
                  style: TextStyle(
                      fontSize: 14,
                      color: whiteColor,
                      fontWeight:
                          FontWeight.w500),
                ),
              ),
              const SizedBox(width: 15),
              Container(
                height: 40,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(8),
                    color: greyLightColor),
                child: const Text(
                  "Message",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight:
                          FontWeight.w500),
                ),
              ),
              const Spacer(),
              Card(
                child: Container(
                  height: 40,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.center,
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.favorite,
                        color: redColor,
                        size: 16,
                      ),
                      SizedBox(width: 2),
                      Text(
                        "Favourite",
                        style: TextStyle(
                            fontSize: 14,
                            color: redColor,
                            fontWeight:
                                FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: const [
                Text(
                  "Total earning from this order",
                  style: TextStyle(
                      color: greyColor,
                      fontSize: 12,
                      fontWeight:
                          FontWeight.w500),
                ),
                SizedBox(height: 2),
                Text(
                  "₹464",
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 14,
                      fontWeight:
                          FontWeight.bold),
                )
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Customer Category",
                style: TextStyle(
                    color: blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: const EdgeInsets.only(
                left: 8, right: 8),
            child: DropdownButton<String>(
              // Initial Value
              value: dropdownvalue,
              isExpanded: true,
              // Down Arrow Icon
              icon: const Icon(
                  Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          const SizedBox(height: 8),
        ],
      )),
    );
  }
}
