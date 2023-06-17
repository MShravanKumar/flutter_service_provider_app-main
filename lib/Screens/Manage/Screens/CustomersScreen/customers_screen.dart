import 'package:flutter/material.dart';

import '../../../../Utils/color_constants.dart';
import '../../../../Utils/images_constants.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key})
      : super(key: key);

  @override
  State<CustomerScreen> createState() =>
      _CustomerScreenState();
}

class _CustomerScreenState
    extends State<CustomerScreen>
    with TickerProviderStateMixin {
  late TabController _controller;
  int tabIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: 2, vsync: this);

    _controller.addListener(() {
      setState(() {
        tabIndex = _controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Customers"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                  Icons.search_rounded))
        ],
        bottom: TabBar(
          padding: const EdgeInsets.all(0),
          indicatorColor: whiteColor,
          onTap: (index) {},
          controller: _controller,
          tabs: const [
            Text("My Customers",
                style: TextStyle(fontSize: 18)),
            Text("Wedmist Lead",
                style: TextStyle(fontSize: 18))
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          MyCustomersTabScreen(
              isShowwebmistleadtab: false),
          MyCustomersTabScreen(
              isShowwebmistleadtab: true),
        ],
      ),
    );
  }
}

class MyCustomersTabScreen
    extends StatelessWidget {
  final bool isShowwebmistleadtab;
  const MyCustomersTabScreen({
    required this.isShowwebmistleadtab,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return Card(
            child: Column(
          children: [
            ListTile(
                leading: Stack(
                  children: [
                    Image.asset(
                      ImagesView.greenImg,
                    ),
                    const Positioned(
                      top: 8,
                      left: 17,
                      child: Text(
                        "s",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight:
                                FontWeight.bold),
                      ),
                    )
                  ],
                ),
                title: const Text(
                  "Shaurya Arya",
                  style: TextStyle(
                      color: blackColor,
                      fontWeight:
                          FontWeight.w600),
                ),
                subtitle: const Text(
                    "Smart Village, Bhubaneswar"),
                trailing: Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: greyLightColor,
                      borderRadius:
                          BorderRadius.circular(
                              5)),
                  alignment: Alignment.center,
                  child: const Text(
                    "Message",
                    style: TextStyle(
                        color: blackColor,
                        fontWeight:
                            FontWeight.w600),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8, right: 8, bottom: 8),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    mainAxisAlignment:
                        MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Service Taken From You",
                        style: TextStyle(
                            color: greyColor,
                            fontWeight:
                                FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "4 Times",
                        style: TextStyle(
                            color: blackColor,
                            fontWeight:
                                FontWeight.w600),
                      )
                    ],
                  ),
                  const Spacer(),
                  isShowwebmistleadtab
                      ? Column(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .start,
                          children: const [
                            Text(
                              "Service Taken From Other SP",
                              style: TextStyle(
                                  color:
                                      greyColor,
                                  fontWeight:
                                      FontWeight
                                          .w500),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "14 Times",
                              style: TextStyle(
                                  color:
                                      blackColor,
                                  fontWeight:
                                      FontWeight
                                          .w600),
                            )
                          ],
                        )
                      : const SizedBox(),
                ],
              ),
            )
          ],
        ));
      },
    );
  }
}
