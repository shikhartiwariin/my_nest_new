import 'package:flutter/material.dart';

void main() => runApp(const StaffSummary());

class StaffSummary extends StatelessWidget {
  const StaffSummary({Key? key}) : super(key: key);

  static const String _title = 'Staff Summary';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      constrained: false,
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Total Staff Registered ',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Staff Type',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('XXXXXX')),
              DataCell(Text('AAAAAA')),
            ],
          ),
        ],
      ),
    );
  }
}
