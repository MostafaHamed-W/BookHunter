import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  static const homeTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static final authorName = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white.withOpacity(0.7),
  );
}
