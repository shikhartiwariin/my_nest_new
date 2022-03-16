import 'package:flutter/material.dart';

Map<int, Map<String, String>>? map = {
  0: {
    "name": "user1",
    "mobile_number": "1234567890",
    "idc_num": "123456789",
    "prop_name": "abcdef"
  },
  1: {
    "name": "user2",
    "mobile_number": "1234567890",
    "idc_num": "123456789",
    "prop_name": "abcdef"
  },
  2: {
    "name": "user3",
    "mobile_number": "1234567890",
    "idc_num": "123456789",
    "prop_name": "abcdef"
  },
  3: {
    "name": "user1",
    "mobile_number": "1234567890",
    "idc_num": "123456789",
    "prop_name": "abcdef"
  },
  4: {
    "name": "user1",
    "mobile_number": "1234567890",
    "idc_num": "123456789",
    "prop_name": "abcdef"
  },
  5: {
    "name": "user1",
    "mobile_number": "1234567890",
    "idc_num": "123456789",
    "prop_name": "abcdef"
  },
};

class VisitorSummary extends StatelessWidget {
  const VisitorSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'User Summary';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const VisForm(),
      ),
    );
  }
}

class VisForm extends StatefulWidget {
  const VisForm({Key? key}) : super(key: key);

  @override
  VisFormState createState() {
    return VisFormState();
  }
}

class VisFormState extends State<VisForm> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: map!.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pinkAccent.withOpacity(0.7),
                Colors.pinkAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Name : " + (map![index]!['name'] ?? 'NA')),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Mobile Number : " +
                      (map![index]!['mobile_number'] ?? 'NA')),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("ID Card Number : " + (map![index]!['idc_num'] ?? 'NA')),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Property Name : " + (map![index]!['prop_name'] ?? 'NA')),
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
