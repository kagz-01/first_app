import 'package:first_app/components/tool_bar.dart';
import 'package:first_app/components/user_avatar.dart';
import 'package:first_app/config/app_routes.dart';
import 'package:first_app/styles/app_text.dart';
import 'package:flutter/material.dart';

enum ProfileMenu{ edit,logout}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
          onSelected: (value){
            switch (value){
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed(AppRoutes.editProfile);
                break;
              case ProfileMenu.logout:
                print("Log out is pressed");
                 break;
                 default:

    }
    },
        icon: const Icon(Icons.more_vert_outlined),
      itemBuilder: (context){
            return[
              PopupMenuItem(
                  child:  Text('Edit'),
                  value: ProfileMenu.edit,
                  ),
              PopupMenuItem(
                  child:  Text('Log Out'),
              value: ProfileMenu.logout,
              ),
            ];
      }
      )
  ],
      ),
      body: Column(
        children: [
           const UserAvatar(size: 90,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text('Kagunya Kenny',
          style: AppText.header2,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text('Kenya',
            style: AppText.subtitle3,
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('3987',
                    style:  AppText.header2,
                  ),
                  Text('Followers',),
                ],
              ),
            Column(
              children: [
                Text('23',
                  style:  AppText.header2,
                ),
                Text('Posts',)
              ],
            ),
            Column(
              children: [
                Text('2098',
                  style:  AppText.header2,
                ),
                Text('Following',)
              ],
            )
        ],
          ),
          const Divider(thickness: 2, height: 24,),
        ],
      ),
    );
  }
}
