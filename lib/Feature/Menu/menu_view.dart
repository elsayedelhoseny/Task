import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Auth/data/models/active%20model/bbbbbb.dart';
import 'package:task_jadara/Feature/Menu/widgets/menu_vies_body.dart';



class MenuView extends StatelessWidget {
  final Bbbbbb ?user;

  const MenuView({super.key, this.user, });
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: const Color(0xff025366),
          body: MenuViewBody(user:user!),
        ),
      ),
    );
  }
}
