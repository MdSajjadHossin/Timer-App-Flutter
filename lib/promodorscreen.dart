import 'package:flutter/material.dart';
import 'package:promotodor_timer_app/utilities.dart';
import 'package:promotodor_timer_app/widgets/progressWidget.dart';
import 'package:promotodor_timer_app/widgets/timeController.dart';
import 'package:promotodor_timer_app/widgets/timeOptions.dart';
import 'package:promotodor_timer_app/widgets/timerCard.dart';

class PromodorScreen extends StatelessWidget {
  const PromodorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 65, 168),
      appBar: AppBar(
        elevation: 5,
        backgroundColor: const Color.fromARGB(255, 45, 56, 174),
        title: Text(
          "PROMOTIMER",
          style: textStyle(20, Colors.white, FontWeight.bold),
        ),

        // Appbar Refress button
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 35,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const TimerCard(),
              const SizedBox(
                height: 50,
              ),
              TimeOption(),
              const SizedBox(
                height: 60,
              ),
              const TimeController(),
              const SizedBox(
                height: 30,
              ),
              const ProgressWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
