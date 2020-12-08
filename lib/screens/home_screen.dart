import 'package:chat_app/main.dart';
import 'package:chat_app/screens/settings_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatefulWidget {

  final String currentUserId;

  HomeScreen({Key key, @required this.currentUserId}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController searchTextEditingController = TextEditingController();

  homePageHeader(){
    return AppBar(
      automaticallyImplyLeading: false,   // remove the back button
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.people, size: 30.0, color: Colors.white,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
          },
        ),
      ],
      backgroundColor: Colors.lightBlue,
      title: Container(
        margin: new EdgeInsets.only(bottom: 4.0),
        child: TextFormField(
          style: TextStyle(fontSize: 18.0, color: Colors.white),
          controller: searchTextEditingController,
          decoration: InputDecoration(
            hintText: "Search Here...",
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            filled: true,
            prefixIcon: Icon(Icons.person_pin, color: Colors.white, size: 30.0,),
            suffixIcon: IconButton(
              icon: Icon(
                  Icons.clear,
                color: Colors.white,
              ),
              onPressed: emptyTextFormField,
            ),
          ),
        ),
      ),
    );
  }

  emptyTextFormField(){
    searchTextEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homePageHeader(),
    );
  }
}

class UserResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

