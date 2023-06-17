import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

class CreateCouponScreen extends StatefulWidget {
  const CreateCouponScreen({Key? key})
      : super(key: key);

  @override
  State<CreateCouponScreen> createState() =>
      _CreateCouponScreenState();
}

class _CreateCouponScreenState
    extends State<CreateCouponScreen> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height;
    double width =
        MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Create Coupon"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              const Text(
                "Coupon Name",
                style: TextStyle(
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              Container(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(
                          vertical: 2.0),
                  child: TextFormField(
                    decoration:
                        const InputDecoration(
                      border:
                          OutlineInputBorder(),
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontWeight:
                              FontWeight.bold,
                          color: blackColor),
                      hintText: "Diwali Discount",
                    ),
                  )),
              const SizedBox(height: 5),
              const Text(
                "Promotion Details",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: blackColor),
              ),
              const SizedBox(height: 5),
              promateDetails(height, width),
              const SizedBox(height: 8),
              const Text(
                "Coupon Code",
                style: TextStyle(
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: greyColor)),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      color: greyLightColor,
                      alignment: Alignment.center,
                      child: const Text(
                        "20",
                        style: TextStyle(
                            color: greyColor,
                            fontSize: 16,
                            fontWeight:
                                FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "SAVE",
                      style: TextStyle(
                          color: greyColor,
                          fontSize: 16),
                    ),
                    const Spacer(),
                    Container(
                      width: 90,
                      color: greyLightColor,
                      alignment: Alignment.center,
                      child: const Text(
                        "000043",
                        style: TextStyle(
                            color: greyColor,
                            fontSize: 16,
                            fontWeight:
                                FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Valid Till",
                style: TextStyle(
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                        color: greyLightColor,
                        border: Border.all(
                            color: greyColor,
                            width: 1)),
                    child: Row(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .center,
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center,
                      children: const [
                        Icon(Icons.calendar_month,
                            color: greyColor),
                        SizedBox(width: 5),
                        Text(
                          "25-12-2022",
                          style: TextStyle(
                              color: greyColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  CupertinoSwitch(
                    activeColor: blueColor,
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "No End",
                    style: TextStyle(
                        fontWeight:
                            FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Terms & Conditions",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: blackColor),
              ),
              const SizedBox(height: 10),
              Container(
                height: 45,
                width: width,
                padding: const EdgeInsets.only(
                    left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: greyColor)),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Valid for all customers",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w500),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "No. Time the coupon can be used",
                style: TextStyle(
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: greyColor)),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const Text(
                      "1",
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 16),
                    ),
                    const Spacer(),
                    const Icon(Icons
                        .keyboard_arrow_down),
                    const SizedBox(width: 10),
                    Container(
                      width: 90,
                      color: greyLightColor,
                      alignment: Alignment.center,
                      child: const Text(
                        "000043",
                        style: TextStyle(
                            color: greyColor,
                            fontSize: 16,
                            fontWeight:
                                FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Choose a Sticker",
                style: TextStyle(
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Row(children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              ImagesView
                                  .couponImage1),
                          fit: BoxFit.fill)),
                ),
                const Spacer(),
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              ImagesView
                                  .couponImage2),
                          fit: BoxFit.fill)),
                ),
                const Spacer(),
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              ImagesView
                                  .couponImage3),
                          fit: BoxFit.fill)),
                ),
                const Spacer(),
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              ImagesView
                                  .couponImage4),
                          fit: BoxFit.fill)),
                )
              ]),
              const SizedBox(height: 8),
              Container(
                height: 45,
                color: blueColor,
                alignment: Alignment.center,
                child: const Text(
                  "Done",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: whiteColor,
                      fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget promateDetails(
      double height, double width) {
    return Container(
      height: height / 5,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: greyColor)),
      child: Column(children: [
        Row(
          children: [
            Expanded(
              flex: 9,
              child: Container(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(
                          vertical: 2.0),
                  child: TextFormField(
                    decoration:
                        const InputDecoration(
                      border:
                          OutlineInputBorder(),
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontWeight:
                              FontWeight.bold,
                          color: blackColor),
                      hintText: "Diwali Discount",
                    ),
                  )),
            ),
            const Expanded(
                flex: 1, child: SizedBox()),
            Expanded(
              flex: 2,
              child: Container(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(
                          vertical: 2.0),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    scrollPadding:
                        const EdgeInsets.all(0),
                    decoration:
                        const InputDecoration(
                      contentPadding:
                          EdgeInsets.all(0),
                      border:
                          OutlineInputBorder(),
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight:
                              FontWeight.bold,
                          color: blackColor),
                      hintText: "20",
                    ),
                  )),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: greyLightColor,
                      border: Border.all(
                          width: 1,
                          color: greyColor)),
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(
                          vertical: 2.0),
                  child: const Text(
                    "%",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold,
                        color: blackColor),
                  )),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                const Text(
                  "Min. Purchase Value",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 5),
                Container(
                    height: 50,
                    width: width / 2.2,
                    padding: const EdgeInsets
                        .symmetric(vertical: 2.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(
                        border:
                            OutlineInputBorder(),
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight:
                                FontWeight.bold,
                            color: blackColor),
                        hintText: "499",
                      ),
                    )),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                const Text(
                  "Max. Discount Value",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 5),
                Container(
                    height: 50,
                    width: width / 2.5,
                    padding: const EdgeInsets
                        .symmetric(vertical: 2.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(
                        border:
                            OutlineInputBorder(),
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight:
                                FontWeight.bold,
                            color: blackColor),
                        hintText: "50",
                      ),
                    )),
              ],
            )
          ],
        )
      ]),
    );
  }
}
