import 'package:flutter/material.dart';

const kRegularTextFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
    borderSide: BorderSide(color: Color(0xFF7C8991), width: 1.0));

const kFocusedBlueBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(15.0)),
  borderSide: BorderSide(color: Colors.blue, width: 1.0),
);

const kRedTextFieldBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffCC2B2B), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)));

const SERVER_IP = 'http://192.168.1.106:3000';
