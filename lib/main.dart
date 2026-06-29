import 'package:flutter/material.dart';
import 'package:moodle/views/dashboard_view.dart';
import 'package:moodle/views/courses_view.dart';
import 'package:moodle/views/assessments_view.dart';
import 'package:moodle/views/profile_view.dart';

void main() {
  runApp(const MoodleApp());
}

class MoodleApp extends StatelessWidget {
  const MoodleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moodle',
      home: const DashboardView(),
      routes: {
        '/': (context) => const DashboardView(),
        '/courses': (context) => const CoursesView(),
        '/assessments': (context) => const AssessmentsView(),
        '/profile': (context) => const ProfileView(),
      },
    );
  }
}
