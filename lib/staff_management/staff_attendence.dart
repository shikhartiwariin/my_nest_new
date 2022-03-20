import 'package:flutter/material.dart';

void main() => runApp(const StaffAttendence());

class StaffAttendence extends StatelessWidget {
  const StaffAttendence({Key? key}) : super(key: key);

  static const String _title = 'Staff Attendence';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const AttendenceSheet(),
      ),
    );
  }
}

class AttendenceSheet extends StatefulWidget {
  const AttendenceSheet({Key? key}) : super(key: key);

  @override
  State<AttendenceSheet> createState() => _AttendenceSheetState();
}

class _AttendenceSheetState extends State<AttendenceSheet> {
  static const int numItems = 20;

  List<bool> selected = List<bool>.generate(numItems, (int index) => false);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 1200,
        child: SingleChildScrollView(
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text('Present / Absent'),
              ),
              DataColumn(
                label: Text('Staff ID'),
              ),
              DataColumn(
                label: Text('Staff Name'),
              ),
              DataColumn(
                label: Text('In Time'),
              ),
              DataColumn(
                label: Text('Out Time'),
              ),
            ],
            rows: List<DataRow>.generate(
              numItems,
              (int index) => DataRow(
                color: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  // All rows will have the same selected color.
                  if (states.contains(MaterialState.selected)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.08);
                  }
                  // Even rows will have a grey color.
                  if (index.isEven) {
                    return Colors.white.withOpacity(0.0);
                  }
                  return null; // Use default value for other states and odd rows.
                }),
                cells: <DataCell>[
                  DataCell(
                    Text('P/A'),
                  ),
                  DataCell(
                    Text('Staff ID $index'),
                  ),
                  DataCell(
                    Text('Staff Name $index'),
                  ),
                  DataCell(
                    Text('In Time $index'),
                  ),
                  DataCell(
                    Text('Out Time $index'),
                  ),
                ],
                selected: selected[index],
                onSelectChanged: (bool? value) {
                  setState(() {
                    selected[index] = value!;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
