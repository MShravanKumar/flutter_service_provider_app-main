import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/CouponScreen/create_coupon.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() =>
      _OfferScreenState();
}

class _OfferScreenState
    extends State<OfferScreen> {
  List<String> list = [
    ImagesView.couponImage1,
    ImagesView.couponImage2,
    ImagesView.couponImage3,
    ImagesView.couponImage4,
  ];
  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height;
    double width =
        MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        floatingActionButton:
            FloatingActionButton.extended(
          label: const Text(
              "   Create a New Coupon   "),
          backgroundColor: blueColor,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const CreateCouponScreen(),
                ));
          },
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation
                .centerFloat,
        backgroundColor: lightblue,
        body: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Suggested Coupons",
                style: TextStyle(
                    color: blueColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: height / 6,
              padding: const EdgeInsets.all(2),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: SizedBox(
                      width: width / 1.5,
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: blueColor,
                                borderRadius:
                                    BorderRadius.only(
                                        bottomRight:
                                            Radius.circular(
                                                6))),
                            padding:
                                const EdgeInsets
                                    .all(5),
                            child: const Text(
                              "Wedmist Suggested",
                              style: TextStyle(
                                  color:
                                      whiteColor,
                                  fontSize: 14,
                                  fontWeight:
                                      FontWeight
                                          .w500),
                            ),
                          ),
                          const SizedBox(
                              height: 2),
                          Row(
                            children: [
                              const SizedBox(
                                  width: 10),
                              Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    height: 90,
                                    child: Image.asset(
                                        list[Random()
                                            .nextInt(
                                                list.length)]),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets
                                            .only(
                                        left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .start,
                                      mainAxisAlignment:
                                          MainAxisAlignment
                                              .start,
                                      children: [
                                        const Text(
                                          "Diwali Discount",
                                          style: TextStyle(
                                              fontSize:
                                                  16,
                                              fontWeight:
                                                  FontWeight.w500),
                                        ),
                                        const SizedBox(
                                            height:
                                                2),
                                        const Text(
                                          "Get 20% OFF upto ₹50",
                                          style: TextStyle(
                                              color:
                                                  greyColor,
                                              fontSize:
                                                  14,
                                              fontWeight:
                                                  FontWeight.w500),
                                        ),
                                        const SizedBox(
                                            height:
                                                4),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5),
                                          child:
                                              Container(
                                            height:
                                                35,
                                            alignment:
                                                Alignment.center,
                                            decoration: BoxDecoration(
                                                color: lightblue,
                                                border: Border.all(color: blueColor, width: 2)),
                                            child:
                                                const Text(
                                              "Activate This Coupon",
                                              style:
                                                  TextStyle(color: blueColor, fontSize: 14),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "See all your Coupons",
                style: TextStyle(
                    color: blueColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    bottomsheeetView();
                  },
                  child: Card(
                      margin:
                          const EdgeInsets.all(8),
                      child: SizedBox(
                        height: height / 6.5,
                        child: Row(
                          children: [
                            const SizedBox(
                                width: 5),
                            Expanded(
                                flex: 1,
                                child: SizedBox(
                                  child: Image.asset(
                                      list[Random()
                                          .nextInt(
                                              list.length)]),
                                )),
                            Expanded(
                                flex: 3,
                                child: Padding(
                                  padding:
                                      const EdgeInsets
                                              .all(
                                          8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                    children: [
                                      const SizedBox(
                                          height:
                                              5),
                                      Row(
                                        children: [
                                          const Text(
                                            "Diwali Discount",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Spacer(),
                                          Container(
                                            padding:
                                                const EdgeInsets.all(5),
                                            color:
                                                lightGreenColor,
                                            child:
                                                Row(
                                              children: const [
                                                Icon(Icons.circle, size: 10, color: greenColor),
                                                SizedBox(width: 5),
                                                Text(
                                                  "Active",
                                                  style: TextStyle(color: greenColor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Icon(
                                              Icons.more_vert)
                                        ],
                                      ),
                                      const SizedBox(
                                          height:
                                              5),
                                      const Text(
                                        "Get 20% OFF upto ₹50",
                                        style: TextStyle(
                                            color:
                                                greyColor),
                                      ),
                                      const SizedBox(
                                          height:
                                              5),
                                      Row(
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 120,
                                                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(ImagesView.rectangeImg))),
                                              ),
                                              Container(
                                                  height: 30,
                                                  width: 120,
                                                  alignment: Alignment.center,
                                                  child: const Text(
                                                    "10SAVE000043",
                                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                                                  ))
                                            ],
                                          ),
                                          const SizedBox(
                                              width:
                                                  15),
                                          Card(
                                            child:
                                                Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child:
                                                  Row(
                                                children: [
                                                  Image.asset(
                                                    ImagesView.sendImg,
                                                    scale: 3,
                                                  ),
                                                  const SizedBox(width: 5),
                                                  const Text(
                                                    "Send",
                                                    style: TextStyle(color: greyColor),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                          height:
                                              5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment
                                                .end,
                                        children: const [
                                          Text(
                                            "Exp. 10 Nov 22",
                                            style: TextStyle(
                                                color: greyColor,
                                                fontSize: 10),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )),
                );
              },
            ))
          ],
        ),
      ),
    );
  }

  void bottomsheeetView() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(15.0)),
        ),
        context: context,
        builder: (context) {
          return SizedBox(
            height: 230,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  const Text(
                    "Coupon Details",
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 18,
                        fontWeight:
                            FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 180,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        ImagesView
                                            .couponImg),
                                    fit: BoxFit
                                        .fill)),
                          ),
                          Container(
                              height: 45,
                              width: 160,
                              alignment: Alignment
                                  .center,
                              child: const Text(
                                  "FIRSTGO",
                                  style: TextStyle(
                                      color:
                                          blueColor,
                                      fontSize:
                                          18,
                                      fontWeight:
                                          FontWeight
                                              .bold))),
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        "Copy Code",
                        style: TextStyle(
                            color: greenColor,
                            fontSize: 11,
                            fontWeight:
                                FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Get 20% OFF upto ₹50",
                    style: TextStyle(
                        color: greyColor),
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                      height: 2,
                      color: greyColor),
                  const SizedBox(height: 8),
                  const Text(
                    "Terms and Conditions",
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Image.asset(
                        IconsView.rectangleIcon,
                        scale: 2,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Offer valid till Sep 30, 2022 06:59 PM",
                        style: TextStyle(
                            color: greyColor,
                            fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Image.asset(
                        IconsView.rectangleIcon,
                        scale: 2,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Offer valid till Sep 30, 2022 06:59 PM",
                        style: TextStyle(
                            color: greyColor,
                            fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Image.asset(
                        IconsView.rectangleIcon,
                        scale: 2,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Offer valid till Sep 30, 2022 06:59 PM",
                        style: TextStyle(
                            color: greyColor,
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
