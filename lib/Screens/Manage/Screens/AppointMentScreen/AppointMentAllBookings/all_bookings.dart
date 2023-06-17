import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/AppointMentScreen/AppointMentAllBookings/store_visit_token.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';

class AllBookings extends StatelessWidget {
  const AllBookings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
              Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("All Appointments"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "See all Appointment Bookings",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.w500),
                ),
                const Spacer(),
                Card(
                  margin: const EdgeInsets.all(4),
                  child: Row(
                    children: const [
                      Icon(Icons.sort, size: 20),
                      SizedBox(width: 5),
                      Text(
                        "Sort",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight:
                                FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const StoreVisitToken(),
                        ));
                  },
                  child: Card(
                    color: whiteColor,
                    child: Padding(
                      padding:
                          const EdgeInsets.all(
                              8.0),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                  "Customer Name",
                                  style: TextStyle(
                                      fontSize:
                                          16,
                                      fontWeight:
                                          FontWeight
                                              .w500)),
                              Spacer(),
                              Icon(Icons
                                  .more_vert),
                              SizedBox(width: 5)
                            ],
                          ),
                          const SizedBox(
                              height: 4),
                          const Text("#84",
                              style: TextStyle(
                                fontSize: 12,
                              )),
                          const SizedBox(
                              height: 4),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                    color:
                                        blueColor,
                                    borderRadius:
                                        BorderRadius
                                            .circular(
                                                5)),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                        width: 8),
                                    Text(
                                        "Call Now",
                                        style: TextStyle(
                                            color:
                                                whiteColor,
                                            fontSize:
                                                16,
                                            fontWeight:
                                                FontWeight.w500)),
                                    Spacer(),
                                    Card(
                                      child:
                                          Padding(
                                        padding:
                                            EdgeInsets.all(
                                                3.0),
                                        child: Icon(
                                            Icons
                                                .arrow_forward_ios_rounded,
                                            size:
                                                18,
                                            color:
                                                blueColor),
                                      ),
                                    ),
                                    SizedBox(
                                        width: 5)
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Column(
                                children: const [
                                  Text(
                                      "2023-09-14",
                                      style: TextStyle(
                                          color:
                                              blackColor,
                                          fontSize:
                                              16,
                                          fontWeight:
                                              FontWeight.w500)),
                                  SizedBox(
                                      height: 6),
                                  Text(
                                      "9:00-9:30 am",
                                      style: TextStyle(
                                          color:
                                              blackColor,
                                          fontSize:
                                              16,
                                          fontWeight:
                                              FontWeight.w500)),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
