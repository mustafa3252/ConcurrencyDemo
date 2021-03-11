import 'package:demo_one/screens/bankersHomePage.dart';
import 'package:demo_one/screens/concurrencyHomePage.dart';
import 'package:demo_one/screens/deadlockHomePage.dart';
import 'package:demo_one/screens/lockHomePage.dart';
import 'package:demo_one/screens/ostrichHomePage.dart';
import 'package:demo_one/screens/petersonsHomePage.dart';
import 'package:demo_one/screens/testHomePage.dart';
import 'package:flutter/material.dart';

import './widgets/homePageStyling.dart';

// Starting of the Concurrency and deadlock application.
void main() => runApp(
      MaterialApp(
        title:
            "Concurrency and Deadlock application", // Setting the title for the app
        home:
            CDHomePage(), // setting the homepage for the app which is in this same file
        routes: {
          '/first': (_) => ConcurrencyHomePage(),
          '/second': (_) => DeadlockHomePage(),
          '/bankers': (_) => BankersHomePage(),
          '/lock': (_) => LockHomePage(),
          '/ostrich': (_) => OstrichHomePage(),
          '/petersons': (_) => PetersonsHomePage(),
          '/test': (_) => TestHomePage(),
        },
      ),
    );

class CDHomePage extends StatefulWidget {
  CDHomePage({Key key}) : super(key: key);

  @override
  _CDHomePageState createState() => _CDHomePageState();
}

// The class which holds the state for homepage
class _CDHomePageState extends State<CDHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageStyling(),
    );
  }
}
