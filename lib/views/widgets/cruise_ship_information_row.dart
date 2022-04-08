/// A simple reusable widget that is used to the display information retrieved for a cruise ship.
/// Although this could have been written as a helper method, Flutter took an official stance
/// on this here: https://www.youtube.com/watch?v=IOyq-eTRhvo. I also believe that this keeps the
/// project files cleaner and more organized.
/// 
/// For this widget, there is explicit [Directionality] defined because the widget tests I wrote
/// were running into issues with implicit directionality.
/// 
/// Just to showcase some workflow, the [Flexible] widgets were added as a very simple solution to 
/// one of the tests I wrote in widget_test.dart that initially failed.

import 'package:flutter/material.dart';

class CruiseShipInformationRow extends StatelessWidget {
  const CruiseShipInformationRow(
      {Key? key, required this.dataLabel, required this.data})
      : super(key: key);

  final String dataLabel;
  final String data;

  final TextStyle textStyle = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: TextDirection.ltr,
      children: [
        Directionality(
          child: Flexible(
            child: Text(dataLabel, style: textStyle),
          ),
          textDirection: TextDirection.ltr,
        ),
        Directionality(
          child: Flexible(
            child: Text(data, style: textStyle),
          ),
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}
