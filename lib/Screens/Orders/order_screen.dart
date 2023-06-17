import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Orders/Screens/cancel_order_widget.dart';
import 'package:flutter_service_provider_app/Screens/Orders/Screens/complete_order_widget.dart';
import 'package:flutter_service_provider_app/Screens/Orders/Screens/current_order_widget.dart';
import 'package:flutter_service_provider_app/Screens/Orders/Screens/new_order_widget.dart';
import 'package:flutter_service_provider_app/Utils/enums.dart';

import '../../Utils/color_constants.dart';
import 'Componets/ordered_components.dart';

class OrdersScreen extends StatefulWidget {
  final bool fromCat;
  const OrdersScreen(
      {required this.fromCat, Key? key})
      : super(key: key);

  @override
  State<OrdersScreen> createState() =>
      _OrdersScreenState();
}

class _OrdersScreenState
    extends State<OrdersScreen> {
  OrderDetailsEnum orderDetails =
      OrderDetailsEnum.newOrder;
  @override
  Widget build(BuildContext context) {
    double width =
        MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        leading: widget.fromCat
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon:
                    const Icon(Icons.arrow_back))
            : const SizedBox(),
        title: const Text("Orders Screen"),
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: () {
                  orderDetails =
                      OrderDetailsEnum.newOrder;
                  setState(() {});
                },
                child: OrderedCategoryComponet(
                    colorsView: blueColor,
                    count: 8,
                    title: "New Leads/Orders",
                    width: width),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  orderDetails = OrderDetailsEnum
                      .currentOrder;
                  setState(() {});
                },
                child: OrderedCategoryComponet(
                    colorsView: orangeColor,
                    count: 8,
                    title:
                        "Current Ongoing Works",
                    width: width),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: () {
                  orderDetails = OrderDetailsEnum
                      .cancelOrder;
                  setState(() {});
                },
                child: OrderedCategoryComponet(
                    colorsView: redColor,
                    count: 8,
                    title: "Cancelled Orders",
                    width: width),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  orderDetails = OrderDetailsEnum
                      .completeOrder;
                  setState(() {});
                },
                child: OrderedCategoryComponet(
                    colorsView: greenColor,
                    count: 8,
                    title: "Completed Orders",
                    width: width),
              ),
              const Spacer(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "All Leads",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return orderDetails ==
                      OrderDetailsEnum.cancelOrder
                  ? const CancelledDetailsWidget()
                  : orderDetails ==
                          OrderDetailsEnum
                              .currentOrder
                      ? const CurrentDetailsWidget()
                      : orderDetails ==
                              OrderDetailsEnum
                                  .completeOrder
                          ? const CompleteOrderWidget()
                          : const NewDeailsWidget();
            },
          ))
        ],
      ),
    );
  }
}
