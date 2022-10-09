import 'package:flutter/material.dart';
import 'package:promotodor_timer_app/timerService.dart';
import 'package:promotodor_timer_app/utilities.dart';
import 'package:provider/provider.dart';

class TimeOption extends StatelessWidget {
  // const TimeOption({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 155),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: selectableTimes.map((time) {
          return InkWell(
            onTap: () => provider.selectTime(double.parse(time)),
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              width: 70,
              height: 50,
              decoration: int.parse(time) == provider.selectedTime
                  ? BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.922),
                      borderRadius: BorderRadius.circular(5),
                    )
                  : BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
              child: Center(
                child: Text(
                  (int.parse(time) ~/ 60).toString(),
                  style: textStyle(
                      20,
                      int.parse(time) == provider.selectedTime
                          ? Colors.blueAccent
                          : Colors.white,
                      FontWeight.bold),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
