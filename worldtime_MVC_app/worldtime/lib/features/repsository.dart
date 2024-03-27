import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worldtime/model/Tmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

final worldTimeRepositoryProvider = Provider((ref) {
  return WroldTimeRepository();
});

class WroldTimeRepository {
  String url = "https://worldtimeapi.org/api/timezone/asia/singapore";

  Future<TimeZoneInfo?> fetchApi() async {
    try {
      final response = await http.get(Uri.parse(url));
      final responseDecode = convert.jsonDecode(response.body);
      return TimeZoneInfo.fromJson(convert.jsonDecode(responseDecode));
      // print(response.body);
    } catch (e) {
      rethrow;
    }
  }
}
