import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/BuyProductsScreen/buy_products_view.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

class BuyProductsScreen extends StatefulWidget {
  const BuyProductsScreen({Key? key})
      : super(key: key);

  @override
  State<BuyProductsScreen> createState() =>
      _BuyProductsScreenState();
}

class _BuyProductsScreenState
    extends State<BuyProductsScreen> {
  List<String> itemsView = [
    "Merchandize",
    "Raw Material",
    "Tools",
    "Safety Materials"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width =
        MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Buy Products"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: greyColor)),
              height: 35,
              child: Row(
                children: const [
                  SizedBox(width: 5),
                  Text(
                    "Search Product",
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 16),
                  ),
                  Spacer(),
                  Icon(Icons.search,
                      color: blueColor),
                  SizedBox(width: 5),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 40,
              width: width,
              child: ListView.builder(
                itemCount: itemsView.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      selectedIndex = index;
                      setState(() {});
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(
                              left: 5, right: 5),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius
                                    .circular(5),
                            color:
                                selectedIndex ==
                                        index
                                    ? whiteColor
                                    : lightblue,
                            border: Border.all(
                                width: 1,
                                color: selectedIndex ==
                                        index
                                    ? blueColor
                                    : whiteColor)),
                        alignment:
                            Alignment.center,
                        padding:
                            const EdgeInsets.all(
                                10),
                        child: Text(
                          itemsView[index],
                          style: const TextStyle(
                              fontSize: 16,
                              color: blueColor),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
                child: GridView.builder(
                    itemCount: 5,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent:
                                200,
                            childAspectRatio:
                                3 / 5.2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 5),
                    itemBuilder:
                        (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BuyProductsScreenView(),
                              ));
                        },
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height:
                                      height / 4,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width:
                                              1,
                                          color:
                                              greyColor)),
                                  child: Image.asset(
                                      ImagesView
                                          .sampleImage),
                                ),
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child:
                                      Container(
                                    height: 35,
                                    width: 35,
                                    alignment:
                                        Alignment
                                            .center,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(IconsView
                                                .percentageIcon),
                                            fit: BoxFit
                                                .fill)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .center,
                                      mainAxisAlignment:
                                          MainAxisAlignment
                                              .center,
                                      children: const [
                                        Text(
                                          "25%",
                                          style: TextStyle(
                                              fontSize:
                                                  12,
                                              color:
                                                  whiteColor),
                                        ),
                                        Text(
                                          "off",
                                          style: TextStyle(
                                              fontSize:
                                                  12,
                                              color:
                                                  whiteColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                                height: 3),
                            const Text(
                              "Switchon Waterproof Barber",
                              maxLines: 1,
                              overflow:
                                  TextOverflow
                                      .ellipsis,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight:
                                      FontWeight
                                          .w500),
                            ),
                            const SizedBox(
                                height: 3),
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating:
                                      3,
                                  minRating: 1,
                                  itemSize: 16,
                                  direction: Axis
                                      .horizontal,
                                  allowHalfRating:
                                      true,
                                  itemCount: 5,
                                  itemPadding:
                                      const EdgeInsets
                                          .all(0),
                                  itemBuilder:
                                      (context,
                                              _) =>
                                          const Icon(
                                    Icons.star,
                                    color: Colors
                                        .amber,
                                  ),
                                  onRatingUpdate:
                                      (rating) {
                                    // print(rating);
                                  },
                                ),
                                const Text(
                                  "35",
                                  style: TextStyle(
                                      fontSize:
                                          14,
                                      fontWeight:
                                          FontWeight
                                              .w500),
                                ),
                                const Spacer(),
                                const Text(
                                  "Out of Stock",
                                  style: TextStyle(
                                      fontSize:
                                          14,
                                      color:
                                          redColor,
                                      fontWeight:
                                          FontWeight
                                              .w500),
                                ),
                              ],
                            ),
                            const SizedBox(
                                height: 5),
                            Row(
                              children: const [
                                Text(
                                  "₹180",
                                  style: TextStyle(
                                      fontSize:
                                          18,
                                      color:
                                          blackColor,
                                      fontWeight:
                                          FontWeight
                                              .w500),
                                ),
                                SizedBox(
                                    width: 5),
                                Text(
                                  "₹270",
                                  style: TextStyle(
                                      fontSize:
                                          18,
                                      color:
                                          greyColor,
                                      decoration:
                                          TextDecoration
                                              .lineThrough,
                                      fontWeight:
                                          FontWeight
                                              .w500),
                                ),
                              ],
                            ),
                            const SizedBox(
                                height: 5),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              10),
                                  border: Border.all(
                                      width: 1,
                                      color:
                                          blueColor)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                      width: 10),
                                  Text(
                                    "Add",
                                    style: TextStyle(
                                        fontSize:
                                            18,
                                        color:
                                            blueColor,
                                        fontWeight:
                                            FontWeight
                                                .w500),
                                  ),
                                  SizedBox(
                                      width: 15),
                                  VerticalDivider(
                                      color:
                                          blueColor,
                                      width: 2),
                                  SizedBox(
                                      width: 5),
                                  Icon(
                                    Icons.add,
                                    size: 24,
                                    color:
                                        blueColor,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
