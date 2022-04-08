/// This is the repository file for [CruiseShip] data.
/// 
/// The repository layer is where data is handled. It typically receives the data from the API layer.

import 'package:ncl_assessment/model/cruise_ship.dart';
import 'package:ncl_assessment/service/cruise_ship_api.dart';

class CruiseShipRepository {
  final cruiseShipApi = CruiseShipApi();

  Future<CruiseShip> getCruiseShip(String cruiseShip) {
    return cruiseShipApi.fetch(cruiseShip).then((CruiseShip data) {
      return data;
    }); 
  }
}