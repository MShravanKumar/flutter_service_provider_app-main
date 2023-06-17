import 'package:flutter/material.dart';

import '../../../../../Utils/color_constants.dart';
import '../../../../../Utils/images_constants.dart';

class EarningHistoryTile extends StatelessWidget {
  const EarningHistoryTile({
    Key? key,
    required this.height,
    required this.isShowTotalEarnings,
  }) : super(key: key);

  final double height;
  final bool isShowTotalEarnings;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isShowTotalEarnings
          ? height / 4.5
          : height / 6,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
                child: Row(
                  children: [
                    Image.asset(IconsView
                        .moneyTransferIcon),
                    const SizedBox(width: 8),
                    const Text(
                      "#Order114",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight:
                              FontWeight.bold),
                    ),
                    const Spacer(),
                    const Text(
                      "₹879",
                      style: TextStyle(
                          fontSize: 18,
                          color: greenColor,
                          fontWeight:
                              FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Customer: Shaurya Arya",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Text(
                "Smart Village, Bhubaneswar",
                style: TextStyle(
                    fontSize: 14,
                    color: greyColor,
                    fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: const [
                  Text("28-11-2022, 4:54 PM",
                      style: TextStyle(
                          fontSize: 14,
                          color: greyColor,
                          fontWeight:
                              FontWeight.bold)),
                  Text("View Details",
                      style: TextStyle(
                          fontSize: 18,
                          color: greenColor,
                          fontWeight:
                              FontWeight.bold)),
                ],
              ),
              const Spacer(),
              isShowTotalEarnings
                  ? Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      children: const [
                        Divider(
                            height: 1,
                            color: greyColor),
                        SizedBox(height: 8),
                        Text(
                          "Total earning from this order",
                          style: TextStyle(
                              fontSize: 14,
                              color: greyColor,
                              fontWeight:
                                  FontWeight
                                      .w500),
                        ),
                        SizedBox(height: 5),
                        Text("₹879",
                            style: TextStyle(
                                fontSize: 16,
                                color: blackColor,
                                fontWeight:
                                    FontWeight
                                        .bold)),
                      ],
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
