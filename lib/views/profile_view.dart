import 'package:flutter/material.dart';
import 'package:moodle/widgets/nav_drawer.dart';
import 'package:moodle/constants.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: moodleWhite,
        foregroundColor: moodleTextDark,
        elevation: 1,
        titleSpacing: 0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  width: 32,
                  height: 32,
                  child: Image.asset(
                    'images/moodle_logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
          PopupMenuButton<String>(
            child: const CircleAvatar(
              radius: 16,
              backgroundColor: moodleSecondary,
              child: Text('EB'),
            ),
            onSelected: (value) {
              Navigator.pushReplacementNamed(context, value);
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem<String>(
                value: '/profile',
                child: Row(
                  children: [
                    Icon(Icons.person_outlined),
                    SizedBox(width: 8),
                    Text('Profile'),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: '/grades',
                child: Row(
                  children: [
                    Icon(Icons.grade),
                    SizedBox(width: 8),
                    Text('Grades'),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: '/settings',
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(width: 8),
                    Text('Settings'),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem<String>(
                value: '/logout',
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    SizedBox(width: 8),
                    Text('Logout'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
        ],
      ),
      drawer: const NavDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              color: moodlePurple,
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: moodleSecondary,
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Emmanuel Barker',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Student',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Personal Information Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: moodleSurface,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Personal Information',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: moodleTextDark,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildInfoTile('Email', 'up2276755@myport.ac.uk'),
                  _buildInfoTile('Student ID', 'UP2276755'),
                  _buildInfoTile('Phone', '+44 (0) 123 456 7890'),
                  _buildInfoTile('Institution', 'University of Portsmouth'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Academic Information Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: moodleSurface,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Academic Information',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: moodleTextDark,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildInfoTile('Degree Programme', 'Bachelor of Science (Hons) Computer Science'),
                  _buildInfoTile('Year of Study', '2nd Year'),
                  _buildInfoTile('Total Credits', '120'),
                  _buildInfoTile('Current GPA', '3.75'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Actions Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: moodleSurface,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Actions',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: moodleTextDark,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                      label: const Text('Edit Profile'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: moodlePurple,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.lock),
                      label: const Text('Change Password'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: moodleSecondary,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: moodleTextDark,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            color: moodleTextMuted,
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
