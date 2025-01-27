import 'package:flutter/material.dart';

import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Column(
        children: [
          Row(
          children: [
          Image.asset(
          'assets/Temp/image1.jpg',
          width: 60,
          height: 60,
          ),
          const SizedBox(
          width: 20,
          ),
          Text(user,
            style: AppText.subtitle3,),
          ],
          ),
          const SizedBox(height: 24),
          Image.asset('assets/Temp/image1.jpg'),
          const SizedBox(height: 10),
          const Text('"Keep shining ✨"',style: AppText.subtitle3,)
        ],
      ),
    );
  }
}
