import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Auth/data/models/active%20model/bbbbbb.dart';
import 'package:task_jadara/Feature/Menu/profile/widgets/profile_veiw_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, this.user});
final Bbbbbb ?user;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: const Color(0xff025366),
          body: ProfileViewBody(user:user ,),
        ),
      ),
    );
  }
}
