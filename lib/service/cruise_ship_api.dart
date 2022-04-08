/// This is the API file for [CruiseShip] data.
/// 
/// The fetch function makes a http GET call to retrieve data from the provided URLs. The
/// http response is then converted into a Dart object using a factory constructor.

import 'dart:convert';

import 'package:ncl_assessment/model/cruise_ship.dart';
import 'package:http/http.dart' as http;

class CruiseShipApi {
  Future<CruiseShip> fetch(String cruiseShip) async {
    final response = await http.get(Uri.parse('https://www.ncl.com/cms-service/cruise-ships/$cruiseShip'));
    return CruiseShip.fromJson(jsonDecode(response.body));
  }
}