// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Language_spoke_screen/select_your_provider.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Apis/api_constants.dart';
import '../../Apis/api_helper.dart';
import '../../Model/work_category_model.dart';

class SelectWOrkCategory extends StatefulWidget {
  const SelectWOrkCategory({super.key});

  @override
  State<SelectWOrkCategory> createState() =>
      _SelectWOrkCategoryState();
}

class _SelectWOrkCategoryState
    extends State<SelectWOrkCategory> {
  bool isbool = false;
  int? onSelected;
  List<WorkCategory> workCategoryList = [];
  @override
  void initState() {
    updateWorkCat();
    super.initState();
  }

  updateWorkCat() async {
    workCategoryList = await ApiHelpers()
        .fetchWorkCategory(cat: apiWorkCategory);

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
          title:
              const Text("Select Work Category"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              const Text(
                "Please Select Service You Provide",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  itemCount:
                      workCategoryList.length,
                  itemBuilder: (context, index) {
                    return Card(
                        color: lightblueColor,
                        child: ListTile(
                          title: Text(
                              workCategoryList[
                                          index]
                                      .category ??
                                  ""),
                          trailing: Radio<int>(
                            value: workCategoryList[
                                    index]
                                .workCategoryId!,
                            groupValue:
                                onSelected,
                            onChanged: (value) {
                              onSelected = value!;
                              setState(() {});
                            },
                          ),
                        ));
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
                      if (onSelected == null) {
                        Fluttertoast.showToast(
                            msg:
                                "Please select a Work Category",
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
                          "work_category_id":
                              onSelected,
                          "flag": "provider"
                        };
                        var userReg =
                            await ApiHelpers()
                                .updatePutData(
                                    updateWorkCategory,
                                    params);
                        if (userReg != null) {
                          if (userReg['status'] ==
                              200) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      SelectYourProvider(
                                          selectedId:
                                              onSelected!),
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
