import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class Shaker extends StatelessWidget {
  AccelerometerEvent lastAccelerometerEvent;
  GyroscopeEvent lastGyroscopeEvent;

//  = GyroscopeEvent(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    gyroscopeEvents.listen((GyroscopeEvent event) {
      lastGyroscopeEvent = event;
    });

    accelerometerEvents.listen((AccelerometerEvent event) {
      lastAccelerometerEvent = event;
    });

    return (Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Text("SHAKE ME!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor)),
            Text(
                "Accelerometer: ${lastAccelerometerEvent != null ? lastAccelerometerEvent.x : ""}"),
            Text(
                "Gyroscope: ${lastGyroscopeEvent != null ? lastGyroscopeEvent.x : ""}")
          ],
        )));
  }
}
