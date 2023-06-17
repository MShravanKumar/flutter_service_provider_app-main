import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Apis/api_helper.dart';
import 'package:flutter_service_provider_app/Model/provider_services_by_user_model.dart';
import 'package:flutter_service_provider_app/Screens/Catelog/screens/add_more_service_screen.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Apis/api_constants.dart';

class AddServiceScreen extends StatefulWidget {
  const AddServiceScreen(
      {Key? key,
      required this.providerServicesList,
      this.serviceId,
      this.categoryId})
      : super(key: key);
  final List<ProviderService>
      providerServicesList;
  final int? serviceId;
  final int? categoryId;
  @override
  State<AddServiceScreen> createState() =>
      _AddServiceScreenState();
}

class _AddServiceScreenState
    extends State<AddServiceScreen> {
  // List<String> items = [
  //   'Category 1',
  //   'Category 2',
  //   'Category 3',
  //   'Category 4',
  //   'Category 5',
  //   'Category 6',
  // ];
  ProviderService? _chosenValue;
  TextEditingController subServiceController =
      TextEditingController();
  TextEditingController priceCtrl =
      TextEditingController();
  TextEditingController priceAfterDiscountCtrl =
      TextEditingController();
  TextEditingController enterTimeCtrl =
      TextEditingController();
  TextEditingController descriptionCtrl =
      TextEditingController();
  TextEditingController addOnServiceCtrl =
      TextEditingController();
  TextEditingController enterPriceCtrl =
      TextEditingController();
  String addHeadingctrl = "";
  String addSubPointCtrl = "";
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
        title: const Text("Add Service"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              const Text(
                "Service Information and Details",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),
              SizedBox(
                // color: redColor,
                height: height / 4.5,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      children: [
                        Container(
                            height: 50,
                            width: width / 1.7,
                            padding:
                                const EdgeInsets
                                        .symmetric(
                                    vertical:
                                        2.0),
                            child: TextFormField(
                              controller:
                                  subServiceController,
                              decoration:
                                  const InputDecoration(
                                border:
                                    OutlineInputBorder(),
                                hintStyle:
                                    TextStyle(
                                        fontSize:
                                            15),
                                hintText:
                                    "Enter the name of Sub-service",
                              ),
                            )),
                        const SizedBox(height: 8),
                        Container(
                            height: 50,
                            width: width / 2.7,
                            padding:
                                const EdgeInsets
                                        .symmetric(
                                    vertical:
                                        2.0),
                            child: TextFormField(
                              controller:
                                  priceCtrl,
                              decoration:
                                  const InputDecoration(
                                border:
                                    OutlineInputBorder(),
                                hintStyle:
                                    TextStyle(
                                        fontSize:
                                            15),
                                hintText:
                                    "₹ Price",
                              ),
                            )),
                        const SizedBox(height: 8),
                        Container(
                            height: 50,
                            width: width / 2.7,
                            padding:
                                const EdgeInsets
                                        .symmetric(
                                    vertical:
                                        2.0),
                            child: TextFormField(
                              controller:
                                  priceAfterDiscountCtrl,
                              decoration:
                                  const InputDecoration(
                                border:
                                    OutlineInputBorder(),
                                hintStyle:
                                    TextStyle(
                                        fontSize:
                                            15),
                                hintText:
                                    "₹Price After Discount ",
                              ),
                            )),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 160,
                      width: width / 3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  ImagesView
                                      .addImageImg),
                              fit: BoxFit.fill)),
                    )
                  ],
                ),
              ),
              const Divider(
                  height: 2, color: greyColor),
              const SizedBox(height: 5),
              const Text(
                "Service",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: greyColor)),
                padding: const EdgeInsets.only(
                    left: 10, right: 10),
                child: DropdownButton<
                    ProviderService>(
                  value: _chosenValue,
                  iconSize: 28,
                  itemHeight: 50,
                  isExpanded: true,
                  focusColor: lightblue,
                  underline: const SizedBox(),
                  style: const TextStyle(
                      color: blackColor),
                  items: widget
                      .providerServicesList
                      .map<
                              DropdownMenuItem<
                                  ProviderService>>(
                          (ProviderService
                              value) {
                    return DropdownMenuItem<
                        ProviderService>(
                      value: value,
                      child: Text(
                          value.serviceName ??
                              ""),
                    );
                  }).toList(),
                  hint: const Text(
                    "Please Select Service Category",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w400),
                  ),
                  onChanged:
                      (ProviderService? value) {
                    setState(() {
                      _chosenValue = value!;
                    });
                  },
                ),
              ),
              const Divider(
                  height: 2, color: greyColor),
              const SizedBox(height: 10),
              const Text(
                "Total time to Complete the service",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Container(
                  height: 50,
                  width: width / 2.7,
                  padding:
                      const EdgeInsets.symmetric(
                          vertical: 2.0),
                  child: TextFormField(
                    controller: enterTimeCtrl,
                    decoration:
                        const InputDecoration(
                      border:
                          OutlineInputBorder(),
                      hintStyle:
                          TextStyle(fontSize: 15),
                      hintText: "₹ Enter time",
                    ),
                  )),
              const SizedBox(height: 5),
              const Divider(
                  height: 2, color: greyColor),
              const SizedBox(height: 10),
              const Text(
                "Description",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: descriptionCtrl,
                maxLines: 4,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintStyle:
                      TextStyle(fontSize: 15),
                  hintText:
                      "Write a Brief Description about your Service",
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                  height: 2, color: greyColor),
              const SizedBox(height: 10),
              const Text(
                "Add-On Services",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(
                            top: 10),
                    child: Image.asset(
                      IconsView.fastForwardIcon,
                      scale: 2,
                    ),
                  ),
                  const Spacer(),
                  Container(
                      height: 50,
                      width: width / 1.9,
                      padding: const EdgeInsets
                              .symmetric(
                          vertical: 2.0),
                      child: TextFormField(
                        controller:
                            addOnServiceCtrl,
                        decoration:
                            const InputDecoration(
                          border:
                              OutlineInputBorder(),
                          hintStyle: TextStyle(
                              fontSize: 15),
                          hintText:
                              "Enter a Add-On Service",
                        ),
                      )),
                  const Spacer(),
                  Container(
                      height: 50,
                      width: width / 3.3,
                      padding: const EdgeInsets
                              .symmetric(
                          vertical: 2.0),
                      child: TextFormField(
                        controller:
                            enterPriceCtrl,
                        decoration:
                            const InputDecoration(
                          border:
                              OutlineInputBorder(),
                          hintStyle: TextStyle(
                              fontSize: 15),
                          hintText:
                              "₹ Enter Price",
                        ),
                      )),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(
                              25),
                      border: Border.all(
                          color: blueColor)),
                  height: 45,
                  alignment: Alignment.center,
                  width: width / 1.8,
                  child: const Text(
                    "Add More Add-On Service",
                    style: TextStyle(
                        color: blueColor,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Divider(
                  height: 2, color: greyColor),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AddMoreServiceScreen(
                          addMoreInformation: (
                              {addHeading,
                              addSubPoint}) {
                            addHeadingctrl =
                                addHeading ?? '';
                            addSubPointCtrl =
                                addSubPointCtrl;
                            setState(() {});
                          },
                        ),
                      ));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: lightblue,
                        borderRadius:
                            BorderRadius.circular(
                                25),
                        border: Border.all(
                            color: blueColor)),
                    height: 45,
                    alignment: Alignment.center,
                    child: const Text(
                      "Add more Information",
                      style: TextStyle(
                          color: blueColor,
                          fontSize: 16,
                          fontWeight:
                              FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius
                                  .circular(5),
                          border: Border.all(
                              color: blueColor)),
                      height: 45,
                      alignment: Alignment.center,
                      width: width / 1.8,
                      child: const Text(
                        "View as Customer",
                        style: TextStyle(
                            color: blueColor,
                            fontSize: 16,
                            fontWeight:
                                FontWeight.w500),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () async {
                        SharedPreferences prefs =
                            await SharedPreferences
                                .getInstance();
                        var userID = prefs
                            .getInt('userId');
                        Map<String, dynamic>
                            addNewServiceParms = {
                          "name":
                              subServiceController
                                  .text,
                          "image":
                              "yfewdyubvdwiufgewf",
                          "price": priceCtrl.text,
                          "user_id": userID,
                          "category_id":
                              widget.categoryId,
                          "service_id":
                              widget.serviceId,
                          "description":
                              descriptionCtrl.text
                        };
                        var userReg =
                            await ApiHelpers()
                                .addNewSUBService(
                                    addSUbService,
                                    addNewServiceParms);
                        if (userReg != null) {
                          if (userReg['status'] ==
                              200) {
                            Map<String, dynamic>
                                addAddonServiceParms =
                                {
                              "user_id":
                                  1683830383041,
                              "category_id":
                                  1684432997054,
                              "service_id":
                                  1234567890,
                              "sub_service_id":
                                  1685277577252,
                              "name": "Clean Up",
                              "price": 200
                            };
                            Map<String, dynamic>
                                addMoreInformation =
                                {
                              "user_id":
                                  1683830383041,
                              "category_id":
                                  1684432997054,
                              "service_id":
                                  1234567890,
                              "sub_service_id":
                                  1685277577252,
                              "heading":
                                  "Information",
                              "sub_points":
                                  "['one', 'two', 'three']"
                            };
                          }
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius:
                              BorderRadius
                                  .circular(5),
                        ),
                        height: 45,
                        alignment:
                            Alignment.center,
                        width: width / 3.5,
                        child: const Text(
                          "Save",
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight:
                                  FontWeight
                                      .w500),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
