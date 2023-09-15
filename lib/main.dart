import 'package:flutter/material.dart';
import 'package:cv_app/cv_screen.dart';

void main() {
  runApp(const CvApp());
}

class CvApp extends StatelessWidget {
  const CvApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: CvScreen());
  }
}
