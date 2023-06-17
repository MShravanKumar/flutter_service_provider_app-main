import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/BuyProductsScreen/CartScreen/my_cart_screen.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

class BuyProductsScreenView
    extends StatefulWidget {
  const BuyProductsScreenView({Key? key})
      : super(key: key);

  @override
  State<BuyProductsScreenView> createState() =>
      _BuyProductsScreenViewState();
}

class _BuyProductsScreenViewState
    extends State<BuyProductsScreenView> {
  List imgList = [
    'https://i.dlpng.com/static/png/6838599_preview.png',
    'https://i.dlpng.com/static/png/6838599_preview.png',
    'https://i.dlpng.com/static/png/6838599_preview.png',
    'https://i.dlpng.com/static/png/6838599_preview.png',
  ];
  int _current = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    double width =
        MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          mainAxisAlignment:
              MainAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 5),
                Card(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                          Icons.arrow_back_ios)),
                ),
                const Spacer(),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(
                              25)),
                  child: IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                          height: 200.0,
                          initialPage: 0,
                          reverse: false,
                          autoPlay: false,
                          enableInfiniteScroll:
                              false,
                          scrollDirection:
                              Axis.horizontal,
                          onPageChanged:
                              (index, fn) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      items:
                          imgList.map((imgUrl) {
                        return Builder(
                          builder: (BuildContext
                              context) {
                            return Stack(
                              children: [
                                Container(
                                  height: 200.0,
                                  width:
                                      width / 1.6,
                                  alignment:
                                      Alignment
                                          .topRight,
                                  decoration: const BoxDecoration(
                                      color: whiteColor,
                                      image: DecorationImage(
                                          image: AssetImage(
                                            ImagesView
                                                .sampleImage,
                                          ),
                                          fit: BoxFit.fitHeight)),
                                  child:
                                      const Padding(
                                    padding:
                                        EdgeInsets
                                            .all(
                                                10.0),
                                    child: Text(
                                      "In Stock",
                                      style: TextStyle(
                                          color:
                                              greenColor),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center,
                      children: map<Widget>(
                          imgList, (index, url) {
                        return Padding(
                          padding:
                              const EdgeInsets
                                  .only(left: 5),
                          child: Container(
                            width: 10.0,
                            height: 10.0,
                            decoration:
                                BoxDecoration(
                              shape:
                                  BoxShape.circle,
                              color: _current ==
                                      index
                                  ? blueColor
                                  : greyColor,
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  const Expanded(
                      flex: 2,
                      child: Text(
                        "Switchon Waterproof Barber Multi Purpose Nylon Thin Apron",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.w500),
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .center,
                        mainAxisAlignment:
                            MainAxisAlignment
                                .center,
                        children: const [
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: Card(
                              color:
                                  lightblueColor,
                              child: Icon(
                                Icons.add,
                                color: blueColor,
                              ),
                            ),
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                                fontSize: 20,
                                color: blueColor,
                                fontWeight:
                                    FontWeight
                                        .w500),
                          ),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: Card(
                              color:
                                  lightblueColor,
                              child: Icon(
                                  color:
                                      blueColor,
                                  Icons.remove),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    itemSize: 20,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding:
                        const EdgeInsets.all(0),
                    itemBuilder: (context, _) =>
                        const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      // print(rating);
                    },
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "35",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w500),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: const [
                  Text(
                    "₹180",
                    style: TextStyle(
                        fontSize: 20,
                        color: blackColor,
                        fontWeight:
                            FontWeight.w500),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "₹270",
                    style: TextStyle(
                        fontSize: 20,
                        color: greyColor,
                        decoration: TextDecoration
                            .lineThrough,
                        fontWeight:
                            FontWeight.w500),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Description:",
                style: TextStyle(
                    fontSize: 20,
                    color: blackColor,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Text(
                "WATERPROOF AND ANTI-STATIC The Confidence Hair Salon Nylon Cape is made With pongee, waterproof and anti-static.FIT VARYING NECK SIZES There are 6 adjustable snap closures to fit varying neck sizes, flexible enough to meet all your needs. Wipe clean, machine-wash warm, or dry-clean.",
                style: TextStyle(
                  fontSize: 18,
                  color: blackColor,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Text(
                "Delivering by: 26 July 2021",
                style: TextStyle(
                    fontSize: 20,
                    color: blackColor,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 55,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          const MyCart()));
                        },
                        child: Container(
                            color: lightblueColor,
                            alignment:
                                Alignment.center,
                            child: const Text(
                              "Add To Cart",
                              style: TextStyle(
                                  fontSize: 18,
                                  color:
                                      blueColor,
                                  fontWeight:
                                      FontWeight
                                          .w500),
                            ))),
                  ),
                  Expanded(
                      child: Container(
                          color: buttonColor,
                          alignment:
                              Alignment.center,
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                                fontSize: 18,
                                color: whiteColor,
                                fontWeight:
                                    FontWeight
                                        .w500),
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
