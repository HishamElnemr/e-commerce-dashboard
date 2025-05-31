import 'package:flutter/material.dart';

AppBar buildAppBar(String title) {
  return AppBar(title: Text(title),centerTitle: true,
  leading: Icon(Icons.arrow_back_ios_new_rounded),
  );
}
