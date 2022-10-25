import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class OrderChart extends StatelessWidget {
  const OrderChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      //width: 200,
      //height: 400,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.grey
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children:  [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Text('Orders',
                textAlign: TextAlign.left,),
              ),
              SizedBox(height: 20,),
              Expanded(child: orderLineChart())

            ],
          )
        ],

      ),));

  }
      
      orderLineChart(){
      return LineChart(
        LineChartData(
          titlesData: titlesData1,
          lineBarsData: [lineChartBarData1],
          minX: 0,
          maxX: 12,
          maxY: 4,
          minY: 0,
          lineTouchData: lineTouchData1,
          //borderData: borderData,
          gridData: gridData

        ),
        
    );
  }

  LineChartBarData get lineChartBarData1 => LineChartBarData(
        isCurved: false,
        color: Color.fromARGB(255, 236, 11, 11),
        barWidth: 2,
        isStrokeCapRound: false,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: true),
        spots: const [
          FlSpot(0, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(11, 2.2),
          FlSpot(12, 1.8),
        ],
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 20,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff72719b),
      fontWeight: FontWeight.bold,
      fontSize: 10,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('Aug', style: style);
        break;
        case 4:
        text = const Text('Sept', style: style);
        break;
      case 8:
        text = const Text('Oct', style: style);
        break;
      case 12:
        text = const Text('Dec', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 20,
      );

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff75729e),
      fontWeight: FontWeight.bold,
      fontSize: 10,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '1k';
        break;
      case 2:
        text = '2k';
        break;
      case 3:
        text = '3k';
        break;
      case 4:
        text = '5k';
        break;
      case 5:
        text = '6k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Color.fromARGB(255, 74, 218, 8).withOpacity(0.8),
        ),
      );

      FlGridData get gridData => FlGridData(show: true);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Color.fromARGB(255, 31, 7, 134), width: 4),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );
}
