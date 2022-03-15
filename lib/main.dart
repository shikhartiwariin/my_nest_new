import 'package:flutter/material.dart';

void main() {
  runApp(const MyNest());
}

class MyNest extends StatelessWidget {
  const MyNest({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Nest',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const ResidentRegistration(title: 'Resident Registration'),
    );
  }
}

class ResidentRegistration extends StatefulWidget {
  const ResidentRegistration({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ResidentRegistration> createState() => _ResidentRegistrationState();
}

class _ResidentRegistrationState extends State<ResidentRegistration> {
  void _register() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
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
