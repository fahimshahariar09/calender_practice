import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calender"),
      ),
      body: TableCalendar(
        focusedDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.now(),
        firstDay: DateTime.utc(2020, 1, 1),
      ),
    );
  }
}
