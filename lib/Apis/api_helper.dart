import 'dart:convert';
import 'package:flutter_service_provider_app/Apis/api_constants.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../Model/getProvider_service_model_by_cat.dart';
import '../Model/subservices_by_user_id_and_service_id_model.dart';
import '../Model/language_model.dart';
import '../Model/provider_services_by_user_model.dart';
import '../Model/work_category_model.dart';

class ApiHelpers {
  Future<Map?> getuserPostData(String postUrl,
      Map<String, dynamic> params) async {
    SharedPreferences prefs =
        await SharedPreferences.getInstance();
    String jsonResponse;
    var url = apiBaseUrl + postUrl;

    var request =
        http.Request('POST', Uri.parse(url));
    var headers = {
      'Access-Control-Allow-Origin': '*',
      'Content-Type': 'application/json',
    };

    request.body = json.encode(params);

    request.headers.addAll(headers);
    try {
      http.StreamedResponse response =
          await request.send();

      if (response.statusCode == 200) {
        var value =
            await response.stream.bytesToString();

        jsonResponse = value.toString();

        Map jsonMap = json.decode(jsonResponse);
        if (jsonMap["token"] != null) {
          var token = jsonMap["token"];
          var userID = jsonMap["user_id"];

          prefs.setString('tokenId', token);
          prefs.setInt("userId", userID);
          prefs.setString(
              "jsonResponse", jsonResponse);
        }
        return jsonMap;
      } else if (response.statusCode == 400) {
        var value =
            await response.stream.bytesToString();

        jsonResponse = value.toString();

        Map jsonMap = json.decode(jsonResponse);
        return jsonMap;
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  ///get spoke language
  Future<List<Language>> fetchLanguages() async {
    // SharedPreferences prefs =
    //     await SharedPreferences.getInstance();
    // var token = prefs.getString('tokenId');
    var url =
        Uri.parse(apiBaseUrl + apiUserlanguages);

    final response =
        await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $dummytoken',
    });
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      LanguageModelList langModel =
          LanguageModelList.fromJson(data);
      return langModel.languages ?? [];
    } else {
      throw Exception(
          'Unable to fetch products from the REST API');
    }
  }

  ///update spoke language

  Future<Map> updatePutData(String putUrl,
      Map<String, dynamic> params) async {
    // SharedPreferences prefs =
    //     await SharedPreferences.getInstance();
    // var token = prefs.getString('tokenId');
    var url = Uri.parse(apiBaseUrl + putUrl);
    var bodyData = json.encode(params);
    final response = await http.put(url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $dummytoken',
        },
        body: bodyData);
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'Unable to fetch products from the REST API');
    }
  }

  /// work category
  Future<List<WorkCategory>> fetchWorkCategory(
      {required String cat}) async {
    // SharedPreferences prefs =
    //     await SharedPreferences.getInstance();
    // var token = prefs.getString('tokenId');
    var url = Uri.parse(apiBaseUrl + cat);
    final response =
        await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $dummytoken',
    });
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      WorkCategoryModel langModel =
          WorkCategoryModel.fromJson(data);
      return langModel.workCategories ?? [];
      // languageModel = languageModelListToJson(data as LanguageModelList);
    } else {
      throw Exception(
          'Unable to fetch products from the REST API');
    }
  }

  /// work category by ID
  Future<List<GetProviderServiceCategory>>
      fetchProviderServiceCategory(
          {required String cat}) async {
    // SharedPreferences prefs =
    //     await SharedPreferences.getInstance();
    // var token = prefs.getString('tokenId');
    var url = Uri.parse(apiBaseUrl + cat);
    final response =
        await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $dummytoken',
    });
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      GetProviderServiceCategoryModel langModel =
          GetProviderServiceCategoryModel
              .fromJson(data);
      return langModel.services ?? [];
      // languageModel = languageModelListToJson(data as LanguageModelList);
    } else {
      throw Exception(
          'Unable to fetch products from the REST API');
    }
  }

  /// get_sub_services
  Future<List<ProviderService>>
      getProviderServicesByUserId(
          {required String
              providerService}) async {
    // SharedPreferences prefs =
    //     await SharedPreferences.getInstance();
    // var token = prefs.getString('tokenId');
    var url =
        Uri.parse(apiBaseUrl + providerService);
    final response =
        await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $dummytoken',
    });
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      ProviderServicesByuserModel langModel =
          ProviderServicesByuserModel.fromJson(
              data);
      return langModel.providerServices ?? [];
      // languageModel = languageModelListToJson(data as LanguageModelList);
    } else {
      throw Exception(
          'Unable to fetch products from the REST API');
    }
  }

  /// get_ by_id_sub_services
  Future<List<SubService>>
      getSubServicesByUserIdAndService(
          {required Map<String, dynamic>
              params}) async {
    // SharedPreferences prefs =
    //     await SharedPreferences.getInstance();
    // var token = prefs.getString('tokenId');
    var request = http.Request(
        'POST',
        Uri.parse(apiBaseUrl +
            getSubServicesByUserIdAndServiceId));
    var headers = {
      'Access-Control-Allow-Origin': '*',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $dummytoken',
    };

    request.body = json.encode(params);

    request.headers.addAll(headers);
    try {
      http.StreamedResponse response =
          await request.send();

      if (response.statusCode == 200) {
        var value =
            await response.stream.bytesToString();

        String jsonResponse = value.toString();

        Map<String, dynamic> jsonMap =
            json.decode(jsonResponse);
        SubservicesByUserIdAndServiceIdModel
            langModel =
            SubservicesByUserIdAndServiceIdModel
                .fromJson(jsonMap);
        return langModel.subServices ?? [];

        // languageModel = languageModelListToJson(data as LanguageModelList);
      } else {
        throw Exception(
            'Unable to fetch products from the REST API');
      }
    } catch (e) {
      print(e.toString());
    }
    return [];
  }

  /// add new sub service
  Future<Map?> addNewSUBService(String postUrl,
      Map<String, dynamic> params) async {
    SharedPreferences prefs =
        await SharedPreferences.getInstance();
    String jsonResponse;
    var url = apiBaseUrl + postUrl;

    var request =
        http.Request('POST', Uri.parse(url));
    var headers = {
      'Access-Control-Allow-Origin': '*',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $dummytoken',
    };

    request.body = json.encode(params);

    request.headers.addAll(headers);
    try {
      http.StreamedResponse response =
          await request.send();

      if (response.statusCode == 200) {
        var value =
            await response.stream.bytesToString();

        jsonResponse = value.toString();

        Map jsonMap = json.decode(jsonResponse);
        
        return jsonMap;
      } else if (response.statusCode == 400) {
        var value =
            await response.stream.bytesToString();

        jsonResponse = value.toString();

        Map jsonMap = json.decode(jsonResponse);
        return jsonMap;
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
