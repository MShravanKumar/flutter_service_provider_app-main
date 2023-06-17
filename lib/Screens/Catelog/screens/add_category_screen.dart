import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Utils/color_constants.dart';

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Add Category"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const Text(
              "Name of the Category",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Enter Name of the Category"),
            ),
            const SizedBox(height: 25),
            const Text(
              "Category  Description",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Enter Category  Description"),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius:
                        BorderRadius.circular(
                            10)),
                alignment: Alignment.center,
                child: const Text(
                  "Save",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
