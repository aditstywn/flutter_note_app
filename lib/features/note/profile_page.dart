import 'package:flutter/material.dart';

import '../../core/config/colors_app.dart';
import '../auth/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      appBar: AppBar(
        backgroundColor: ColorsApp.white,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorsApp.primaryDark,
                    width: 3.0,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/52753554?v=4'),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adit Stywn',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: ColorsApp.primaryDark),
                  ),
                  Text(
                    'adit@gmail.com',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorsApp.textSecondary,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: const Text(
              'My Profile',
              style: TextStyle(
                fontSize: 15,
                color: ColorsApp.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Image.asset('assets/icons/my.png'),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Settings',
              style: TextStyle(
                fontSize: 15,
                color: ColorsApp.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Image.asset('assets/icons/settings.png'),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Notifications',
              style: TextStyle(
                fontSize: 15,
                color: ColorsApp.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Image.asset('assets/icons/notif.png'),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'About App',
              style: TextStyle(
                fontSize: 15,
                color: ColorsApp.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Image.asset('assets/icons/about.png'),
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: const Text(
              'Log Out',
              style: TextStyle(
                fontSize: 15,
                color: ColorsApp.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Image.asset('assets/icons/sign-out-alt.png'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const LoginPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
