import 'package:flutter_modular/flutter_modular.dart';
import 'package:course_purchase/app/modules/session/session_store.dart';
import 'package:flutter/material.dart';

class SessionPage extends StatefulWidget {
  final String title;
  const SessionPage({Key? key, this.title = 'SessionPage'}) : super(key: key);
  @override
  SessionPageState createState() => SessionPageState();
}
class SessionPageState extends State<SessionPage> {
  final SessionStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}