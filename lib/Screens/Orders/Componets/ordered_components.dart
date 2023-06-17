import 'package:flutter/material.dart';

import '../../../Utils/color_constants.dart';

class OrderedCategoryComponet
    extends StatelessWidget {
  const OrderedCategoryComponet(
      {Key? key,
      required this.width,
      required this.count,
      required this.colorsView,
      required this.title})
      : super(key: key);

  final double width;
  final String title;
  final int count;
  final Color colorsView;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: width / 2 - 15,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: greyLightColor,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: colorsView),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                "$count",
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
