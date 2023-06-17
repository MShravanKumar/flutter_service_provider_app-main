// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/GetThreeSteps/second_step_screen.dart';
import 'package:flutter_service_provider_app/Screens/Language_spoke_screen/language_spoke_screen.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Apis/api_constants.dart';
import '../../Apis/api_helper.dart';

class FirstStepScreen extends StatefulWidget {
  const FirstStepScreen({Key? key})
      : super(key: key);

  @override
  State<FirstStepScreen> createState() =>
      _FirstStepScreenState();
}

class _FirstStepScreenState
    extends State<FirstStepScreen> {
  List<int> selecteditem = [1, 2];
  int onSelected = 1;
  @override
  Widget build(BuildContext context) {
    double ht =
        MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
                height: ht / 1.5,
                width: wt,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    ImagesView.getThreeSteps,
                    fit: BoxFit.fitWidth,
                  ),
                )),
            Padding(
              padding:
                  const EdgeInsets.only(top: 150),
              child: Center(
                child: Card(
                    child: Container(
                  color: lightblueColor,
                  height: 280,
                  width: wt - 20,
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                  IconsView
                                      .numerbullets1),
                            ),
                            const SizedBox(
                                width: 8),
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: Image.asset(
                                IconsView
                                    .shopICon,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                                width: 8),
                            const Text(
                                "At Your Own Store"),
                          ],
                        ),
                        trailing: Radio<int>(
                          value:
                              selecteditem.first,
                          groupValue: onSelected,
                          onChanged: (value) {
                            onSelected = value!;
                            setState(() {});
                          },
                        ),
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                  IconsView
                                      .numerbullets2),
                            ),
                            const SizedBox(
                                width: 8),
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: Image.asset(
                                IconsView
                                    .homeIcon1,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                                width: 8),
                            const Text(
                                "At Customer’s Doorstep"),
                          ],
                        ),
                        trailing: Radio<int>(
                          value:
                              selecteditem.last,
                          groupValue: onSelected,
                          onChanged: (value) {
                            onSelected = value!;
                            setState(() {});
                          },
                        ),
                      )
                    ],
                  ),
                )),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.all(8.0),
                child: MaterialButton(
                    color: blueColor,
                    minWidth: wt,
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences
                              .getInstance();
                      var userID =
                          prefs.getInt('userId');
                      Map<String, dynamic>
                          params = {
                        "user_id": userID,
                        "flag": "provider",
                        "customer_service":
                            onSelected
                      };
                      var userReg = await ApiHelpers()
                          .updatePutData(
                              addServiceTypeProvider,
                              params);
                      if (userReg != null) {
                        if (userReg['status'] ==
                            200) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const LanguageSpoken(),
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
                                ToastGravity.TOP,
                            backgroundColor:
                                Colors.red,
                            textColor:
                                Colors.white,
                            fontSize: 16.0);
                      }
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          color: whiteColor),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
