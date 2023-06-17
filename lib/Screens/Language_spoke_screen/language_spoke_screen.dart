// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Language_spoke_screen/select_work_category.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Apis/api_constants.dart';
import '../../Apis/api_helper.dart';
import '../../Model/language_model.dart';

class LanguageSpoken extends StatefulWidget {
  const LanguageSpoken({super.key});

  @override
  State<LanguageSpoken> createState() =>
      _LanguageSpokenState();
}

class _LanguageSpokenState
    extends State<LanguageSpoken> {
  bool isbool = false;

  List<Language> languagesList = [];
  int? selectedlangId;
  Set<int> selectedLangset = {};
  String? language;
  @override
  void initState() {
    updatelanguage();
    getlanguageValue();
    super.initState();
  }

  void getlanguageValue() async {
    SharedPreferences prefs =
        await SharedPreferences.getInstance();
    var jsonResponse =
        prefs.getString('jsonResponse');

    Map jsonMap = json.decode(jsonResponse!);
    language = jsonMap["language"];
  }

  updatelanguage() async {
    languagesList =
        await ApiHelpers().fetchLanguages();

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
              "Select Language Spoken"),
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
            children: [
              const Text(
                "Please select the languages you wish to speak during service. ",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  itemCount: languagesList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: lightblueColor,
                      child: CheckboxListTile(
                        title: Text(
                            languagesList[index]
                                    .language ??
                                ""),
                        value:
                            languagesList[index]
                                .isSelected,
                        onChanged: (value) {
                          languagesList[index]
                                  .isSelected =
                              value!;
                          selectedlangId =
                              languagesList[index]
                                  .languageId;
                          selectedLangset.add(
                              selectedlangId!);
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
                      if (selectedlangId ==
                          null) {
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
                          "user_id": "$userID",
                          "language_ids":
                              selectedLangset
                                  .toList(),
                          "flag": "provider"
// }
                          // "user_id": "$userID",
                          // "language_id":
                          //     "$selectedlangId",
                          // "flag": "provider"
                        };
                        var userReg =
                            await ApiHelpers()
                                .updatePutData(
                                    updateUserLanguage,
                                    params);
                        if (userReg != null) {
                          if (userReg['status'] ==
                              200) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          const SelectWOrkCategory(),
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
