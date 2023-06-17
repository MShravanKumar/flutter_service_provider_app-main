import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/ReviewsScreen/reviews_replay_screen.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key})
      : super(key: key);

  @override
  State<ReviewsScreen> createState() =>
      _ReviewsScreenState();
}

class _ReviewsScreenState
    extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text("Reviews"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const ReviewScreenTile(
                  showMoreIcon: true);
            },
          ),
        ));
  }
}

class ReviewScreenTile extends StatelessWidget {
  final bool showMoreIcon;
  const ReviewScreenTile({
    required this.showMoreIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: greyLightColor,
                      // image: DecorationImage(
                      //     image: AssetImage(
                      //         ImagesView
                      //             .dummyImg),
                      //     fit: BoxFit.fill),
                      shape: BoxShape.circle),
                  child: const Text(
                    "C",
                    style: TextStyle(
                        fontWeight:
                            FontWeight.w500,
                        color: blackColor,
                        fontSize: 24),
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  mainAxisAlignment:
                      MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Customer No. C",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight:
                              FontWeight.bold),
                    ),
                    const SizedBox(height: 2),
                    const Text("15 SEP 2022",
                        style: TextStyle(
                            fontSize: 12,
                            color: greyColor)),
                    const SizedBox(height: 2),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "(4.7)",
                          style: TextStyle(
                              color: blackColor,
                              fontWeight:
                                  FontWeight.w500,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                showMoreIcon
                    ? IconButton(
                        onPressed: () {},
                        icon: const Icon(
                            Icons.more_vert))
                    : const SizedBox()
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. ",
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ReviewsReplayScreen()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(
                                20)),
                    margin:
                        const EdgeInsets.all(0),
                    child: Padding(
                      padding:
                          const EdgeInsets.all(
                              10.0),
                      child: Row(
                        children: [
                          Image.asset(
                            ImagesView
                                .arrowiconImg,
                            scale: 2.5,
                          ),
                          const SizedBox(
                              width: 5),
                          const Text(
                            "Reply",
                            style: TextStyle(
                                fontWeight:
                                    FontWeight
                                        .w500,
                                color: blueColor,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.thumb_up_alt_outlined,
                      color: blueColor,
                    )),
                const Text(
                  "2",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                      fontSize: 16),
                ),
                const SizedBox(width: 10),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons
                          .drive_file_rename_outline_outlined,
                      color: blueColor,
                      size: 28,
                    )),
                const Text(
                  "2 Replies",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                      fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
