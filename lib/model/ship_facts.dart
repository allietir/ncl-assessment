/// This file contains the class for [ShipFacts] data.
///
/// There is a factory constructor that maps the data from JSON.
///
/// One thing to note here is that I did not cast any of the data from Strings to ints,
/// since they are only being used as Strings right now.

class ShipFacts {
  String passengerCapacity;
  String crew;
  String inauguralDate;

  ShipFacts({
    required this.passengerCapacity,
    required this.crew,
    required this.inauguralDate
  });

  factory ShipFacts.fromJson(Map<String, dynamic> json) {
    return ShipFacts(
      passengerCapacity: json['passengerCapacity'] as String,
      crew: json['crew'] as String,
      inauguralDate: json['inauguralDate'] as String
    );
  }
}
