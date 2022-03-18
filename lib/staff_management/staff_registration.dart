import 'package:flutter/material.dart';

void main() => runApp(const StaffRegistration());

class StaffRegistration extends StatelessWidget {
  const StaffRegistration();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const StaffRegScreen(),
      },
    );
  }
}

class StaffRegScreen extends StatelessWidget {
  const StaffRegScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const Center(
        child: SizedBox(
          width: 400,
          child: Card(
            child: StaffRegForm(),
          ),
        ),
      ),
    );
  }
}

class StaffRegForm extends StatefulWidget {
  const StaffRegForm();

  @override
  _StaffRegFormState createState() => _StaffRegFormState();
}

class _StaffRegFormState extends State<StaffRegForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _idCardTypeController = TextEditingController();
  final _idCardNumberController = TextEditingController();
  final _apartmentNoController = TextEditingController();
  final _photoUploadController = TextEditingController();

  final double _formProgress = 0;
  String dropdownValue = 'Office';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearProgressIndicator(value: _formProgress),
          const SizedBox(
            height: 30,
          ),
          Text('Staff Registration',
              style: Theme.of(context).textTheme.headline4),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.comment),
                  hintText: 'Enter Name',
                  labelText: 'Staff Name'),
              controller: _nameController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _mobileController,
              decoration: const InputDecoration(
                  icon: Icon(Icons.phone_android_rounded),
                  hintText: 'Enter mobile number',
                  labelText: 'Mobile Number'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.card_membership),
                  hintText: 'Enter ID card type',
                  labelText: 'ID Card Type'),
              controller: _idCardTypeController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.numbers),
                  hintText: 'ID Card Number',
                  labelText: 'ID Card Number'),
              controller: _idCardNumberController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              isExpanded: true,
              hint: const Text('Staff Type'),
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Office', 'Security', 'House Maid']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _apartmentNoController,
              decoration: const InputDecoration(
                  icon: Icon(Icons.bungalow_outlined),
                  hintText: 'Enter apartment number',
                  labelText: 'Apartment Number'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _photoUploadController,
              decoration: const InputDecoration(
                  icon: Icon(Icons.photo), hintText: 'Upload Photo'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 1, top: 1),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
