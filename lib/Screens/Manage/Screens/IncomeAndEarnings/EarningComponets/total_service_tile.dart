import 'package:flutter/material.dart';

import '../../../../../Utils/color_constants.dart';

class TotalServiesTile extends StatelessWidget {
  const TotalServiesTile(
      {Key? key,
      required this.width,
      required this.title,
      required this.amountView,
      required this.imageview})
      : super(key: key);
  final String imageview;
  final double width;
  final String title;
  final String amountView;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Container(
            height: 25,
            width: width / 3.5,
            decoration: const BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight:
                        Radius.circular(5))),
            alignment: Alignment.centerLeft,
            padding:
                const EdgeInsets.only(left: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(5),
                color: whiteColor,
              ),
              width: 20,
              child: Image.asset(
                imageview,
                scale: 3,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding:
                const EdgeInsets.only(left: 5),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding:
                const EdgeInsets.only(left: 5),
            child: Text(
              amountView,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
