/// This is the BLoC file for [CruiseShip] data. This file contains one stream for
/// receiving [CruiseShip] data.
///
/// There is not much here since we only need to fetch data, but this layer is
/// where the business logic is written.
/// 
/// The bloc function getCruiseShip calls its corresponding repository function.

import 'package:ncl_assessment/model/cruise_ship.dart';
import 'package:ncl_assessment/repository/cruise_ship_repository.dart';
import 'package:rxdart/rxdart.dart';

class CruiseShipBloc {
  static var _instance = CruiseShipBloc._internal();

  factory CruiseShipBloc() => _instance;

  static void reset() {
    _instance.dispose();
    _instance = CruiseShipBloc._internal();
  }

  final _repository = CruiseShipRepository();

  CruiseShipBloc._internal();

  final _cruiseShipSubject = BehaviorSubject<CruiseShip>();

  Stream<CruiseShip> get shipStream => _cruiseShipSubject.stream;

  Future<CruiseShip> getCruiseShip(String cruiseShip) async {
    return _repository.getCruiseShip(cruiseShip).then((CruiseShip data) {
      // The data returned from the repository layer is added to the stream.
      _cruiseShipSubject.sink.add(data);
      return data;
    });
  }

  void dispose() {
    _cruiseShipSubject.close();
  }
}
