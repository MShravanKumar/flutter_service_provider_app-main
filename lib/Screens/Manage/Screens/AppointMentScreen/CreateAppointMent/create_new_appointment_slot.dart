import 'package:flutter/material.dart';

class CreateNewAppointMentSlot
    extends StatelessWidget {
  const CreateNewAppointMentSlot({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Create New Appointment Slot")),
    );
  }
}
