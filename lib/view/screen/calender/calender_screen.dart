import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key, required this.titel});
  final String titel;

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override

  DateTime dateTime = DateTime.now();

  int days = 10;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                        'Scheduled Workout',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  InkWell(
                    onTap: () => Get.bottomSheet(
                        SfDateRangePicker(
                          selectionMode: DateRangePickerSelectionMode.range,
                          view: DateRangePickerView.month,
                          onSelectionChanged: _onSelectionChanged,
                        ),
                        backgroundColor: Colors.white),
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0XFFEDF3FF),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.calendar_today,
                            color: Color(0XFF0342E9),
                          ),
                        )),
                  )
                ],
              ),
            ),
            CalenderPicker(
              dateTime,
              daysCount: days,
              // ignore: avoid_print
              enableMultiSelection: true,
              // ignore: avoid_print
              multiSelectionListener: (value) => print(value),
              selectionColor: const Color(0XFF0342E9),
              selectedTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  different({DateTime? first, DateTime? last}) async {
    int data = last!.difference(first!).inDays;
    // ignore: avoid_print

    setState(() {
      data++;
      days = data;
      // ignore: avoid_print
      print(data);
    });
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      setState(() {
        dateTime = args.value.startDate;

        if (args.value.endDate != null) {
          different(first: args.value.startDate, last: args.value.endDate);
          // ignore: avoid_print
          print(args.value.startDate);
          // ignore: avoid_print
          print(args.value.endDate);
        }
      });
    },
    );
  }
}
