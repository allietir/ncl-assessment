/// This file contains the class for [CruiseShip] data.
///
/// Since the provided JSONs contained nested data, I wanted to represent that data in the same
/// manner, so I wrote the [ShipFacts] class.
///
/// This class contains a factory constructor that maps only the data that is needed from JSON.
/// The data is mapped from the bottom up, meaning that the [ShipFacts] object is mapped first
/// before it is mapped into a [CruiseShip] object.
/// 
/// This file also contains named constants for the ship identifiers. Dart recently changed their
/// guidelines to prefer lowerCamelCase for constants, but I used SCREAMING_CAPS here because it
/// is more fun.

import 'package:ncl_assessment/model/ship_facts.dart';

const String CRUISE_SHIP_SKY = "SKY";
const String CRUISE_SHIP_BLISS = "BLISS";
const String CRUISE_SHIP_ESCAPE = "ESCAPE";

class CruiseShip {
  final String shipName;
  ShipFacts shipFacts;

  CruiseShip({required this.shipName, required this.shipFacts});

  factory CruiseShip.fromJson(Map<String, dynamic> json) {
    return CruiseShip(
      shipName: json['shipName'] as String,
      shipFacts: ShipFacts.fromJson(json['shipFacts'])
    );
  }
}
