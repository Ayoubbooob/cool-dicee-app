import 'package:flutter/material.dart';

import 'dices_page.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner : false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}


