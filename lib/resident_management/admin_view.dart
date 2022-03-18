import 'package:flutter/material.dart';

void main() => runApp(const AdminView());

class AdminView extends StatelessWidget {
  const AdminView({Key? key}) : super(key: key);

  static const String _title = 'Admin View (Resident)';

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
              'Resident ID',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Age',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Is Primary ?',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Primary Member ID',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Email ID',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Mobile#1 ?',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Mobile#2',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Aadhar',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Address',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Remarks',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('XXXXXX')),
              DataCell(Text('AAAAAA')),
              DataCell(Text('BBBBBB')),
              DataCell(Text('CCCCCC')),
              DataCell(Text('DDDDDD')),
              DataCell(Text('EEEEEE')),
              DataCell(Text('FFFFFF')),
              DataCell(Text('GGGGGG')),
              DataCell(Text('HHHHHH')),
              DataCell(Text('IIIIII')),
              DataCell(Text('JJJJJJ')),
            ],
          ),
        ],
      ),
    );
  }
}
