import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/ReviewsScreen/reviews_screen.dart';

import '../../../../Utils/images_constants.dart';

class ReviewsReplayScreen
    extends StatelessWidget {
  const ReviewsReplayScreen({Key? key})
      : super(key: key);

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
        title: const Text("Reviews"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const ReviewScreenTile(
                showMoreIcon: false),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                ImagesView
                                    .dummyImg),
                            fit: BoxFit.fill),
                        shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Super Awsome Makeup By Raveena",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight:
                                FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                          height: height / 3,
                          width: width / 1.3,
                          child: const Card(
                              color: Colors.white,
                              child: Padding(
                                padding:
                                    EdgeInsets
                                        .all(8.0),
                                child: TextField(
                                  maxLines:
                                      5, //or null
                                  decoration: InputDecoration
                                      .collapsed(
                                          hintText:
                                              "Enter your text here"),
                                ),
                              )))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
