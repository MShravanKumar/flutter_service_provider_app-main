import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Apis/api_helper.dart';
import 'package:flutter_service_provider_app/Model/provider_services_by_user_model.dart';
import 'package:flutter_service_provider_app/Screens/Catelog/screens/add_service_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Model/subservices_by_user_id_and_service_id_model.dart';
import '../../../Utils/color_constants.dart';
import '../../../Utils/images_constants.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({
    Key? key,
    required this.providerServicesList,
  }) : super(key: key);
  final List<ProviderService>
      providerServicesList;

  @override
  State<ServiceScreen> createState() =>
      _ServiceScreenState();
}

class _ServiceScreenState
    extends State<ServiceScreen> {
  ProviderService? selectedProService;
  List<SubService>? subServiceList;
  int? serviceById;
  int? categoryById;
  @override
  void initState() {
    getSubServiceByUserId(
        serviceId: "", flag: "all");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton.extended(
        label:
            const Text("   Add New Category   "),
        backgroundColor: blueColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    AddServiceScreen(
                        serviceId: serviceById,
                        categoryId: categoryById,
                        providerServicesList: widget
                            .providerServicesList),
              ));
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) =>
          //           const AddCategoryScreen(),
          //     ));
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation
              .centerFloat,
      body: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.all(5.0),
                  child: GestureDetector(
                      onTap: () async {
                        selectedProService = null;
                        getSubServiceByUserId(
                            serviceId: "",
                            flag: "all");
                        // getbyIdSUBservice = await ApiHelpers()
                        //     .getByIdSubServices(
                        //         id: subService
                        //             .subServiceId
                        //             .toString());
                        setState(() {});
                      },
                      child: Container(
                        alignment:
                            Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius
                                  .circular(20),
                          color:
                              selectedProService ==
                                      null
                                  ? blueColor
                                  : whiteColor,
                        ),
                        width: 150,
                        padding:
                            const EdgeInsets.all(
                                4.0),
                        child: Align(
                          alignment:
                              Alignment.center,
                          child: Text(
                            "All",
                            style: TextStyle(
                                color: selectedProService ==
                                        null
                                    ? whiteColor
                                    : blueColor,
                                fontSize: 14,
                                fontWeight:
                                    FontWeight
                                        .w500),
                          ),
                        ),
                      )),
                ),
                Expanded(
                  child: ListView.builder(
                    physics:
                        const BouncingScrollPhysics(),
                    itemCount: widget
                        .providerServicesList
                        .length,
                    scrollDirection:
                        Axis.horizontal,
                    itemBuilder:
                        (context, index) {
                      ProviderService?
                          proService =
                          widget.providerServicesList[
                              index];
                      return Padding(
                        padding:
                            const EdgeInsets.all(
                                5.0),
                        child: GestureDetector(
                            onTap: () async {
                              selectedProService =
                                  proService;
                              getSubServiceByUserId(
                                serviceId:
                                    selectedProService!
                                        .serviceId
                                        .toString(),
                                flag: "single",
                              );

                              setState(() {});
                            },
                            child: Container(
                              alignment: Alignment
                                  .center,
                              decoration:
                                  BoxDecoration(
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                            20),
                                color: selectedProService ==
                                        proService
                                    ? blueColor
                                    : whiteColor,
                              ),
                              width: 150,
                              padding:
                                  const EdgeInsets
                                      .all(4.0),
                              child: Align(
                                alignment:
                                    Alignment
                                        .center,
                                child: Text(
                                  proService
                                          .serviceName ??
                                      "",
                                  style: TextStyle(
                                      color: selectedProService ==
                                              proService
                                          ? whiteColor
                                          : blueColor,
                                      fontSize:
                                          14,
                                      fontWeight:
                                          FontWeight
                                              .w500),
                                ),
                              ),
                            )),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          subServiceList == null
              ? const SizedBox.shrink()
              : Expanded(
                  child: ListView.builder(
                  itemCount:
                      subServiceList?.length,
                  //  getbyIdSUBservice.,
                  itemBuilder: (context, index) {
                    SubService subService =
                        subServiceList![index];
                    return Padding(
                      padding:
                          const EdgeInsets.only(
                              left: 8,
                              right: 8,
                              bottom: 8),
                      child: Card(
                        child: Row(
                          children: [
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets
                                      .all(10.0),
                              child: Container(
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius
                                            .circular(
                                                15),
                                    image: DecorationImage(
                                        image: AssetImage(subService ==
                                                null
                                            ? ImagesView
                                                .dummyImg
                                            : subService
                                                .serviceImage!))),
                              ),
                            )),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                      const EdgeInsets
                                              .all(
                                          4.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            subService.serviceName ??
                                                "",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Spacer(),
                                          IconButton(
                                              onPressed:
                                                  () {},
                                              icon:
                                                  const Icon(Icons.more_vert))
                                        ],
                                      ),
                                      Text(
                                        subService
                                                .description ??
                                            "",
                                        style: const TextStyle(
                                            color:
                                                greyColor),
                                      ),
                                      const SizedBox(
                                          height:
                                              10),
                                      Row(
                                        children: [
                                          Text(
                                            subService
                                                .servicePrice
                                                .toString(),
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap:
                                                () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //       builder: (context) => AddServiceScreen(),
                                              //     ));
                                            },
                                            child: Container(
                                                height: 35,
                                                decoration: BoxDecoration(color: lightRedColor, borderRadius: BorderRadius.circular(20)),
                                                alignment: Alignment.center,
                                                width: 130,
                                                child: const Text(
                                                  "Edit Service",
                                                  style: TextStyle(color: whiteColor, fontSize: 14, fontWeight: FontWeight.w500),
                                                )),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                ))
        ],
      ),
    );
  }

  getSubServiceByUserId(
      {required String serviceId,
      required String flag}) async {
    SharedPreferences prefs =
        await SharedPreferences.getInstance();
    var userID = prefs.getInt('userId');

    Map<String, dynamic> params = {
      "user_id": "${userID}",
      "service_id": serviceId,
      "flag": flag
    };

    subServiceList = await ApiHelpers()
        .getSubServicesByUserIdAndService(
            params: params);
    categoryById =
        subServiceList?.first.categoryId;
    serviceById = subServiceList?.first.serviceId;
    setState(() {});
  }
}
