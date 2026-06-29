import 'package:flutter/material.dart';
import 'package:moodle/constants.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name ?? '/';
    final bool isDashboard = currentRoute == '/';
    final bool isCourses = currentRoute == '/courses';
    final bool isAssessments = currentRoute == '/assessments';
    final bool isProfile = currentRoute == '/profile';

    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined, color: moodleWhite),
              title: const Text(
                'Dashboard',
                style: TextStyle(color: moodleWhite, fontSize: 16),
              ),
              selected: isDashboard,
              selectedTileColor: Colors.white24,
              onTap: () {
                Navigator.pop(context);
                if (!isDashboard) {
                  Navigator.pushReplacementNamed(context, '/');
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.book_outlined, color: moodleWhite),
              title: const Text(
                'My Courses',
                style: TextStyle(color: moodleWhite, fontSize: 16),
              ),
              selected: isCourses,
              selectedTileColor: Colors.white24,
              onTap: () {
                Navigator.pop(context);
                if (!isCourses) {
                  Navigator.pushReplacementNamed(context, '/courses');
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment_outlined, color: moodleWhite),
              title: const Text(
                'Assessments',
                style: TextStyle(color: moodleWhite, fontSize: 16),
              ),
              selected: isAssessments,
              selectedTileColor: Colors.white24,
              onTap: () {
                Navigator.pop(context);
                if (!isAssessments) {
                  Navigator.pushReplacementNamed(context, '/assessments');
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_outlined, color: moodleWhite),
              title: const Text(
                'Profile',
                style: TextStyle(color: moodleWhite, fontSize: 16),
              ),
              selected: isProfile,
              selectedTileColor: Colors.white24,
              onTap: () {
                Navigator.pop(context);
                if (!isProfile) {
                  Navigator.pushReplacementNamed(context, '/profile');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
