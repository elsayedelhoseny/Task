import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Auth/data/models/active%20model/bbbbbb.dart';
import 'package:task_jadara/Feature/Menu/fav/fav_view.dart';
import 'package:task_jadara/Feature/Menu/profile/profile_view.dart';
import 'package:task_jadara/Feature/Menu/widgets/custom_row4.dart';
import 'package:task_jadara/Feature/Menu/widgets/deleteaccound.dart';
import 'custom_row5.dart';

class CustomCon1 extends StatelessWidget {
  const CustomCon1({super.key, this.user});
  final Bbbbbb? user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Container(
        height: 288,
        width: 368,
        decoration: BoxDecoration(
            color: const Color(0xff004252),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white)),
        child: Column(
          children: [
            CustomRow4(
              txt22: 'بياناتي',
              txtimg: 'assets/image/menu/حساب.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfileView(
                            user: user,
                          )),
                );
              },
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            const CustomRow4(
              txt22: 'عناويني',
              txtimg: 'assets/image/menu/موقع.png',
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            CustomRow4(
              txt22: 'المفضلة',
              txtimg: 'assets/image/menu/المفضله.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavView()),
                );
              },
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) =>
                      const DeleteConfirmationScreen(),
                );
              },
              child: const CustomRow5(
                txt20: 'حذف الحساب',
                txtimg1: 'assets/image/menu/حذف حساب.png',
              ),
            )
          ],
        ),
      ),
    );
  }
}
