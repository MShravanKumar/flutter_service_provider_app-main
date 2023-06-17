import 'dart:io';
import 'package:flutter_service_provider_app/dash_board_screen.dart';
import 'package:s3_storage/io.dart';
import 'package:s3_storage/s3_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../Utils/color_constants.dart';

class UpdateDocuments extends StatefulWidget {
  const UpdateDocuments({Key? key})
      : super(key: key);

  @override
  State<UpdateDocuments> createState() =>
      _UpdateDocumentsState();
}

class _UpdateDocumentsState
    extends State<UpdateDocuments> {
  File? _pickedPanCardImage;
  File? _pickedACFrontImage;
  File? _pickedACBackImage;
  File? _pickedVCImage;
  // var url = 'bucket-folder/object-name.extension';
  // final AwsS3PrivateFlutter awsS3Flutter =
  //     AwsS3PrivateFlutter(
  //         accessKey: 'AKIA4C54K7XRFTAMZKEO',
  //         region: 'ap-south-1',
  //         secretKey:
  //             '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',
  //         host: 'wedmist-2023',

  //         /// note : [bucketId] is not required when you are request from web platform
  //         bucketId: 'your-bucket-id');
  S3Storage s3storage = S3Storage(
    endPoint: 'play.min.io',
    accessKey: 'AKIA4C54K7XRFTAMZKEO',
    secretKey:
        'VoqZwil9tyYM4yuBtoZjyCO9vnQBozeEX/pWLFee',
    region: 'ap-south-1',
  );
  @override
  void initState() {
    super.initState();
  }

  Future<void> _pickPanCardImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
        source: ImageSource.camera);

    if (pickedImage != null) {
      _pickedPanCardImage =
          File(pickedImage.path);
      var data = await s3storage.fPutObject(
          'mybucket',
          'myobject',
          pickedImage.path);
      debugPrint(data);
    }
    setState(() {});
  }

  Future<void> _pickACFrontImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
        source: ImageSource.camera);

    setState(() {
      if (pickedImage != null) {
        _pickedACFrontImage =
            File(pickedImage.path);
      }
    });
  }

  Future<void> _pickACBackImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
        source: ImageSource.camera);

    setState(() {
      if (pickedImage != null) {
        _pickedACBackImage =
            File(pickedImage.path);
      }
    });
  }

  Future<void> _pickVCImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
        source: ImageSource.camera);

    setState(() {
      if (pickedImage != null) {
        _pickedVCImage = File(pickedImage.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width =
        MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: whiteColor,
            )),
        elevation: 0,
        titleTextStyle: const TextStyle(
            color: whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w500),
        title: const Text("Documents"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          mainAxisAlignment:
              MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Upload PAN Card",
              style: TextStyle(
                  color: blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            _pickedPanCardImage != null
                ? Image.file(
                    _pickedPanCardImage!,
                    height: 130,
                    width: 130,
                  )
                : GestureDetector(
                    onTap: _pickPanCardImage,
                    child: addDoc()),
            const SizedBox(height: 10),
            Container(
              height: 5,
              color: greyLightColor,
            ),
            const SizedBox(height: 10),
            const Text(
              "Upload Aadhar Card",
              style: TextStyle(
                  color: blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                _pickedACFrontImage != null
                    ? Image.file(
                        _pickedACFrontImage!,
                        height: 130,
                        width: 130,
                      )
                    : GestureDetector(
                        onTap: _pickACFrontImage,
                        child: addDoc()),
                const SizedBox(width: 10),
                _pickedACBackImage != null
                    ? Image.file(
                        _pickedACBackImage!,
                        height: 130,
                        width: 130,
                      )
                    : GestureDetector(
                        onTap: _pickACBackImage,
                        child: addDoc()),
              ],
            ),
            Container(
              height: 5,
              color: greyLightColor,
            ),
            const SizedBox(height: 10),
            const Text(
              "Upload Vaccination Certificate",
              style: TextStyle(
                  color: blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            _pickedVCImage != null
                ? Image.file(
                    _pickedVCImage!,
                    height: 130,
                    width: 130,
                  )
                : GestureDetector(
                    onTap: _pickVCImage,
                    child: addDoc()),
            const Spacer(),
            MaterialButton(
                color: blueColor,
                minWidth: width,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                    builder: (context) {
                      return DashboardScreen();
                    },
                  ));
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      color: whiteColor),
                ))
          ],
        ),
      ),
    );
  }

  Widget addDoc() {
    return SizedBox(
      height: 130,
      width: 130,
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center,
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              IconsView.galleryIcon,
              scale: 2.5,
            ),
            const Spacer(),
            const Text(
              "Add",
              style: TextStyle(
                  color: greyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            const Text(
              "Document",
              style: TextStyle(
                  color: greyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
