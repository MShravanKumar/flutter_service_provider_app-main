import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Model/provider_services_by_user_model.dart';
import 'package:flutter_service_provider_app/Screens/Catelog/screens/add_category_screen.dart';

import '../../../Utils/color_constants.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen(
      {Key? key,
      required this.providerServicesList})
      : super(key: key);
  final List<ProviderService>
      providerServicesList;
  @override
  State<CategoriesScreen> createState() =>
      _CategoriesScreenState();
}

class _CategoriesScreenState
    extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount:
            widget.providerServicesList.length,
        itemBuilder: (context, index) {
          ProviderService proService =
              widget.providerServicesList[index];
          return Padding(
            padding: const EdgeInsets.only(
                left: 8, right: 8, top: 8),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Padding(
                            padding:
                                const EdgeInsets
                                    .all(8.0),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                              children: [
                                Text(
                                  proService
                                          .serviceName ??
                                      "",
                                  style: const TextStyle(
                                      fontSize:
                                          22,
                                      fontWeight:
                                          FontWeight
                                              .w500),
                                ),
                                const SizedBox(
                                    height: 5),
                                const Text(
                                  "A very small Description of maximum 2 lines",
                                  maxLines: 2,
                                  style: TextStyle(
                                      color:
                                          greyColor),
                                ),
                                const SizedBox(
                                    height: 15),
                                Container(
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color:
                                            lightRedColor,
                                        borderRadius:
                                            BorderRadius.circular(
                                                20)),
                                    alignment:
                                        Alignment
                                            .center,
                                    width: 140,
                                    child:
                                        const Text(
                                      "Edit Category",
                                      style: TextStyle(
                                          color:
                                              whiteColor,
                                          fontSize:
                                              14,
                                          fontWeight:
                                              FontWeight.w500),
                                    )),
                                const SizedBox(
                                    height: 5),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding:
                                  const EdgeInsets
                                          .only(
                                      bottom: 70),
                              child: IconButton(
                                  onPressed:
                                      () {},
                                  icon: const Icon(
                                      Icons
                                          .more_vert)),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
