import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name ?? '/';

    return Drawer(
      backgroundColor: const Color(0xFF5D2D5F), // Deep purple side panel
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF4A204C), // Slightly darker purple header
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 30, color: Color(0xFF5D2D5F)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Yourname Here', // Student placeholder name
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'up1234567@myport.ac.uk', // Student placeholder email
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.speed_outlined, color: Colors.white),
              title: const Text(
                'Dashboard',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              selected: currentRoute == '/',
              selectedTileColor: Colors.white24,
              onTap: () {
                Navigator.pop(context); // Close drawer
                if (currentRoute != '/') {
                  Navigator.pushReplacementNamed(context, '/');
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month_outlined, color: Colors.white),
              title: const Text(
                'Calendar',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onTap: () {
                // Disabled link for student brief template
              },
            ),
            ListTile(
              leading: const Icon(Icons.insert_drive_file_outlined, color: Colors.white),
              title: const Text(
                'Private files',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onTap: () {
                // Disabled link for student brief template
              },
            ),
            ListTile(
              leading: const Icon(Icons.school_outlined, color: Colors.white),
              title: const Text(
                'My courses',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              selected: currentRoute == '/courses',
              selectedTileColor: Colors.white24,
              onTap: () {
                Navigator.pop(context); // Close drawer
                if (currentRoute != '/courses') {
                  Navigator.pushReplacementNamed(context, '/courses');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
