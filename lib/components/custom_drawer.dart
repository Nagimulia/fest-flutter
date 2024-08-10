import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/components/custom_drawer_tile.dart';
import 'package:task/services/auth/authentication.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  void logout() {
    final authService = AuthService();
    authService.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.backpack,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          CustomDrawerTile(
            text: 'Home',
            icon: Icons.home,
            onTap: () async {
              context.goNamed('/home');
            },
          ),
          CustomDrawerTile(
            text: 'Settings',
            icon: Icons.settings,
            onTap: () async {
              context.pushNamed('/settings');
            },
          ),
          CustomDrawerTile(
            text: 'Favorite',
            icon: Icons.favorite,
            onTap: () async {
              context.pushNamed('/favorite');
            },
          ),
          CustomDrawerTile(
            text: 'Profile',
            icon: Icons.face_2,
            onTap: () async {
              context.pushNamed('/profile');
            },
          ),
          const Spacer(),
          CustomDrawerTile(
            text: 'Logout',
            icon: Icons.logout_rounded,
            onTap: logout,
          ),
          const SizedBox(height: 25)
        ],
      ),
    );
  }
}
