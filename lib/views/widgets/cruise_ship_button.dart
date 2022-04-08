/// This button calls a Bloc function that fetches cruise ship data.
/// 
/// Rather than passing an onPressed callback to this function, I wrote it this way so that
/// it can only used for fetching cruise ship data. 

import 'package:flutter/material.dart';
import 'package:ncl_assessment/bloc/cruise_ship_bloc.dart';

class CruiseShipButton extends StatelessWidget {
  const CruiseShipButton({
    Key? key,
    required this.label,
    required this.cruiseShip
  }) : super(key: key);

  final String label;
  final String cruiseShip;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(label, style: const TextStyle(fontSize: 16.0)),
      onPressed: () {
        CruiseShipBloc().getCruiseShip(cruiseShip);
      }, 
    );
  }
}