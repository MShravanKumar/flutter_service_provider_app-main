import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

class PaymentToWedmist extends StatefulWidget {
  const PaymentToWedmist({Key? key})
      : super(key: key);

  @override
  State<PaymentToWedmist> createState() =>
      _PaymentToWedmistState();
}

class _PaymentToWedmistState
    extends State<PaymentToWedmist> {
  @override
  Widget build(BuildContext context) {
    double width =
        MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Payment to Wedmist"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "TOTAL AMOUNT",
                          style: TextStyle(
                              color: greyColor,
                              fontSize: 16),
                        ),
                        const Spacer(),
                        Container(
                            height: 30,
                            padding:
                                const EdgeInsets
                                        .only(
                                    left: 10,
                                    top: 5,
                                    bottom: 5,
                                    right: 10),
                            alignment:
                                Alignment.center,
                            decoration: BoxDecoration(
                                color:
                                    lightOrange,
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                            15)),
                            child: const Text(
                                "DUE IN 3 DAYS",
                                style: TextStyle(
                                    color:
                                        orangeColor,
                                    fontSize: 16,
                                    fontWeight:
                                        FontWeight
                                            .w500))),
                        const SizedBox(width: 5),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "₹108",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight:
                                  FontWeight
                                      .w500),
                        ),
                        Text(
                          ".05",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight:
                                  FontWeight.w500,
                              color: greyColor),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      children: [
                        Image.asset(
                          IconsView.alertIcon,
                          scale: 3,
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          "Alert:",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight:
                                  FontWeight.w500,
                              color: redColor),
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          width: width / 1.5,
                          child: const Text(
                            "Recharge your Credit to avoid your account being blocked.",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight:
                                    FontWeight
                                        .w500,
                                color:
                                    blackColor),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Container(
                      height: 40,
                      width: width / 2,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius
                                  .circular(20),
                          color: blueColor),
                      child: const Text(
                        "Pay Now",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight:
                                FontWeight.w500,
                            color: whiteColor),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Payment History",
              style: TextStyle(
                  color: blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(
                                10)),
                    child: Padding(
                      padding:
                          const EdgeInsets.all(
                              10.0),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        children: [
                          const Text(
                            "#ORDER114",
                            style: TextStyle(
                                color: blackColor,
                                fontSize: 16,
                                fontWeight:
                                    FontWeight
                                        .bold),
                          ),
                          const SizedBox(
                              height: 10),
                          Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .start,
                                children: const [
                                  Text(
                                    "Your Earning",
                                    style: TextStyle(
                                        color:
                                            greyColor,
                                        fontSize:
                                            14),
                                  ),
                                  SizedBox(
                                      height: 5),
                                  Text(
                                    "Wedmist Charges",
                                    style: TextStyle(
                                        color:
                                            greyColor,
                                        fontSize:
                                            14),
                                  ),
                                  SizedBox(
                                      height: 12),
                                  Text(
                                    "Apr 5, ‘22 at 16:24",
                                    style: TextStyle(
                                        color:
                                            blackColor,
                                        fontSize:
                                            14),
                                  ),
                                  SizedBox(
                                      height: 5),
                                ],
                              )),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .end,
                                children: const [
                                  Text(
                                    "₹449",
                                    style: TextStyle(
                                        color:
                                            blackColor,
                                        fontSize:
                                            14,
                                        fontWeight:
                                            FontWeight
                                                .bold),
                                  ),
                                  SizedBox(
                                      height: 5),
                                  Text(
                                    "₹49",
                                    style: TextStyle(
                                        color:
                                            greenColor,
                                        fontSize:
                                            14),
                                  ),
                                  SizedBox(
                                      height: 12),
                                  Text(
                                    "See Detail",
                                    style: TextStyle(
                                        color:
                                            blueColor,
                                        fontSize:
                                            14,
                                        fontWeight:
                                            FontWeight
                                                .w500),
                                  ),
                                  SizedBox(
                                      height: 5),
                                ],
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
