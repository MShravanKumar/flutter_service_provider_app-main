// import 'package:encrypt/encrypt.dart';

// class EncryptData {
// //for AES Algorithms

//   static Encrypted? encrypted;
//   static var decrypted;

//   Future<String?> encryptAES(plainText) async {
//     final key = Key.fromUtf8(
//         'my 32 length key................');
//     final iv = IV.fromLength(16);
//     final encrypter = Encrypter(AES(key));
//     encrypted =
//         encrypter.encrypt(plainText, iv: iv);

//     print(encrypted!.base64);
//     return encrypted!.base64;
//   }

//   decryptAES(plainText) {
//     final key = Key.fromUtf8(
//         'my 32 length key................');
//     final iv = IV.fromLength(16);
//     final encrypter = Encrypter(AES(key));
//     decrypted =
//         encrypter.decrypt(encrypted!, iv: iv);
//     print(decrypted);
//   }
// }
