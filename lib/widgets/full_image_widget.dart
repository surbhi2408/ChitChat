import 'package:flutter/material.dart';

class FullPhoto extends StatelessWidget {

  final String url;

  FullPhoto({Key key, @required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}

class FullPhotoScreen extends StatefulWidget {
  @override
  State createState() => FullPhotoScreenState();
}

class FullPhotoScreenState extends State<FullPhotoScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

