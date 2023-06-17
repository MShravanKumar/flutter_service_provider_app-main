import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

class GalleryView extends StatefulWidget {
  const GalleryView({Key? key}) : super(key: key);

  @override
  State<GalleryView> createState() =>
      _GalleryViewState();
}

class _GalleryViewState
    extends State<GalleryView> {
  List<String> data = [
    ImagesView.dummyImg,
    ImagesView.dummyImg,
    ImagesView.dummyImg,
    ImagesView.dummyImg,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: greyColor,
            )),
        title: const Text(
          "Radhika’s Wedding",
          style: TextStyle(color: greyColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const Text(
              "Upload Photos or Video to the album",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: data.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisSize:
                            MainAxisSize.min,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            alignment:
                                Alignment.center,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        ImagesView
                                            .addmoreImg),
                                    fit: BoxFit
                                        .fill),
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                            5)),
                          ),
                          const Text(
                              "Nothing to show here"),
                        ],
                      ),
                    )
                  : GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        ...data.map(
                          (e) => InkWell(
                            onTap: () {
                              debugPrint(
                                  e.toString());
                            },
                            child: Container(
                              alignment: Alignment
                                  .center,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(
                                              e),
                                      fit: BoxFit
                                          .fill),
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              5)),
                            ),
                          ),
                        ),

                        /// add button
                        Container(
                          alignment:
                              Alignment.center,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                      ImagesView
                                          .addImageImg),
                                  fit: BoxFit
                                      .fill),
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                          5)),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
