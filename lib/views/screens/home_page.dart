/// This is the default and only screen in the application. This screen features 3 buttons
/// at the bottom for retrieving cruise ship data, and the data is displayed near the center
/// of the screen using a [StreamBuilder] and a data stream from [CruiseShipBloc]. 
/// This screen uses two reusable widgets for the buttons and the ship information.

import 'package:flutter/material.dart';
import 'package:ncl_assessment/bloc/cruise_ship_bloc.dart';
import 'package:ncl_assessment/model/cruise_ship.dart';
import 'package:ncl_assessment/views/widgets/cruise_ship_button.dart';
import 'package:ncl_assessment/views/widgets/cruise_ship_information_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            StreamBuilder(
              stream: CruiseShipBloc().shipStream,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  CruiseShip cruiseShip = snapshot.data;
                  return Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      // The dimensions of the SizedBox could be determined empirically
                      child: SizedBox(
                        height: 200,
                        width: null,
                        child: Column(
                          children: <Widget>[
                            CruiseShipInformationRow(
                              dataLabel: 'Ship Name: ', 
                              data: cruiseShip.shipName
                            ),
                            CruiseShipInformationRow(
                              dataLabel: 'Passenger Capacity: ',
                              data: cruiseShip.shipFacts.passengerCapacity
                            ),
                            CruiseShipInformationRow(
                              dataLabel: 'Crew: ',
                              data: cruiseShip.shipFacts.crew
                            ),
                            CruiseShipInformationRow(
                              dataLabel: 'Inaugural Date: ',
                              data: cruiseShip.shipFacts.inauguralDate
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
                return Container();
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Expanded(child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: CruiseShipButton(label: 'SKY', cruiseShip: CRUISE_SHIP_SKY),
                )),
                Expanded(child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: CruiseShipButton(label: 'BLISS', cruiseShip: CRUISE_SHIP_BLISS),
                )),
                Expanded(child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: CruiseShipButton(label: 'ESCAPE', cruiseShip: CRUISE_SHIP_ESCAPE),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
