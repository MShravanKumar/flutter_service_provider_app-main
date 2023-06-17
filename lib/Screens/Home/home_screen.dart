import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Home/home_screen_listview.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    double width =
        MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Image.asset(ImagesView.getMeImg,
                scale: 2.8),
            Image.asset(ImagesView.businessAppImg,
                scale: 3)
          ],
        ),
        actions: [
          Image.asset(
            IconsView.cartIcon,
            scale: 3.5,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu))
        ],
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Container(
            height: 35,
            color: lightblue,
            child: Row(
              children: [
                const SizedBox(width: 15),
                const Icon(Icons.circle,
                    color: greenColor, size: 16),
                const SizedBox(width: 10),
                const Text(
                  "Active color",
                  style: TextStyle(
                      fontWeight:
                          FontWeight.bold),
                ),
                const Spacer(),
                Switch(
                  activeColor: greenColor,
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
                const SizedBox(width: 15),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding:
                            const EdgeInsets.all(
                                10.0),
                        child: Column(
                          children: [
                            const Text(
                              "Complete Your Profile Updation",
                              style: TextStyle(
                                  fontSize: 18),
                            ),
                            const SizedBox(
                                height: 10),
                            const Text(
                              "Update and optimize your Profile to get maximum Leads",
                              style: TextStyle(
                                  color:
                                      greyColor),
                            ),
                            const SizedBox(
                                height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets
                                          .only(
                                      right: 50,
                                      bottom: 8,
                                      top: 5),
                              child: Container(
                                padding:
                                    const EdgeInsets
                                        .all(8),
                                decoration: BoxDecoration(
                                    color:
                                        lightblue,
                                    borderRadius:
                                        BorderRadius
                                            .circular(
                                                5)),
                                width: 130,
                                alignment:
                                    Alignment
                                        .center,
                                child: const Text(
                                  "Update Profile",
                                  style: TextStyle(
                                      color:
                                          blueColor),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        mainAxisAlignment:
                            MainAxisAlignment
                                .start,
                        children: [
                          Row(
                            crossAxisAlignment:
                                CrossAxisAlignment
                                    .end,
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .end,
                            children: [
                              IconButton(
                                  onPressed:
                                      () {},
                                  icon:
                                      const Icon(
                                    Icons
                                        .cancel_outlined,
                                    color:
                                        greyColor,
                                  )),
                            ],
                          ),
                          const SizedBox(
                              height: 35),
                          Center(
                            child:
                                CircularPercentIndicator(
                              radius: 30.0,
                              lineWidth: 7.0,
                              percent: 0.6,
                              center: const Text(
                                  "60%"),
                              progressColor:
                                  Colors.green,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: 8, bottom: 8),
            child: Text(
              "Dashboard",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: width,
            child: Row(
              children: [
                const Spacer(),
                Container(
                  height: 100,
                  width: width / 2 - 15,
                  padding:
                      const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: greyLightColor,
                      borderRadius:
                          BorderRadius.circular(
                              5)),
                  child: Column(
                    children: [
                      const Text(
                        "New Call Request Recieved",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight:
                                FontWeight.w500,
                            color: blueColor),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Text(
                            "8",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight:
                                    FontWeight
                                        .bold),
                          ),
                          const Spacer(),
                          Image.asset(ImagesView
                              .callRequests),
                          const SizedBox(
                              width: 10),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: width / 2.1 - 15,
                  height: 100,
                  padding:
                      const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: greyLightColor,
                      borderRadius:
                          BorderRadius.circular(
                              5)),
                  child: Column(
                    children: [
                      const Text(
                        "New Orders Recieved",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight:
                                FontWeight.w500,
                            color: greenColor),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Text(
                            "8",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight:
                                    FontWeight
                                        .bold),
                          ),
                          const Spacer(),
                          Image.asset(ImagesView
                              .orderRecieved),
                          const SizedBox(
                              width: 10),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 8, top: 8),
            child: Text(
              "My Insights",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8, right: 8, top: 10),
            child: Row(
              children: [
                Image.asset(
                    ImagesView.markGroupImg,
                    scale: 3),
                const SizedBox(width: 10),
                const Text(
                  "439 Views in last 30 Days",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "All Leads",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w500),
                ),
                const Spacer(),
                Image.asset(IconsView.filterIcon,
                    scale: 3)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return const HomeScreenListView();
              },
            ),
          )
        ],
      ),
    );
  }
}
