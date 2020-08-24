import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "User Profile",
      debugShowCheckedModeBanner: false,
      home: UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  final String _namae = "Alberto Salazar";
  final String _mail = "mi_bff_es@leo.aldana";
  final String _number = "+(52) 477-182-8854 ";

  Widget _backgroundImage(Size screenSize) {
    return Container(
      height: screenSize.height / 2.6,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Images/nature.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _profileImage() {
    return Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Images/explorer.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80.0),
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      ),
    );
  }
  Widget _ItemCorreo(String label, String correo ){
    TextStyle _emailLabelStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w200,
    );
    TextStyle _emailLabelStyle2 = TextStyle(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          label,
          style: _emailLabelStyle,
        ),
        Text(
          correo,
          style: _emailLabelStyle2,
        ),
      ],
    );
  }

  Widget _ItemHeader(label){
    TextStyle _emailLabelStyle2 = TextStyle(
      color: Colors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          label,
          style: _emailLabelStyle2,
        ),
      ],
    );
  }
  Widget _ItemBody(label){
    TextStyle _emailLabelStyle2 = TextStyle(
      color: Colors.black54,
      fontSize: 24.0,
      fontWeight: FontWeight.w100,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          label,
          style: _emailLabelStyle2,
        ),
      ],
    );
  }

  Widget _namaewa(){
    TextStyle _namaeTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
    );
    return Text(
        _namae,
      style: _namaeTextStyle,
    );
  }

  Widget _email(BuildContext context){
      return Container(
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(
          _mail,
          style: TextStyle(
            fontFamily: 'Spectral',
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      );
  }

  Widget _containerEmail(){
    return Container(
      height: 80.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
//        color: Color(0xFFEFF4F7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _ItemCorreo("E-mail",_mail),
          _ItemCorreo("Number",_number),
        ],
      ),
    );
  }
  Widget _containerOpciones(){
    return Container(
      height: 120.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
//        color: Color(0xFFEFF4F7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _ItemHeader("OPTIONS"),
          _ItemBody("Coupons"),
          _ItemBody("Messages"),
          _ItemBody("Reservations"),
          _ItemBody("Favs"),
        ],
      ),
    );
  }
  Widget _containerSettings(){
    return Container(
      height: 120.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
//        color: Color(0xFFEFF4F7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _ItemHeader("SETTINGS"),
          _ItemBody("Edit Profile"),
          _ItemBody("Notifications"),
        ],
      ),
    );
  }

  Widget _logOutButton(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
//              onTap: () => print("Are you sure you want to close the app"),
            onTap: () => exit(0),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Color(0xFF404A5C),
                ),
                child: Center (
                child: Text(
                  "LOG OUT",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
            _backgroundImage(screenSize),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: screenSize.height / 3.8),
                    _profileImage(),
                    _namaewa(),
//                    _email(context),
                    _containerEmail(),
//                    _containerOpciones(),
//                    _containerSettings(),
                  SizedBox(height: 10.0),
                    _logOutButton(),
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}
