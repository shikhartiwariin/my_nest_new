import 'package:flutter/material.dart';
import 'package:my_nest/resident_registration.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const ResidentRegistration(title: 'Resident Registration'),
    );
  }
}
