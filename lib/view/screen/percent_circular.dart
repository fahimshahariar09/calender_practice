import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentCircular extends StatelessWidget {
  const PercentCircular({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("HELLO"),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  width: 170.0,
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 20.0,
                  leading: Text("left content"),
                  trailing: Text("right content"),
                  percent: 0.2,
                  center: Text("20.0%"),
                  //linearStrokeCap: LinearStrokeCap.butt,
                  progressColor: Colors.red,
                ),
              ),

            ],
          ),
          /// LinearPercentIndicator
          Padding(
            padding: EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2500,
              percent: 0.8,
              center: Text("80.0%"),
             // linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.green,
            ),
          ),
          LinearPercentIndicator(
            width: 100.0,
            lineHeight: 8.0,
            percent: 0.5,
            progressColor: Colors.orange,
          ),

          ///CircularPercentIndicator

          CircularPercentIndicator(
            radius: 100.0,
            lineWidth: 10.0,
            percent: 0.8,
            header: Text("Icon header"),
            center: Icon(
              Icons.person_pin,
              size: 50.0,
              color: Colors.blue,
            ),
            backgroundColor: Colors.grey,
            progressColor: Colors.blue,
          ),

          CircularPercentIndicator(
            radius: 130.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 15.0,
            percent: 0.4,
            center: Text(
              "40 hours",
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.yellow,
            progressColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
