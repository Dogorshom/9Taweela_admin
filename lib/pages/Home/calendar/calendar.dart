import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:taweela_admin/constant/constant.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100,),
        TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),

        ),
      ],
    );
  }
}
