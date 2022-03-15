import 'package:flutter/material.dart';

class VisitorForm extends StatelessWidget {
  const VisitorForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'MyNest';

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
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Please enter your name',
                  labelText: 'Name *',
                ),
                onSaved: (String? value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.call),
                  hintText: 'Please enter your mobile number',
                  labelText: 'Mobile Number *',
                ),
                onSaved: (String? value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.analytics),
                  hintText: 'Please enter your ID Card Number',
                  labelText: 'ID Card Number *',
                ),
                onSaved: (String? value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_balance_rounded),
                  hintText: 'Please enter property name',
                  labelText: 'Property Name *',
                ),
                onSaved: (String? value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Please enter your name',
                  labelText: 'Name *',
                ),
                onSaved: (String? value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 144, top: 24),
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
            ],
          ),
        )
      ],
    );
  }
}
