import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

import '../../../Utils/color_constants.dart';

class AddMoreServiceScreen
    extends StatefulWidget {
  const AddMoreServiceScreen(
      {Key? key,
      required this.addMoreInformation})
      : super(key: key);
  final Function(
      {String? addHeading,
      String? addSubPoint}) addMoreInformation;
  @override
  State<AddMoreServiceScreen> createState() =>
      _AddMoreServiceScreenState();
}

class _AddMoreServiceScreenState
    extends State<AddMoreServiceScreen> {
  TextEditingController addHeadingCtrl =
      TextEditingController();
  TextEditingController addSubPointsCtrl =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width =
        MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          title:
              const Text("Add More Information"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                const Text(
                  "Add a Heading",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w500),
                ),
                const SizedBox(height: 15),
                Container(
                    height: 50,
                    padding: const EdgeInsets
                        .symmetric(vertical: 2.0),
                    child: TextFormField(
                      controller: addHeadingCtrl,
                      decoration:
                          const InputDecoration(
                        border:
                            OutlineInputBorder(),
                        hintStyle: TextStyle(
                            fontSize: 15),
                        hintText:
                            "Enter Title of your information",
                      ),
                    )),
                const SizedBox(height: 15),
                const Text(
                  "Add Sub-Points",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                        height: 50,
                        width: width / 1.8,
                        padding: const EdgeInsets
                                .symmetric(
                            vertical: 2.0),
                        child: TextFormField(
                          controller:
                              addSubPointsCtrl,
                          decoration:
                              const InputDecoration(
                            border:
                                OutlineInputBorder(),
                            hintStyle: TextStyle(
                                fontSize: 15),
                            hintText:
                                "Enter Sub-Point",
                          ),
                        )),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: lightblue,
                          borderRadius:
                              BorderRadius
                                  .circular(5),
                          border: Border.all(
                              color: blueColor)),
                      height: 45,
                      alignment: Alignment.center,
                      width: width / 3,
                      child: const Text(
                        "Add Point +",
                        style: TextStyle(
                            color: blueColor,
                            fontSize: 16,
                            fontWeight:
                                FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Text(
                  "Example",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Image.asset(
                    ImagesView.exampleImg),
                Padding(
                    padding:
                        const EdgeInsets.all(8.0),
                    child: MaterialButton(
                        color: blueColor,
                        minWidth: width,
                        onPressed: () {
                          widget.addMoreInformation(
                              addHeading:
                                  addHeadingCtrl
                                      .text,
                              addSubPoint:
                                  addSubPointsCtrl
                                      .text);
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Add Information ",
                          style: TextStyle(
                              color: whiteColor),
                        ))),
              ],
            ),
          ),
        ));
  }
}
