import 'package:custom_calender_picker/custom_calender_picker.dart';
import 'package:flutter/material.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  List<DateTime> eachDateTime = [];
  DateTimeRange? rangeDateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () async {
                var result = await showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    insetPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: CustomCalenderPicker(
                      returnDateType: ReturnDateType.list,
                      initialDateList: eachDateTime,
                      calenderThema: CalenderThema.white,
                    ),
                  ),
                );
                if (result != null) {
                  if (result is List<DateTime>) {
                    setState(() {
                      eachDateTime.clear();
                      eachDateTime.addAll(result);
                    });
                  }
                }
              },
              child: const Text('Dialog Example'),
            ),
            ...List.generate(
              eachDateTime.length,
                  (index) => Text(
                eachDateTime[index].toString().substring(0, 10),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
