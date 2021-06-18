import 'package:flutter/material.dart';
import 'package:counter_app/src/pages/counter_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterPage(),
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.yellow[400],
          accentColor: Colors.yellowAccent[200],
        ),
      );
}
