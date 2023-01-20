import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
   return runApp(AppNueva());
}

class AppNueva extends StatelessWidget {
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
        final List<ChartData> chartData = [
            ChartData(1, 235, 240),
            ChartData(2, 242, 250),
            ChartData(3, 320, 280),
            ChartData(4, 360, 355),
            ChartData(5, 270, 245)
        ];
        return Scaffold(
            body: Center(
                child: Container(
                    child: SfCartesianChart(
                        primaryXAxis: NumericAxis(), 
                        primaryYAxis: NumericAxis(),
                        series: <ChartSeries<ChartData, double>>[
                            // Renders column chart
                            ColumnSeries<ChartData, double>(
                                dataSource: chartData,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y
                            ),
                            ColumnSeries<ChartData, double>(
                                dataSource: chartData,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y1
                            ),
                        ]
                    )
                )
            )
        );
    }
}
    class ChartData{
        ChartData(this.x, this.y, this.y1);
        final double x;
        final double y;
        final double y1;
    }

  