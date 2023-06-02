import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              iconeNoTopoConfiguracoes(),
            ],
          ),
        )
      ],
    );
  }

  iconeNoTopoConfiguracoes() {
    return Container(
      alignment: Alignment.topRight,
      padding: EdgeInsets.only(top: 30, right: 30),
      child: Icon(Icons.settings_outlined),
    );
  }
}
