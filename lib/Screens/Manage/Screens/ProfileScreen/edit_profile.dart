import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

import '../../../../Utils/color_constants.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key})
      : super(key: key);

  @override
  State<EditProfileScreen> createState() =>
      _EditProfileScreenState();
}

class _EditProfileScreenState
    extends State<EditProfileScreen> {
  List<String> items = [
    'Bhubaneswar',
    'Hyderabad',
    'Delhi',
    'Banguluru',
  ];
  String? _chosenValue;
  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: blackColor,
            )),
        elevation: 0,
        titleTextStyle: const TextStyle(
            color: blackColor,
            fontSize: 16,
            fontWeight: FontWeight.w500),
        title: const Align(
            alignment: Alignment.center,
            child: Text("Edit Profile")),
        actions: const [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                "save",
                style: TextStyle(
                    color: blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Container(
              height: height / 3.5,
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                          ImagesView.smileProfile,
                          scale: 2.5),
                      Positioned(
                          right: 20,
                          bottom: 0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration:
                                  const BoxDecoration(
                                      color:
                                          whiteColor,
                                      shape: BoxShape
                                          .circle),
                              child: const Icon(
                                Icons
                                    .camera_alt_outlined,
                                color: blueColor,
                              ),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Employ ID: 123456",
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Photographer",
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Divider(
                height: 1, color: blackColor),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Username",
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w500),
                  ),
                  SizedBox(
                      height: 35,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText:
                                "Service Provider Name",
                            helperStyle: TextStyle(
                                color: blackColor,
                                fontWeight:
                                    FontWeight
                                        .bold)),
                      )),
                  const SizedBox(height: 10),
                  const Text(
                    "Email",
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w500),
                  ),
                  SizedBox(
                      height: 35,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText:
                                "serviceprovider@gmail.com",
                            helperStyle: TextStyle(
                                color: blackColor,
                                fontWeight:
                                    FontWeight
                                        .bold)),
                      )),
                  const SizedBox(height: 10),
                  const Text(
                    "Phone",
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w500),
                  ),
                  SizedBox(
                      height: 35,
                      child: TextFormField(
                        decoration:
                            const InputDecoration(
                                hintText:
                                    "9876543210",
                                helperStyle: TextStyle(
                                    color:
                                        blackColor,
                                    fontWeight:
                                        FontWeight
                                            .bold)),
                      )),
                  const SizedBox(height: 10),
                  const Text(
                    "Gender",
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w500),
                  ),
                  SizedBox(
                      height: 35,
                      child: TextFormField(
                        decoration:
                            const InputDecoration(
                                hintText: "Male",
                                helperStyle: TextStyle(
                                    color:
                                        blackColor,
                                    fontWeight:
                                        FontWeight
                                            .bold)),
                      )),
                  const SizedBox(height: 10),
                  const Text(
                    "City",
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w500),
                  ),
                  DropdownButton<String>(
                    value: _chosenValue,
                    iconSize: 28,
                    itemHeight: 50,
                    isExpanded: true,
                    focusColor: lightblue,
                    style: const TextStyle(
                        color: blackColor),
                    items: items.map<
                            DropdownMenuItem<
                                String>>(
                        (String value) {
                      return DropdownMenuItem<
                          String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    hint: Text(
                      items.first,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: blackColor,
                          fontSize: 16,
                          fontWeight:
                              FontWeight.w400),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _chosenValue = value!;
                      });
                    },
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
