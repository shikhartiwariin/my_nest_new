import 'package:flutter/material.dart';

class ResidentRegistration extends StatefulWidget {
  const ResidentRegistration({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ResidentRegistration> createState() => _ResidentRegistrationState();
}

class _ResidentRegistrationState extends State<ResidentRegistration> {
  void _register() {
    setState(() {
     
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Resident_ID:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'First Name:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Last Name:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'IsPrimary:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'IsPrimary:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Primary member ID:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Email ID:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Mobile1:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Mobile2:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Aadhar Number:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Address:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Remarks:',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _register,
        tooltip: 'Resident Registration',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
