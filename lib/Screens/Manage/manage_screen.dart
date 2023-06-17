import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Constants/manage_screen_constants.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/AppointMentScreen/create_appointment.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/BuyProductsScreen/buy_products_screen.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/CustomersScreen/customers_screen.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/GalleryScreen/add_gallery_screen.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/IncomeAndEarnings/income_and_earnings.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/PaymentScreen/payment_to_wedmist.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/ProfileScreen/profile_screen.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/ReviewsScreen/reviews_screen.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/call_screen.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/CouponScreen/offer_screen.dart';
import 'package:flutter_service_provider_app/Screens/Orders/order_screen.dart';

class ManageScren extends StatelessWidget {
  const ManageScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                // Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text("Manage"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: manageScreenList.length,
            gridDelegate:
                const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 1.6,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  selectedManage(
                      index: index,
                      context: context);
                },
                child: Card(
                  margin: const EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(
                                left: 8,
                                top: 5,
                                bottom: 5),
                        child: Image.asset(
                            manageScreenList
                                .values
                                .elementAt(index),
                            scale: 3),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(
                                left: 8,
                                top: 5,
                                bottom: 5),
                        child: Text(
                          manageScreenList.keys
                              .elementAt(index),
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight:
                                  FontWeight
                                      .w500),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }

  void selectedManage(
      {required int index,
      required BuildContext context}) {
    switch (index) {
      case 0:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const OrdersScreen(
                        fromCat: true)));

        break;
      case 1:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const CallRequestScreen()));

        break;
      case 2:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const IncomeAndEarnings()));

        break;
      case 3:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const CustomerScreen()));

        break;
      case 4:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const PaymentToWedmist()));

        break;
      case 5:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const AddGalleryScreen()));

        break;
      case 6:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const OfferScreen()));

        break;
      case 7:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const ReviewsScreen()));
        break;
      case 9:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const ProfileScreen()));

        break;
      case 10:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const BuyProductsScreen()));

        break;
      case 11:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const CreateAppointMentScreen(),
            ));
        break;
      default:
    }
  }
}
