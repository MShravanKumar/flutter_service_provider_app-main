import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/ProfileScreen/UpdateDocuments/update_documents.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/ProfileScreen/edit_profile.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width =
        MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: blackColor,
              )),
          elevation: 0,
          titleTextStyle: const TextStyle(
              color: blackColor,
              fontSize: 16,
              fontWeight: FontWeight.w500),
          title: const Text("My Profile"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                width: width,
                child: Row(
                  children: [
                    Image.asset(
                        ImagesView.smileProfile),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      children: [
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                          children: [
                            const Text(
                              "Service Provider Name",
                              style: TextStyle(
                                  color:
                                      blackColor,
                                  fontSize: 16,
                                  fontWeight:
                                      FontWeight
                                          .w500),
                            ),
                            const SizedBox(
                                width: 20),
                            IconButton(
                                padding:
                                    const EdgeInsets
                                        .all(0),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) =>
                                                const EditProfileScreen(),
                                      ));
                                },
                                icon: const Icon(
                                    Icons
                                        .mode_edit))
                          ],
                        ),
                        const Text(
                          "Photographer",
                          style: TextStyle(
                              color: greyColor,
                              fontSize: 14,
                              fontWeight:
                                  FontWeight
                                      .w500),
                        ),
                        const Text(
                          "Employ ID: #123456",
                          style: TextStyle(
                              color: greyColor,
                              fontSize: 14,
                              fontWeight:
                                  FontWeight
                                      .w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "My Insights",
                style: TextStyle(
                    color: greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Image.asset(
                    IconsView.lineImageIcon,
                    scale: 3.5,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "439 Views in last 30 Days",
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 14,
                        fontWeight:
                            FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                "Dashboard",
                style: TextStyle(
                    color: greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),
              ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const UpdateDocuments(),
                        ));
                  },
                  leading: Image.asset(
                    IconsView.documentsIcon,
                    scale: 4,
                  ),
                  title: const Text(
                    "Documents",
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w600),
                  ),
                  trailing: const Icon(
                    Icons
                        .arrow_forward_ios_rounded,
                    color: blackColor,
                  )),
              const SizedBox(height: 10),
              ListTile(
                leading: Image.asset(
                  IconsView.certificatesIcon,
                  scale: 3.5,
                ),
                title: const Text(
                  "Certificates",
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w600),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: blackColor,
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Image.asset(
                  IconsView.serviceAreaIcon,
                  scale: 3.5,
                ),
                title: const Text(
                  "My Service Radius",
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w600),
                ),
                trailing: const Icon(
                    Icons
                        .arrow_forward_ios_rounded,
                    color: blackColor),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Image.asset(
                  IconsView.bankDetailsIcon,
                  scale: 3.5,
                ),
                title: const Text(
                  "My Bank Details",
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w600),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: blackColor,
                ),
              ),
              const Spacer(),
              MaterialButton(
                  color: blueColor,
                  minWidth: width,
                  onPressed: () {},
                  child: const Text(
                    "Submit For Approval",
                    style: TextStyle(
                        color: whiteColor),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
