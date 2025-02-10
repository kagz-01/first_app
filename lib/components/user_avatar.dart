import 'package:flutter/cupertino.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  const UserAvatar({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16)),
    child: Image.asset(
    'assets/Temp/image1.jpg',
    width: size,
    height: size,
    ),
    );
  }
}
