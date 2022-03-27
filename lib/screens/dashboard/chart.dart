/// Bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class MyBarChart extends StatelessWidget {
  const MyBarChart({Key? key}) : super(key: key);
  static final List<WorldPopulation> populationData = [
    WorldPopulation('2016', 54, Colors.grey),
    WorldPopulation('2017', 55, Colors.pink),
    WorldPopulation('2018', 62, Colors.grey),
    WorldPopulation('2019', 90, Colors.grey),
    WorldPopulation('2020', 78, Colors.grey),
    WorldPopulation('2021', 80, Colors.grey),
    WorldPopulation('2022', 99, Colors.grey),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<WorldPopulation, String>> series = [
      charts.Series(
        data: populationData,
        id: "World Population",
        domainFn: (WorldPopulation pops, _) => pops.year,
        measureFn: (WorldPopulation pops, _) => pops.population,
        colorFn: (WorldPopulation pops, _) => charts.ColorUtil.fromDartColor(pops.barColor),
      ),
    ];
    return charts.BarChart(series);
  }
}

/// Sample ordinal data type.
class WorldPopulation {
  final String year;
  final int population;
  final Color barColor;

  WorldPopulation(this.year, this.population, this.barColor);
}
