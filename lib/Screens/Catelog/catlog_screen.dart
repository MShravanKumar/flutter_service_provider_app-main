import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Apis/api_helper.dart';
import 'package:flutter_service_provider_app/Screens/Catelog/screens/add_category_screen.dart';
import 'package:flutter_service_provider_app/Screens/Catelog/screens/category_screen.dart';
import 'package:flutter_service_provider_app/Screens/Catelog/screens/service_screen.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Apis/api_constants.dart';
import '../../Model/provider_services_by_user_model.dart';

class CatlogScreen extends StatefulWidget {
  const CatlogScreen({Key? key})
      : super(key: key);

  @override
  State<CatlogScreen> createState() =>
      _CatlogScreenState();
}

class _CatlogScreenState
    extends State<CatlogScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int tabIndex = 0;
  List<ProviderService> providerServicesList = [];
  @override
  void initState() {
    super.initState();
    getSubServicesView();
    _controller =
        TabController(length: 2, vsync: this);

    _controller.addListener(() {
      setState(() {
        tabIndex = _controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          padding: const EdgeInsets.all(0),
          indicatorColor: whiteColor,
          onTap: (index) {},
          controller: _controller,
          tabs: const [
            Text("Services",
                style: TextStyle(fontSize: 18)),
            Text("Categories",
                style: TextStyle(fontSize: 18))
          ],
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Catalogue"),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          ServiceScreen(
              providerServicesList:
                  providerServicesList),
          CategoriesScreen(
              providerServicesList:
                  providerServicesList)
        ],
      ),
    );
  }

  void getSubServicesView() async {
    SharedPreferences prefs =
        await SharedPreferences.getInstance();
    var userID = prefs.getInt('userId');
    providerServicesList = await ApiHelpers()
        .getProviderServicesByUserId(
            providerService:
                getProviderServicesByUserId +
                    userID.toString());
    debugPrint(
        providerServicesList.first.serviceName);
    setState(() {});
  }
}
