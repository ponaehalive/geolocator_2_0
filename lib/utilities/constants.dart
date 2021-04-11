import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'AmaticSC',
  fontSize: 80.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'AmaticSC',
  fontSize: 50.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 50.0,
  fontFamily: 'AmaticSC',
);

const kConditionTextStyle = TextStyle(
  fontSize: 90.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Додайте мiсто',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
