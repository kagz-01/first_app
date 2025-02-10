import 'package:first_app/components/app_text_field.dart';
import 'package:first_app/components/tool_bar.dart';
import 'package:first_app/components/user_avatar.dart';
import 'package:first_app/styles/app_color.dart';
import 'package:flutter/material.dart';

import '../config/app_strings.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppStrings.editProfile),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Stack(
              children: [
                UserAvatar(
                  size: 120,
                ),
                Positioned(bottom: 0,
                            right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Appcolors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Icon(
                          Icons.edit,
                          size: 18,)))
              ],
            ),
            AppTextField(hint: 'First name'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Last name'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Phone number'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Location'),
          ],
        ),
      ),

    );
  }
}
