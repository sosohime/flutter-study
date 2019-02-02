import 'package:flutter/material.dart';

class StateDemo extends StatefulWidget{
  StateDemo({Key key, this.text}) : super(key: key);

  final String text;

  @override
  _StateDemoState createState() => _StateDemoState();
}

class _StateDemoState<Appbar> extends State<StateDemo> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          SizedBox(height: 80.0),
          Column(children: <Widget>[
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('setState: text += g'),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  onPressed: () {
                    setState(() {
                      text += 'g';
                    });
                  },
                ),
                RaisedButton(
                  child: Text('clearState'),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  onPressed: () {
                    setState(() {
                      text = '';
                    });
                  },
                )
              ],
            ),
          ],),
          SizedBox(height: 80.0),
          Column(
            children: <Widget>[
              Text('''
                parent final: ${widget.text}
                this.state.text: $text
              ''')
            ],
          )
        ],
    );
  }
}

