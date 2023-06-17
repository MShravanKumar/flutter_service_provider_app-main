import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/GetThreeSteps/first_step_screen.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

class SecondStepScreen extends StatelessWidget {
  const SecondStepScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ht =
        MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: whiteColor,
              )),
        ),
        body: Column(
          children: [
            SizedBox(
              height: ht / 1.3,
              width: wt,
              child: Image.asset(
                ImagesView
                    .threestepstogetCustomer,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                  color: blueColor,
                  minWidth: wt,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const FirstStepScreen(),
                        ));
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
    );
  }
}
