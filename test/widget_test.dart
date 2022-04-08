/// Since tests were not listed on the requirements, I wrote two simple widget tests
/// in order to demonstrate some very basic widget testing, 

import 'package:flutter_test/flutter_test.dart';

import 'package:ncl_assessment/views/widgets/cruise_ship_information_row.dart';

void main() {
  //This is an input test for data of a "normal" length. This test passes.
  testWidgets('CruiseShipInformationRow test normal input', (WidgetTester tester) async {
    await tester.pumpWidget(
      const CruiseShipInformationRow(
        dataLabel: 'dataLabel',
        data: 'data'
      )
    );

    final dataLabelFinder = find.text('dataLabel');
    final dataFinder = find.text('data');

    expect(dataLabelFinder, findsOneWidget);
    expect(dataFinder, findsOneWidget);
  });

  /// This is an input test for data taht is very long. Originally, this test failed since it resulted
  /// in some overflow exceptions. Therefore, I added the Flexible widget to CruiseShipInformationRow.
  testWidgets('CruiseShipInformationRow test long input', (WidgetTester tester) async {
    await tester.pumpWidget(
      const CruiseShipInformationRow(
        dataLabel: 'dataLabel',
        data: 'very long data !!!! very long data !!!! very long data !!!!'
      )  
    );

    final dataLabelFinder = find.text('dataLabel');
    final veryLongDataFinder = find.text('very long data !!!! very long data !!!! very long data !!!!');

    expect(dataLabelFinder, findsOneWidget);
    expect(veryLongDataFinder, findsOneWidget);
  });
}
