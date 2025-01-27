import 'package:first_app/components/tool_bar.dart';
import 'package:first_app/styles/app_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: 'Profile',
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return [
              const PopupMenuItem(child: Text('Edit')),
              const PopupMenuItem(child: Text('Log Out')),
            ];
          },)
        ],
      ),
      body: Column(
        children: [
          Image.asset('assets/Temp/image1.jpg',
          width: 90,
          height: 90,
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
