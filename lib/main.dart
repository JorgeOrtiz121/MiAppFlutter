import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
  return runApp(_ChartApp());
}

class _ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  _MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
 return Center(
   child:SfCircularChart(
   title: ChartTitle(text: 'Sales by sales person'),
   legend: Legend(isVisible: true),
   series: <PieSeries<_PieData, String>>[
     PieSeries<_PieData, String>(
       explode: true,
       explodeIndex: 0,
       dataSource:<_PieData>[
                  _PieData('a', 5,'USA'),
                   _PieData('b', 15,'CHINA'),
                   _PieData('c', 10,'EC'),
                   _PieData('d', 1,'RUSSIA'),
       ],
       xValueMapper: (_PieData data, _) => data.xData,
       yValueMapper: (_PieData data, _) => data.yData,
       dataLabelMapper: (_PieData data, _) => data.text,
       dataLabelSettings: DataLabelSettings(isVisible: true)),
   ]
  )
 );
}


}
class _PieData {
 _PieData(this.xData, this.yData, this.text);
 final String xData;
 final num yData;
 final String text;
}


