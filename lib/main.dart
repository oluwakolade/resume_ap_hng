import 'package:flutter/material.dart';
import 'package:cv_app/cv_screen.dart';

void main() {
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: CvScreen(
      userBio: '',
      userName: '',
      userRole: '',
      userLocation: '',
      userSkills: ''