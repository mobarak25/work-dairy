/// Bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:workdiaryapp/constants.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Ranked",
          style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w600),
        ),
        const Text(
          "83% occupied by DBL ",
          style: TextStyle(height: 1.2, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: const BoxDecoration(color: kSecondaryColor, shape: BoxShape.circle),
            ),
            const SizedBox(width: 7),
            const Text(
              "23% Opportunity to grow XCG",
              style: TextStyle(fontSize: 12, height: 1.2, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 240,
          child: charts.BarChart(series),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buldSummery("First Rank", "DBL- 83%"),
            buldSummery("Second Rank", "Rosha: 76%"),
            buldSummery("Third Rank", "XCG: 69%"),
            buldSummery("Fourth Rank", "Khadim: 55%"),
          ],
        )
      ],
    );
  }

  Text buldSummery(String? title, String? subtitle) {
    return Text.rich(
      TextSpan(
        text: "$title\n",
        style: const TextStyle(
          height: 1.1,
          fontSize: 11,
        ),
        children: [
          TextSpan(
            text: subtitle,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

/// Sample ordinal data type.
class WorldPopulation {
  final String year;
  final int population;
  final Color barColor;

  WorldPopulation(this.year, this.population, this.barColor);
}
