import 'package:first_app/components/post_item.dart';
import 'package:first_app/components/tool_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: ToolBar(title: '7Minutes in heaven',actions: [
        IconButton(onPressed: () {},
            icon: SvgPicture.asset('assets/svg/location_on'),)
      ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index){
        return PostItem(
          user: users[index],
        );
    }, itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 24,
          );
        },
      ),
    );
  }
  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User number $i');
    }
    return users;
  }
}
