// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Language_spoke_screen/select_work_category.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/ProfileScreen/profile_screen.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Apis/api_constants.dart';
import '../../Apis/api_helper.dart';
import '../../Model/getProvider_service_model_by_cat.dart';
import '../../Model/work_category_model.dart';

class SelectYourProvider extends StatefulWidget {
  const SelectYourProvider(
      {super.key, required this.selectedId});
  final int selectedId;
  @override
  State<SelectYourProvider> createState() =>
      _SelectYourProviderState();
}

class _SelectYourProviderState
    extends State<SelectYourProvider> {
  bool isbool = false;

  List<GetProviderServiceCategory>
      workCategorylist = [];
  int? selectedCatId;
  Set<int> selectedCatset = {};
  String? language;
  @override
  void initState() {
    updateSelectedWorkCategory();

    super.initState();
  }

  updateSelectedWorkCategory() async {
    workCategorylist = await ApiHelpers()
        .fetchProviderServiceCategory(
            cat:
                getproviderservicesbyworkcategory +
                    widget.selectedId.toString());

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    double ht =
        MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
              "Select Service You Provide"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            mainAxisAlignment:
                MainAxisAlignment.start,
            children: [
              const Text(
                "Please Select Service You Provide ",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  itemCount:
                      workCategorylist.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: lightblueColor,
                      child: CheckboxListTile(
                        title: Text(
                            workCategorylist[
                                        index]
                                    .serviceName ??
                                ""),
                        value: workCategorylist[
                                index]
                            .isSelected,
                        onChanged: (value) {
                          workCategorylist[index]
                                  .isSelected =
                              value!;
                          selectedCatId =
                              workCategorylist[
                                      index]
                                  .serviceId;
                          selectedCatset.add(
                              selectedCatId!);
                          setState(() {});
                        },
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.all(8.0),
                child: MaterialButton(
                    color: blueColor,
                    minWidth: wt,
                    onPressed: () async {
                      if (selectedCatId == null) {
                        Fluttertoast.showToast(
                            msg:
                                "Please select a language",
                            toastLength: Toast
                                .LENGTH_SHORT,
                            gravity:
                                ToastGravity.TOP,
                            backgroundColor:
                                Colors.red,
                            textColor:
                                Colors.white,
                            fontSize: 16.0);
                      } else {
                        SharedPreferences prefs =
                            await SharedPreferences
                                .getInstance();
                        var userID = prefs
                            .getInt('userId');
                        Map<String, dynamic>
                            params = {
                          "user_id": userID,
                          "category_id":
                              widget.selectedId,
                          "service_ids":
                              selectedCatset
                                  .toList(),
                          "flag": "provider"
                        };
                        var userReg =
                            await ApiHelpers()
                                .updatePutData(
                                    updateProviderservicesbyworkcategory,
                                    params);
                        if (userReg != null) {
                          if (userReg['status'] ==
                              200) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          const ProfileScreen(),
                                ));
                          } else if (userReg[
                                  'message'] !=
                              null) {
                            Fluttertoast.showToast(
                                msg: userReg[
                                        'message'] ??
                                    "User Already Registered",
                                toastLength: Toast
                                    .LENGTH_SHORT,
                                gravity:
                                    ToastGravity
                                        .CENTER,
                                backgroundColor:
                                    Colors.red,
                                textColor:
                                    Colors.white,
                                fontSize: 16.0);
                          }
                        } else {
                          Fluttertoast.showToast(
                              msg:
                                  "User Already Registered",
                              toastLength: Toast
                                  .LENGTH_SHORT,
                              gravity:
                                  ToastGravity
                                      .TOP,
                              backgroundColor:
                                  Colors.red,
                              textColor:
                                  Colors.white,
                              fontSize: 16.0);
                        }
                      }
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          color: whiteColor),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
