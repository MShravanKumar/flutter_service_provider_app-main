import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

import '../../../../../Utils/color_constants.dart';

class StoreVisitToken extends StatefulWidget {
  const StoreVisitToken({Key? key})
      : super(key: key);

  @override
  State<StoreVisitToken> createState() =>
      _StoreVisitTokenState();
}

class _StoreVisitTokenState
    extends State<StoreVisitToken> {
  int selectedStoreDate = 0;
  int selectedSlot = 0;
  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          ImagesView.dummyImg),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: const [
                Text(
                  "Rajat Electricals",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Laxmi Nagar, Bhubaneswar",
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            const Text(
              "Store Visit Tokens",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              "Select the date when you wish to visit the Store",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 8),
            SizedBox(
                height: 80,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection:
                      Axis.horizontal,
                  padding: const EdgeInsets.only(
                      top: 5, left: 5, right: 5),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        selectedStoreDate = index;
                        setState(() {});
                      },
                      child: Card(
                          shape:
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              5)),
                          child: Container(
                            decoration:
                                BoxDecoration(
                              color:
                                  selectedStoreDate ==
                                          index
                                      ? lightblue
                                      : whiteColor,
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                          10),
                              border: Border.all(
                                color: selectedStoreDate ==
                                        index
                                    ? blueColor
                                    : greyColor,
                                width: 1,
                              ),
                            ),
                            padding:
                                const EdgeInsets
                                    .all(10.0),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .center,
                              children: const [
                                TitleString(
                                    title:
                                        "Today, 14 Dec",
                                    fontSize: 16),
                                SizedBox(
                                    height: 10),
                                Text(
                                  "8 / 20 Slots Available",
                                  style: TextStyle(
                                      color:
                                          greenColor),
                                )
                              ],
                            ),
                          )),
                    );
                  },
                )),
            const SizedBox(height: 10),
            const Divider(
              height: 1,
              color: greyColor,
              endIndent: 8,
              indent: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 8, top: 10, bottom: 8),
              child: Text(
                "Select Your Slot",
                style: TextStyle(
                    color: blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 2,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius:
                      BorderRadius.circular(10),
                  border: Border.all(
                    color: greyColor,
                    width: 1,
                  ),
                ),
                child: GridView.builder(
                  padding:
                      const EdgeInsets.all(0),
                  itemCount: 15,
                  gridDelegate:
                      const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 120,
                          childAspectRatio:
                              3 / 1.8,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                  shrinkWrap: false,
                  physics:
                      const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        selectedSlot = index;
                        setState(() {});
                      },
                      child: Container(
                          height: 40,
                          alignment:
                              Alignment.center,
                          decoration:
                              BoxDecoration(
                            color: selectedSlot ==
                                    index
                                ? lightblue
                                : whiteColor,
                            borderRadius:
                                BorderRadius
                                    .circular(5),
                            border: Border.all(
                              color:
                                  selectedSlot ==
                                          index
                                      ? blueColor
                                      : greyColor,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              const Spacer(),
                              Text(
                                "Token ${index + 1}",
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight:
                                        FontWeight
                                            .w500),
                              ),
                              const Spacer(),
                              const Text(
                                "11:30 AM",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight:
                                        FontWeight
                                            .w400),
                              ),
                              const Spacer(),
                            ],
                          )),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius:
                            BorderRadius.circular(
                                5)),
                    alignment: Alignment.center,
                    child: const Text(
                      "Proceed to Book Appointment",
                      style: TextStyle(
                          fontSize: 16,
                          color: whiteColor),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TitleString extends StatelessWidget {
  final String title;
  final double fontSize;
  const TitleString(
      {Key? key,
      required this.title,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          fontFamily: "Roboto"),
    );
  }
}
