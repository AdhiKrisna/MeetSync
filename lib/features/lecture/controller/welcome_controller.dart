import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WelcomeController extends GetxController {
  var dataResponse = {}.obs;

  Future<void> welcome() async {
    final Uri uri = Uri.parse("http://meetsync.test/api.json");
    try {
      final response = await http.get(uri);
      dataResponse.value = json.decode(response.body) as Map<String, dynamic>;
    } catch (error) {
      print(error);
    }
  }
}
