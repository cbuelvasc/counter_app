import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = new TextStyle(fontSize: 25);

  int _counter = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Numbers of taps: ',
                style: _textStyle,
              ),
              Text(
                '$_counter',
                style: _textStyle,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context)
                .colorScheme
                .copyWith(secondary: Colors.yellow[400]),
          ),
          child: _createButtons(),
        ),
      );

  Widget _createButtons() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(width: 30.0),
          FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: _reset,
          ),
          Expanded(child: SizedBox()),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _minus,
          ),
          SizedBox(width: 5.0),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _add,
          )
        ],
      );

  void _reset() {
    setState(() => _counter = 0);
  }

  void _add() {
    setState(() => _counter++);
  }

  void _minus() {
    setState(() => _counter--);
  }
}
