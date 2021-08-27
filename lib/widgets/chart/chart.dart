import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  final int graphvalue;

  Chart({this.graphvalue});
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
          startDegreeOffset: widget.graphvalue == 1 ? 0 : 45,
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 12.8,
          centerSpaceRadius: 0.0,
          sections: widget.graphvalue == 1 ? showingSections() : showingSections1()),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      4,
      (i) {
        switch (i) {
          case 0:
            return PieChartSectionData(
                color: Color(0xFF057961), value: 15, title: '', radius: 100);
          case 1:
            return PieChartSectionData(
                color: Color(0xFF19688D), value: 25, title: '', radius: 100);
          case 2:
            return PieChartSectionData(
                color: Color(0xFF77DD45), value: 35, title: '', radius: 100);
          case 3:
            return PieChartSectionData(
                color: Color(0xFF30A949), value: 25, title: '', radius: 100);
          default:
            throw Error();
        }
      },
    );
  }

  List<PieChartSectionData> showingSections1() {
    return List.generate(
      3,
      (i) {
        switch (i) {
          case 0:
            return PieChartSectionData(
                color: Color(0xFF19688D), value: 25, title: '', radius: 120);
          case 1:
            return PieChartSectionData(
                color: Color(0xFF77DD45), value: 37.5, title: '', radius: 120);
          case 2:
            return PieChartSectionData(
                color: Color(0xFF30A949), value: 37.5, title: '', radius: 120);
          default:
            throw Error();
        }
      },
    );
  }
}
