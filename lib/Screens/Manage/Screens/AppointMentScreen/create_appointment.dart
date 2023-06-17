import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/AppointMentScreen/AppointMentAllBookings/all_bookings.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/AppointMentScreen/CreateAppointMent/create_new_appointment_slot.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

class CreateAppointMentScreen
    extends StatelessWidget {
  const CreateAppointMentScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
              Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Create Appointment"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Card(
            margin: const EdgeInsets.symmetric(
                horizontal: 8),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const AllBookings(),
                    ));
              },
              contentPadding:
                  const EdgeInsets.all(0),
              minVerticalPadding: 0,
              leading: Container(
                height: 55,
                color: blueColor,
                child: Image.asset(
                  IconsView.appointmentBookIcon,
                  color: whiteColor,
                  scale: 3.5,
                ),
              ),
              title: const Text(
                "See All Bookings",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              trailing: const Padding(
                padding:
                    EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: blueColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            margin: const EdgeInsets.symmetric(
                horizontal: 8),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const CreateNewAppointMentSlot(),
                    ));
              },
              contentPadding:
                  const EdgeInsets.all(0),
              minVerticalPadding: 0,
              leading: Container(
                height: 55,
                color: blueColor,
                child: Image.asset(
                  IconsView.appointmentCreateIcon,
                  color: whiteColor,
                  scale: 3.5,
                ),
              ),
              title: const Text(
                "Create Appointment Slots",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              trailing: const Padding(
                padding:
                    EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: blueColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
