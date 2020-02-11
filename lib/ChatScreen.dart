import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //backgroundColor: Color.fromRGBO(7, 94, 84, 2),
        title:Row(
          children: <Widget>[
            Icon(Icons.account_circle),

            Column(
              children: <Widget>[
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: <Widget>[
                Text("fucukur"),
                Text("fucukur"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
