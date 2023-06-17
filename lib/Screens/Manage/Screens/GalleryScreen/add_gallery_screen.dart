import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/GalleryScreen/gallery_view.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

class AddGalleryScreen extends StatelessWidget {
  const AddGalleryScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton.extended(
        label: const Text(
            "   Create a New Album   "),
        backgroundColor: blueColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const GalleryView(),
              ));
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation
              .centerFloat,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Gallary"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const Text(
              "Upload Photos or Videos to Your Gallary",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Image.asset(
              ImagesView.addImageImg,
              scale: 3.5,
            ),
            const SizedBox(height: 8),
            const Divider(
                height: 1, color: greyColor),
            const SizedBox(height: 10),
            const Text(
              "Upload Photos to Albums",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.all(
                              8.0),
                      child: Row(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        ImagesView
                                            .dummyImg),
                                    fit: BoxFit
                                        .fill)),
                          ),
                          const SizedBox(
                              width: 10),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,
                            children: const [
                              SizedBox(
                                  height: 10),
                              Text(
                                "Sreya Bose’s Wedding ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight:
                                        FontWeight
                                            .bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Puri",
                                style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        greyColor,
                                    fontWeight:
                                        FontWeight
                                            .bold),
                              ),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons
                                    .arrow_forward_ios_rounded,
                                color: greyColor,
                              ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
