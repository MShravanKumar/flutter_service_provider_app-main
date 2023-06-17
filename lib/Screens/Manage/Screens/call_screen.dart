import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';

import '../../Home/home_screen_listview.dart';
import '../../../Utils/images_constants.dart';

class CallRequestScreen extends StatefulWidget {
  const CallRequestScreen({Key? key})
      : super(key: key);

  @override
  State<CallRequestScreen> createState() =>
      _CallRequestScreenState();
}

class _CallRequestScreenState
    extends State<CallRequestScreen>
    with TickerProviderStateMixin {
  int currentPos = 0;
  List<String> listPaths = ["1", "2", "3", "4"];
  late TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
          title: const Text("Call Requests"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                    Icons.search_rounded))
          ],
        ),
        body: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Recent Lead activity",
                style:
                    TextStyle(color: greyColor),
              ),
            ),
            CarouselSlider.builder(
              itemCount: listPaths.length,
              options: CarouselOptions(
                  autoPlay: true,
                  height: height / 5.2,
                  onPageChanged: (index, reason) {
                    currentPos = index;
                    setState(() {});
                  }),
              itemBuilder:
                  (context, index, realIndex) {
                return SizedBox(
                    width: width,
                    child: Card(
                      color: blueColor,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset(
                              ImagesView
                                  .orderRecieved,
                            ),
                            title: const Text(
                              "Arya Das",
                              style: TextStyle(
                                  color:
                                      whiteColor),
                            ),
                            subtitle: const Text(
                              "28-11-2022, 4:54 PM",
                              style: TextStyle(
                                  color:
                                      whiteColor),
                            ),
                            trailing: IconButton(
                              icon: const Icon(
                                Icons.more_vert,
                                color: whiteColor,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets
                                        .only(
                                    top: 8,
                                    left: 8,
                                    right: 8,
                                    bottom: 8),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment
                                          .start,
                                  mainAxisAlignment:
                                      MainAxisAlignment
                                          .start,
                                  children: const [
                                    Text(
                                      "- Follow up done",
                                      style: TextStyle(
                                          color:
                                              whiteColor,
                                          fontWeight:
                                              FontWeight.w500),
                                    ),
                                    Text(
                                      "2 Days ago",
                                      style: TextStyle(
                                          color:
                                              whiteColor,
                                          fontWeight:
                                              FontWeight.w400),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Image.asset(
                                    IconsView
                                        .messageViewIcon,
                                    scale: 3.5),
                                const SizedBox(
                                    width: 15),
                                Image.asset(
                                    IconsView
                                        .callViewIcon,
                                    scale: 3.5)
                              ],
                            ),
                          )
                        ],
                      ),
                    ));
              },
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: listPaths.map((url) {
                int index =
                    listPaths.indexOf(url);
                return Container(
                  width: currentPos == index
                      ? 10.0
                      : 5.0,
                  height: 4.0,
                  margin:
                      const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: currentPos == index
                        ? BoxShape.rectangle
                        : BoxShape.circle,
                    color: currentPos == index
                        ? primaryColor
                        : greyColor,
                  ),
                );
              }).toList(),
            ),
            Container(
              height: 45,
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight:
                        Radius.circular(25)),
              ),
              child: TabBar(
                controller: _tabController,
                indicatorSize:
                    TabBarIndicatorSize.label,
                labelColor: blackColor,
                labelStyle:
                    const TextStyle(fontSize: 16),
                unselectedLabelColor: greyColor,
                tabs: const [
                  Tab(text: 'Claimed'),
                  Tab(text: 'Intrested'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  ListView.builder(
                    itemCount: 8,
                    itemBuilder:
                        (context, index) {
                      return const HomeScreenListView();
                    },
                  ),

                  // second tab bar view widget
                  ListView.builder(
                    itemCount: 8,
                    itemBuilder:
                        (context, index) {
                      return const HomeScreenListView();
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
